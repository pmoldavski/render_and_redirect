require 'text_validations'

class Article < ActiveRecord::Base
  include TextValidations
  has_many :comments, dependent: :destroy

  attr_accessible :body, :title

  validate :word_censor
  validates :body,  :presence => true 
  validates :title, :presence => true
end
