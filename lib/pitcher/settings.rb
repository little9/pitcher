require 'yaml'

class Settings
  attr_accessor :cdmurl
  attr_accessor :username
  attr_accessor :password
  attr_accessor :license
  attr_accessor :settings

  def initialize(file)
    settings = YAML.load_file(file)
    @cdmurl = settings['cdmurl']
    @username = settings['username']
    @password = settings['password']
    @license = settings['license']
  end


  end

