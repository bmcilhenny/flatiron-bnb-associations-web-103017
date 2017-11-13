class Listing < ActiveRecord::Base

  belongs_to :host, :class_name => "User"
  belongs_to :neighborhood
  has_many :reservations
  has_many :reviews, through: :reservations#, :source => :guest
  #has_many :guests, :class_name => "User"
  has_many :guests, through: :reservations
end
