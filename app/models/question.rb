class Question < ActiveRecord::Base
  has_many :answers
  has_many :comments

  validates :title, :presence => true
  validates :text, :presence => true
end
