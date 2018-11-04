class AddXpToCourseUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :course_users, :xp, :integer
  end
end
