class Question < ActiveRecord::Base
  belongs_to :user
  has_many :answers
  has_many :comments

  validates :title, :presence => true
  validates :text, :presence => true
end
