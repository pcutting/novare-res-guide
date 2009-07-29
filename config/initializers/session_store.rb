# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_novare_session',
  :secret      => '8f2ff65a3c132a19ce9a957376cee09416848b33b2b8ddfa2f3a4579c8dffb53595cee3241222f57540beedc843155b6d70506f153e2c0d53e837c431274a2e4'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
