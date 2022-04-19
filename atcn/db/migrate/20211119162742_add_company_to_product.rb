class AddCompanyToProduct < ActiveRecord::Migration[6.1]
  def change
    add_reference :products, :company, index: true 
  end
end
