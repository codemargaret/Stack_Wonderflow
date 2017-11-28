require 'rails_helper'

describe User do
  # it { should validate_presence_of :title }
  # it { should validate_presence_of :text }

  it { should have_many :questions }
  it { should have_many :answers }
  it { should have_many :comments }
  it { should have_many :answer_comments }
end
