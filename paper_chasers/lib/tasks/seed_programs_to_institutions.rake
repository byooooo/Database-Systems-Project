task :seed_programs_to_institutions => :environment do
    require 'csv'
    csv_text = File.read(Rails.root.join('lib', 'seeds', 'ProgramToInstitutionData.csv'))
    csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
    csv.each do |row|
        degreeProgram = DegreeProgram.find_by(cip_code: row['CIPCODE'], credit_level: row['CREDLEV'])
        institution = Institution.find_by(unitId: row['UNITID'])
        iToD = InstitutionToDegree.new
        if row['DEBTMEDIAN'] != "PrivacySuppressed" then iToD.med_debt = row['DEBTMEDIAN'] end
        if row['DEBTMEAN'] != "PrivacySuppressed" then iToD.mean_debt = row['DEBTMEAN'] end
        if row['MD_EARN_WNE'] != "PrivacySuppressed" then iToD.median_wage = row['MD_EARN_WNE'] end
        if row['DEBTPAYMENT10YR'] != "PrivacySuppressed" then iToD.debt_payment = row['DEBTPAYMENT10YR'] end
        if row['COUNT'] != "PrivacySuppressed" then iToD.debtCount = row['COUNT'] end
        if row['EARNINGSCOUNT'] != "PrivacySuppressed" then iToD.earningsCount = row['EARNINGSCOUNT'] end
        iToD.institution = institution
        iToD.degree_program = degreeProgram
        iToD.save
        puts "Adding degree program #{degreeProgram.description} to #{institution.name}"
    end
end