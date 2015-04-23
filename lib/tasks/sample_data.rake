namespace :db do
  desc "Fill database with sample data"
  
  task populate: :environment do
    User.create!(name: "utopia",
                 email: "wutuobangduan@163.com",
                 password: "ppnn13%dkstFeb.1st",
                 password_confirmation: "ppnn13%dkstFeb.1st",
		 admin: true)
    99.times do |n|
      name = Faker::Name.name
      email = "example-#{n+1}@railstutorial.org"
      password = "password"
      User.create!(name: name,
                   email: email,
                   password: password,
                   password_confirmation: password)
    end
  end
end
