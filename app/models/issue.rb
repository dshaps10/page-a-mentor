class Issue < ActiveRecord::Base
  belongs_to :category

  validates :summary, :details, :user, :location, presence: true
end
