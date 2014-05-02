class Player < ActiveRecord::Base
  validates :first_name, :last_name, :email, :presence => true

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :email,
            format: {with: VALID_EMAIL_REGEX,
                     message: "must be a valid email address"},
            uniqueness: {case_sensitive: false}
end
