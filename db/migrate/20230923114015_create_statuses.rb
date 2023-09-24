class CreateStatuses < ActiveRecord::Migration[6.1]
  def change
    create_table :statuses do |t|
      t.integer :employee_id
      t.string :status
      t.date :date
      t.date :check_in
      t.date :check_out

      t.timestamps
    end
  end
end
