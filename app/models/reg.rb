class Reg < ActiveRecord::Base
 has_many :comments
	validates :name, 
          :presence => {:message => "Title can't be blank." },
          :uniqueness => {:message => "Title already exists."},
          :length => { :maximum => 100, :message => "Must be less than 100 characters"}


      end

