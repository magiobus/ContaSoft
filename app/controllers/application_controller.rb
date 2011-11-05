class ApplicationController < ActionController::Base
  protect_from_forgery

  def to_excel(rows, column_order,cargo,abono,sumacargos,sumaabonos, sheetname, filename)
    book = Spreadsheet::Workbook.new
    sheet1 = book.create_worksheet :name => sheetname
    header_format = Spreadsheet::Format.new :color => :black, :weight => :bold
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
    rowactual = sheet1.row(rownum+2)
      rowactual.push '','TOTAL',sumacargos,sumaabonos
    rowactual = sheet1.row(rownum+3)
      rowactual.push '','BALANCE'
    t = Time.now
    filename = "#{filename}_#{t.strftime("%Y%m%d%H%M%S")}"
    book.write "tmp/#{filename}.xls"
    send_file("tmp/#{filename}.xls", :type=>"application/ms-excel")
  end


end
  