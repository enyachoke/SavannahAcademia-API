# app/commands/authenticate_user.rb

class AuthenticateUser
  prepend SimpleCommand

  def initialize(email, password)
    @username = email
    @password = password
  end

  def call
    payload(user)
  end

  private

  attr_accessor :username, :password

  def user
    user = User.find_by_username(username)
    return user if user && user.authenticate(password)
    errors.add :user_authentication, 'invalid credentials'
    nil
  end

  private

  def payload(user)
    return nil unless user && user.id
    {
      auth_token: JsonWebToken.encode(user_id: user.id),
      profile: { id: user.id, email: user.email, username: user.username }
    }
  end
end
