class CreateCompanies < ActiveRecord::Migration[6.1]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :address
      t.string :description
      t.string :slogan
      t.references :user

      t.timestamps
    end
  end
end
