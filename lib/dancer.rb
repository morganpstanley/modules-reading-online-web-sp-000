require_relative './class_methods_module.rb'
require_relative './dance_module.rb'
require_relative 'fancy_dance.rb'

class Dancer

  attr_accessor :name

  def initialize(name)
    @name = name
  end
  include Dance
  extend MetaDancing
  extend FancyDance::ClassMethods
  include FancyDance::InstanceMethods
end
