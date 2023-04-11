class Article < ApplicationRecord

	validates :title, presence: true, length: {minimun: 6, maximun: 100 }
	validates :description, presence: true, length: {minimun: 10, maximun: 3000}

end
