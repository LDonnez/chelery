namespace :chelery do
  task :setup => :environment do
    Setting.create unless Setting.first
  end
end
