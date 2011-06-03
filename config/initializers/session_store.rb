# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_enzorodi_session',
  :secret      => 'f694ed52588c7a8cf51fcd6331cddf3eabb154fd9ab69b7751664fd95c6a51786f4da2ab722047b378368ff9b15db9ee86247e09b7835aa59949818d0a0be860'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
