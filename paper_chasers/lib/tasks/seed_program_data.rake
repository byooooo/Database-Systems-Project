task :seed_degree_program_table => :environment do
    require 'csv'
    csv_text = File.read(Rails.root.join('lib', 'seeds', 'ProgramDataOnly.csv'))
    csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
    csv.each do |row|
        d = DegreeProgram.new
        d.description = row['CIPDESC']
        d.credit_level = row['CREDLEV']
        d.cip_code = row['CIPCODE']
        d.save
        puts d.description
    end
end