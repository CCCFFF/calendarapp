class Event < ActiveRecord::Base
  has_many :users, :through => :invites
  has_many :invites
  belongs_to :host, class_name: "User"
end
