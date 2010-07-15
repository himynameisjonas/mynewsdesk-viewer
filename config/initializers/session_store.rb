# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_mynewsdesk_session',
  :secret      => '2d1a0861567ffaeaa090e132b1c11fc9244f2ed622b50bdd629bc0f027a42dafde1dc448c0b5d92632de8c983c4c6af0fb1c3f6b7d5800145a559403b84eaede'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
