class CreateSettings < ActiveRecord::Migration[6.1]
  def change
    create_table :settings do |t|
      t.string :name
      t.boolean :set
      t.bigint :configurable_id
      t.string :configurable_type

      t.timestamps
    end

    add_index :settings, [:configurable_id, :configurable_type]
  end
end
