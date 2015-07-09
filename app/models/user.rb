class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :statuses
  has_and_belongs_to_many :roles, join_table: 'users_roles'
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :profile_name, presence:true,
                           uniqueness: true,
                           format:{
                               with: /\A[a-zA-Z0-9_-]+\z/,
                               message: 'Profile name must be formatted correctly.'
                           }


  def full_name
    first_name + " " + last_name
  end

  def gravatar_url
    stripped_email = email.strip
    downcased_email = stripped_email.downcase
    hash = Digest::MD5.hexdigest(downcased_email)
    "https://gravatar.com/avatar/#{hash}"
  end
  def add_user_role
    roles<<Role.where(role_name: 'user')
  end
  def add_role(role)
    roles<<Role.where(role_name: role)
  end
  def admin?
      roles.where(role_name: 'admin').size == 1
  end

end
