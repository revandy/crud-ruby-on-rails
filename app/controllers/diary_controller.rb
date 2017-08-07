class DiaryController < ApplicationController
	def home
		@diary = Diaryku.all #query select * from
	end

	def new
		@diary = Diaryku.new
	end

	def create
		@diary = Diaryku.new(diary_params) #query insert into dan mengambil parameter diary_params
		if @diary.save
			redirect_to '/diary' 
			else
				render 'new'
			end
	end

	def edit
		@diary = Diaryku.find(params[:id]) #query select * from sesuai id
	end

	def update
		@diary = Diaryku.find(params[:id]) #query update sql
		if @diary.update(diary_params)
			redirect_to '/diary'
		else
			render '/diary'
			
		end
	end

	def delete
		@diary = Diaryku.find(params[:id]) #query delete from
		@diary.destroy
		redirect_to '/diary'

	end

	private 
  	def diary_params 
    	params.require(:diaryku).permit(:nama, :catatan, :lokasi) 
  	end



end
