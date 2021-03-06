class Answer < ActiveRecord::Base
  belongs_to :user
  belongs_to :question
  has_many :answer_comments

  validates :text, :presence => true
end
