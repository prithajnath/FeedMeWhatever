class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :pictures
  has_one :listing
  has_attached_file :profile_pic
  validates_attachment_content_type :profile_pic, content_type:  /\Aimage/

end
