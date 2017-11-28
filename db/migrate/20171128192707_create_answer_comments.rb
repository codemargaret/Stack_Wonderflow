class CreateAnswerComments < ActiveRecord::Migration[5.1]
  def change
    create_table :answer_comments do |t|
      t.column :text, :string
      t.column :answer_id, :integer

      t.timestamps
    end
  end
end
