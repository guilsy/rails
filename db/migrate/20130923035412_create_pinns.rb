class CreatePinns < ActiveRecord::Migration
  def change
    create_table :pinns do |t|
      t.string :description

      t.timestamps
    end
  end
end
