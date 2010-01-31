# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key    => '_mongo_crm_session',
  :secret => '820d082812bf76c2bd7a3525da0b16ead3862a4712691db901ddb4d32116faa4f073952d1e3ead1de25e6e807493ad21d9ca95fc44eec326cfea948d91a81df6'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
