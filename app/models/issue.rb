class Issue < ActiveRecord::Base
  belongs_to :category
  belongs_to :user

  validates :summary, :details, :user, :location, presence: true
end
