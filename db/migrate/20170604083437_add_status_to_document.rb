class AddStatusToDocument < ActiveRecord::Migration[5.0]
  def change
    add_column :documents, :status, :string
    add_column :documents, :is_signed_by_landlord, :boolean
    add_column :documents, :is_signed_by_tenant, :boolean
    add_column :documents, :creation_date, :datetime
    add_column :documents, :signing_date, :datetime
  end
end
