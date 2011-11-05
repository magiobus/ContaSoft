class ApplicationController < ActionController::Base
  protect_from_forgery

  def to_excel(rows, column_order,cargo,abono,sumacargos,sumaabonos,balancepos,balanceneg,sheetname, filename)
    book = Spreadsheet::Workbook.new
    sheet1 = book.create_worksheet :name => sheetname
    header_format = Spreadsheet::Format.new :color => :black, :weight => :bold
    verde = Spreadsheet::Format.new :color => :green, :weight => :bold
    rojo = Spreadsheet::Format.new :color => :red, :weight => :bold
    sheet1.row(0).default_format = header_format
    
    
    
    

    rownum = 0
    for column in column_order
      sheet1.row(rownum).push column
    end
    for row in rows
      rownum += 1
      for column in column_order
        sheet1.row(rownum).push row[column].nil? ? 'N/A' : row[column]
      end
    end
    
  
    row = sheet1.row(rownum+2)
    row[1] = 'TOTAL'
    row[2] = sumacargos
    row[3] = sumaabonos
    row.set_format(1,header_format ) # formato a la primera celda 
    
    row = sheet1.row(rownum+3)
    row[1] = 'BALANCE'
    row[2] = balancepos
    row[3] = balanceneg
    row.set_format(1,header_format ) # formato a la primera celda 
    row.set_format(2,verde ) # formato verde para balancepos
    row.set_format(3,rojo ) # formato rojo para balanceneg
  
      
    t = Time.now
    filename = "#{filename}_#{t.strftime("%Y%m%d%H%M%S")}"
    book.write "tmp/#{filename}.xls"
    send_file("tmp/#{filename}.xls", :type=>"application/ms-excel")
  end


end
  