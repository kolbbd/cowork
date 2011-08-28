require 'openid/store/filesystem'
require 'openssl'
OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE # only for debugging purposes!!!

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, 'bTGQO3T029ue9HW3Iv23bg', 'aa0FZWIcUNsHsSit5dqFcY40KA4hx7nLQvuVxOXNks'
  provider :facebook, '105569056214730', 'daba4f729f567f74e5bdc11701b69cbb'
  provider :open_id, OpenID::Store::Filesystem.new('/tmp')
end


