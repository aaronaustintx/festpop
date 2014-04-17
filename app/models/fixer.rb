class Fixer < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
  def name
    "#{first_name} #{last_name}"
  end
  
  def active_for_authentication?
    active?
  end
end
