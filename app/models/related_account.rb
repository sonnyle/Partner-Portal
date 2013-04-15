class RelatedAccount < ActiveRecord::Base
  attr_accessible :id, :name, :user_id, :canal_id

  belongs_to :user
end