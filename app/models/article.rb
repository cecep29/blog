class Article < ActiveRecord::Base

  #relations

  belongs_to           :user
  belongs_to           :category
  has_many             :comments 

  #validations
  validates :user      presence: true
  validates :title     presence: true
  validates :body      presence: true
  validates :tags      presence: true


  #serialize 
  serialize :tags ,Array

end
