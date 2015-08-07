require 'csv'
require 'pp'
require 'groonga/client'

client = Groonga::Client.open(:host => 'localhost', :port => 10041, :protocol => 'http')

header = %w[ name kana addr sex age birthday marriage prefecture mobile mobile_type carry ] 

idx = 0
CSV.foreach("groonga_test.csv",encoding:"Shift_JIS:UTF-8").each do |row|
  idx += 1
  data = Hash[header.zip(row)]
  data['_key'] = idx
  ret = client.load({:table => 'Data',
               :values => [data]})

  if( ret.body == 1 )
    puts "Idx:#{idx} OK"
  else
    puts "Idx:#{idx} NG, ret:#{ret}"
  end
end

