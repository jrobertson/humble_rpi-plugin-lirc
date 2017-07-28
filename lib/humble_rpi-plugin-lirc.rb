#!/usr/bin/env ruby

# file: humble_rpi-plugin-lirc.rb

require 'lirc'


class HumbleRPiPluginLirc
  
  def initialize(settings: {}, variables: {})
    
    @notifier = variables[:notifier]
    @device_id = variables[:device_id] || 'pi'    
    @topic = settings[:topic] || @device_id + '/lirc'
    @device = variables[:device] || '/var/run/lirc/lircd'
    
  end
  
  def start()
    
    lirc = LIRC::Client.new  @device
    combi_keys = []
    combination_keys = false

    t = Time.now
    puts 'HumbleRpiPluginLirc ready'
    
    lirc.each_event do |e|
      
      if t + 0.6 < Time.now then   
             
        on_keypress(e.name)
        
        (combination_keys = true; next) if e.name == 'KEY_MODE'        
        
        if combination_keys then          
          
          if e.name == 'KEY_ENTER' then
            
            combination_keys = false
            @notifier.notice "%s: KEYS_%s pressed" % [@topic, combi_keys.join]
            combi_keys = []
          else
            combi_keys << e.name[/[^_]+$/]            
          end
          
        else        
          @notifier.notice "%s: %s pressed" % [@topic, e.name]
        end
      end
      
      t = Time.now
    end
  end
  
  alias on_start start
  
  private
  
  def on_keypress(key)
  end
  
end
