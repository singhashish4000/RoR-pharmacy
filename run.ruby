  require 'csv'    
  csv_text = File.read('countries.csv')
  csv = CSV.parse(csv_text, :headers => true)
  csv.each do |row|
    Country.create!(row.to_h)
  end

