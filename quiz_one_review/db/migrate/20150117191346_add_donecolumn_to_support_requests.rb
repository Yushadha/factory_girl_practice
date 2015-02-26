class AddDonecolumnToSupportRequests < ActiveRecord::Migration
  def change
    add_column :support_requests, :done, :boolean, default: false
  end
end
