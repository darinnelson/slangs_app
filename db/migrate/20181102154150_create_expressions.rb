class CreateExpressions < ActiveRecord::Migration[5.2]
  def change
    create_table :expressions do |t|
      t.string :spanish
      t.string :english
      t.integer :course_id

      t.timestamps
    end
  end
end
