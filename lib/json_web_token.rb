module JsonWebToken
  def self.encode(payload, exp = 24.hours.from_now)
    payload[:exp] = exp.to_i
    JWT.encode(payload, secret_key)
  end

  def self.decode(token)
    body = JWT.decode(token, secret_key)[0]
    HashWithIndifferentAccess.new body
  rescue
    nil
  end

  private

  def self.secret_key
    Rails.application.secrets&.secret_key_base || Rails.application.credentials&.secret_key_base
  end
end
