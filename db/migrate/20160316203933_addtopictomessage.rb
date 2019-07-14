class Addtopictomessage < ActiveRecord::Migration[5.0]
  def change
    add_column :messages, :topic, :string
  end
end
