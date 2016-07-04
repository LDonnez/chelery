namespace :chelery do
  task :setup => :environment do
    Setting.create unless Setting.first
    Contact.create unless Contact.first
  end
end
