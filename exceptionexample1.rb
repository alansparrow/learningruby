class DataError < RuntimeError
end
begin
  raise DataError
rescue ZeroDivisionError
  puts "ZeroDivisionError!"
rescue DataError
  puts "DataError!"
end

