class CreateQuestions < ActiveRecord::Migration[5.1]
  def change
    create_table :questions do |t|
      t.column :title, :string
      t.column :text, :string
      t.column :rating, :integer

      t.timestamps
    end
  end
end
