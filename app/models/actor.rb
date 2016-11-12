class Actor < ActiveRecord::Base
#- name: must be present; must be unique in combination with dob
validates :name, :presence => true, :uniqueness => {:scope => :dob}

#- dob: no rules

#- bio: no rules

#- image_url: no rules

has_many(:character, :class_name => "Character", :foreign_key => "actor_id")


end
