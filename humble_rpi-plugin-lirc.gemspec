Gem::Specification.new do |s|
  s.name = 'humble_rpi-plugin-lirc'
  s.version = '0.1.3'
  s.summary = 'A humble_rpi plugin which handles a button press from an LIRC remote contol.'
  s.authors = ['James Robertson']
  s.files = Dir['lib/humble_rpi-plugin-lirc.rb']
  s.add_runtime_dependency('lircr', '~> 0.0', '>=0.0.3')
  s.signing_key = '../privatekeys/humble_rpi-plugin-lirc.pem'
  s.cert_chain  = ['gem-public_cert.pem']
  s.license = 'MIT'
  s.email = 'james@jamesrobertson.eu'
  s.homepage = 'https://github.com/jrobertson/humble_rpi-plugin-lirc'
end
