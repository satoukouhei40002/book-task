class CreateReads < ActiveRecord::Migration[7.0]
  def change
    create_table :reads do |t|
      t.string     :book_name, null: false
      t.string     :content,   null: false
      t.date       :day,       null: false
      t.references :user,      null: false


      t.timestamps
    end
  end
end
