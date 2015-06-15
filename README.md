# Introducing the Humble_rpi-plugin-lirc gem

    require 'humble_rpi-plugin-lirc'


    class DummyNotifier
      
      def notice(message)
        puts Time.now.to_s + ' - ' + message
      end
      
    end

    rpi = HumbleRPiPluginLirc.new(settings: {}, variables: {notifier: DummyNotifier.new})
    rpi.start

## Observed

<pre>
HumbleRpiPluginLirc ready
2015-06-15 07:46:54 +0100 - pi/lirc: KEY_4 pressed
2015-06-15 07:46:55 +0100 - pi/lirc: KEY_7 pressed
2015-06-15 07:46:57 +0100 - pi/lirc: KEY_8 pressed
</pre>

## Resources

* ?humble_rpi-plugin-lirc https://rubygems.org/gems/humble_rpi-plugin-lirc?
* ?Using Plugins With the Humble_rpi Gem http://www.jamesrobertson.eu/snippets/2015/jun/14/using-plugins-with-the-humble_rpi-gem.html?
* ?Using the LIRC client for Ruby http://www.jamesrobertson.eu/snippets/2013/may/19/using-the-lirc-client-for-ruby.html?

lirc humblerpi plugin gem
