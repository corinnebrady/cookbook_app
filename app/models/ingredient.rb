# == Schema Information
#
# Table name: ingredients
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Ingredient < ActiveRecord::Base
  attr_accessible :name

  has_many :recipe_ingredients

  def as_json(options={})
    {:value => self.name, :data => self.id}
  end
end
