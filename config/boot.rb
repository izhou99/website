require 'rubygems'  
require 'rails/commands/server'

module Rails  
  class Server
    alias :default_options_bk :default_options
    def default_options
      default_options_bk.merge!(Host: '0.0.0.0')
    end
  end
end

