class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.column :title, :string
      t.column :date, :datetime
      t.column :content, :text

      t.timestamps
    end
  end
end
