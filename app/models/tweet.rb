class Tweet < ActiveRecord::Base

	validates :content, length: { minimum: 0, maximum: 140 }
end
