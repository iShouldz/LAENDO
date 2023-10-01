class CreateComentarios < ActiveRecord::Migration[7.0]
  def change
    create_table :comentarios do |t|
      t.string :autor
      t.text :content
      t.references :post, null: false, foreign_key: true

      t.timestamps
    end
  end
end
