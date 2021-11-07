class CreateClassSchools < ActiveRecord::Migration[6.1]
  def change
    create_table :class_schools do |t|
      t.integer :timetable
      t.string :duration
      t.date :start_date
      t.date :end_date
      t.string :name 
      t.timestamps
    end
  end
end
