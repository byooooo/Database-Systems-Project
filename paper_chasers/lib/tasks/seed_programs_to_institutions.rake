task :seed_programs_to_institutions => :environment do
    require 'csv'
    #csv_text = File.read(Rails.root.join('lib', 'seeds', 'DegreeProgramData.csv'))
    CSV.foreach('/Users/mymac/Documents/Database Systems CS411/Database-Systems-Project/paper_chasers/lib/seeds/DegreeProgramData.csv', headers: true, header_converters: :symbol) do |row|
        if row[:unitid] != 'NULL' and Institution.find_by(unitId: row[:unitid])
            puts "This is th cip_code: #{row[:cipcode]} and this is the credit level: #{row[:credlev]}"
            degreeProgram = DegreeProgram.find_by(cip_code: row[:cipcode], credit_level: row[:credlev])
            #puts "This is the degree program description #{degreeProgram.description}"
            institution = Institution.find_by(unitId: row[:unitid])
            iToD = InstitutionToDegree.new
            if row[:debtmedian] != "PrivacySuppressed" then iToD.med_debt = row[:debtmedian] end
            if row[:debtmean] != "PrivacySuppressed" then iToD.mean_debt = row[:debtmean] end
            if row[:md_earn_wne] != "PrivacySuppressed" then iToD.median_wage = row[:md_earn_wne] end
            if row[:debtpayment10yr] != "PrivacySuppressed" then iToD.debt_payment = row[:debtpayment10yr] end
            if row[:count] != "PrivacySuppressed" then iToD.debtCount = row[:count] end
            if row[:earningscount] != "PrivacySuppressed" then iToD.earningsCount = row[:earningscount] end
            iToD.institution = institution
            iToD.degree_program = degreeProgram
            iToD.save
            puts "This school: #{iToD.institution.name} and this degree program were saved in the db with id: "
        end
       
    end
end