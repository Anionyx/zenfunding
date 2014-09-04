namespace :db do
  desc "Erase and fill database"
  task :populate => :environment do
    require 'populator'
    require 'faker'
    
    [DeadPerson, Policy, Beneficiary].each(&:delete_all)
    
    DeadPerson.populate 25 do |dead_person|
      dead_person.name_first = Faker::Name.first_name
      dead_person.name_last = Faker::Name.last_name
    end
    
    # User.populate 100 do |user|
    #   user.name   = Faker::Name.name
    #   user.email   = Faker::Internet.email
    #   user.age     = Faker::Number.number(2)
    #   user.cohort  = Faker::Number.digit
    # end
    puts 'All done'
  end
end

