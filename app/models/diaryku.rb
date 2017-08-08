class Diaryku < ApplicationRecord
	validates :nama, :catatan, :lokasi, :presence => true
	validates :nama, :catatan, :lokasi, :length => { :minimum => 2 }
	validates :nama, :catatan, :lokasi, :uniqueness => true
end
