class User < ActiveRecord::Base
	validates :username, presence: true
	validates :password, presence: true

	def find_by_username_and_passwd(username, password)
		this_user = User.find_by(username: username)
		return nil if user.nil?
		if this_user.password == password
			return this_user
		else 
			return nil
		end
	end

end
