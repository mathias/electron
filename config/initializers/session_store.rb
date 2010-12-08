# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key    => '_mongo_session',
  :secret => '7d2c10cc4be861145ce389dfede90ac92090403d167697fffc4455ac8c02626db0d7de840e916e3b8f3f0c723386228a876f233089d085d3c687bfbfe694824c'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
