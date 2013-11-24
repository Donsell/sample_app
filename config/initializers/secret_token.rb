# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
#SampleApp::Application.config.secret_key_base = '7795d97be091f61c0ca6e5ba2db78219b29fb4bbd70e7f88f9cbe9cdf9368491e5444072ad6fcc68402cca9128070b55b223f915c715969c9765041f0181b930'

require 'securerandom'

def secure_token
	token_file = Rails.root.join('.secret')
	if File.exist?(token_file)
		File.read(token_file).chomp
	else
		token - SecureRandom.hex(64)
		File.write(token_file, token)
		token
	end
end

