class AddKanaToBooks < ActiveRecord::Migration[7.1]
  def change
    add_column :books, :kana, :string
  end
end
