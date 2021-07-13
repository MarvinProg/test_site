class CreatePages < ActiveRecord::Migration[6.1]
  def change
    create_table :pages do |t|
      t.string :name
      t.string :title
      t.text :text

      t.timestamps
    end
  end
end
