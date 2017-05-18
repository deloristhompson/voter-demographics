voter_demographics =
[{
  first_name: 'Jon',
  last_name: 'Smith',
  age: 25,
  income: 50000,
  household_size: 1,
  gender: "Male",
  education: 'College'
},
{
  first_name: 'Jane',
  last_name: 'Davies',
  age: 30,
  income: 60000,
  household_size: 3,
  gender: "Female",
  education: 'High School'
},
{
  first_name: 'Sam',
  last_name: 'Farelly',
  age: 32,
  income: 80000,
  household_size: 2,
  gender: "Unspecified",
  education: 'College'
},
{
  first_name: 'Joan',
  last_name: 'Favreau',
  age: 35,
  income: 65000,
  household_size: 4,
  gender: "Female",
  education: 'College'
},
{first_name: 'Sam',
  last_name: 'McNulty',
  age: 38,
  income: 63000,
  household_size: 3,
  gender: "Male",
  education: 'College'
},
{first_name: 'Mark',
  last_name: 'Minahan',
  age: 48,
  income: 78000,
  household_size: 5,
  gender: "Male",
  education: 'High School'
},
{first_name: 'Susan',
  last_name: 'Umani',
  age: 45,
  income: 75000,
  household_size: 2,
  gender: "Female",
  education: 'College'
},
{first_name: 'Bill',
  last_name: 'Perault',
  age: 24,
  income: 45000,
  household_size: 1,
  gender: "Male",
  education: 'Did Not Complete High School'
},
{first_name: 'Doug',
  last_name: 'Stamper',
  age: 45,
  income: 75000,
  household_size: 1,
  gender: 'Male',
  education: 'College'
},
{first_name: 'Francis',
  last_name: 'Underwood',
  age: 52,
  income: 100000,
  household_size: 2,
  gender: 'Male',
  education: 'College'
}
]
# Average age
voter_age = []
voter_demographics.each do |how_old|
  voter_age << how_old[:age]
end
average_age = voter_age.inject(0) {|sum,num| sum += num}
puts "Average Age: #{average_age.to_f / voter_age.length}"

# Average income
voter_income = []
voter_demographics.each do |voters_income|
  voter_income << voters_income[:income]
end
average_income = voter_income.inject(0) {|sum,num| sum += num}
puts "Average Income: #{average_income.to_f / voter_income.length}"

# Average Household size
voter_household_size = []
voter_demographics.each do |size|
  voter_household_size << size[:household_size]
end

average_household_size = voter_household_size.inject(0) {|sum,num| sum += num}
puts "Average Household Size: #{average_household_size.to_f / voter_household_size.length}"

voter_gender = []
voter_demographics.each do |gender_of_voters|
  voter_gender << gender_of_voters[:gender]
end

voters = {}
voter_gender.each do |votes|
  if voters[votes].nil?
    voters[votes] = 0
  end
  voters[votes] += 1
end
total_voters = voters.values.inject(0) {|sum,num| sum += num}

female_percentage = voters['Female'] / total_voters.to_f * 100
puts "Female %: #{female_percentage}"

male_percentage = voters['Male'] / total_voters.to_f * 100
puts "Male %: #{male_percentage}"

unspecified = voters['Unspecified'] / total_voters.to_f * 100
puts "Unspecified Gender %: #{unspecified}"

voters_education = []
voter_demographics.each do |college|
  voters_education << college[:education]
end

voters_school = {}
voters_education.each do |went_to_college|
  if voters_school[went_to_college].nil?
    voters_school[went_to_college] = 0
  end
  voters_school[went_to_college] += 1
end

total_schools = voters_school.values.inject(0) {|sum,num| sum += num}

college = voters_school['College'] / total_schools.to_f * 100
puts "College %: #{college}"

high_school =  voters_school['High School'] / total_schools.to_f * 100
puts "High School %: #{high_school}"

incomplete = voters_school['Did Not Complete High School'] / total_schools.to_f * 100
puts "Did Not Complete High School %: #{incomplete}"
