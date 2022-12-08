class CreateTickets < ActiveRecord::Migration[7.0]
  def change
    create_table :tickets do |t|
      t.string :email
      t.string :name
      t.string :department_id
      t.string :phone_no
      t.text :summary
      t.text :description
      t.string :category_id
      t.string :priority
      t.string :notes
      t.string :status
      t.timestamps
    end
  end
end
