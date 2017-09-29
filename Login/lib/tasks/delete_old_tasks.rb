# lib/tasks/delete_old_records.rb
namespace :posts do
  desc "Delete records older than 30 days"
  task delete_2_hours_old: :environment do
    Attendance.where(['created_at < ?', 5.seconds.ago]).destroy_all
  end
end
