# == Schema Information
#
# Table name: users
#
#  id             :integer          not null, primary key
#  first_name     :string
#  last_name      :string
#  email          :string
#  pasword_digest :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class User < ActiveRecord::Base
    has_many :apartments
    validates_presence_of :email, :first_name, :last_name
    has_secure_password
end
