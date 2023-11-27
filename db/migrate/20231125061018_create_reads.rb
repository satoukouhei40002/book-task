class CreateReads < ActiveRecord::Migration[7.0]
  def change
    create_table :reads do |t|
      t.string     :title,      null: false
      t.text       :content,    null: false
      t.datetime   :start_time, null: false
      t.references :user,       null: false


      t.timestamps
    end
  end
end
