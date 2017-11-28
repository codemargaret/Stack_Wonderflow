class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.column :text, :string
      t.column :question_id, :integer

      t.timestamps
    end
  end
end
