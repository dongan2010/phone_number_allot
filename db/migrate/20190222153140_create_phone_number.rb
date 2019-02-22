class CreatePhoneNumber < ActiveRecord::Migration[5.2]
  def change
    create_table :phone_numbers do |t|
      t.integer :number, :limit => 8
    end
  end
end
