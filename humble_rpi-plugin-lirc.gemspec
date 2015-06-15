Gem::Specification.new do |s|
  s.name = 'humble_rpi-plugin-lirc'
  s.version = '0.1.0'
  s.summary = 'A humble_rpi plugin which handles a button press from an LIRC remote contol.'
  s.authors = ['James Robertson']
  s.files = Dir['lib/humble_rpi-plugin-lirc.rb']
  s.add_runtime_dependency('lirc', '~> 0.0', '>=0.0.3')
  s.signing_key = '../privatekeys/humble_rpi-plugin-lirc.pem'
  s.cert_chain  = ['gem-public_cert.pem']
  s.license = 'MIT'
  s.email = 'james@r0bertson.co.uk'
  s.homepage = 'https://github.com/jrobertson/humble_rpi-plugin-lirc'
end
