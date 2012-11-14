require 'text_validations'

class Comment < ActiveRecord::Base
  include TextValidations
  belongs_to :article
  validates_associated :article 
  validate :word_censor

  attr_accessible :body

  validates :body, :presence => true, :length => { :maximum => 250 } 
end
