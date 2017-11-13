class User < ActiveRecord::Base

  has_many :listings, :foreign_key => 'host_id'
  has_many :reservations, :foreign_key => 'host_id'
  has_many :reviews, :foreign_key => 'user_id'

end
