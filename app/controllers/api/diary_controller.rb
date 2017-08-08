module Api
	class DiaryController < ApplicationController
		protect_from_forgery except: :index
		def index
			diary = Diaryku.all
			render json: {status: 'ok', data: diary}
		end

		def show
			begin
			diary = Diaryku.find(params[:id])
			render json: {data: diary}
			rescue ActiveRecord::RecordNotFound
				render json: {status: 'not found'}
		end
		end

		def create
			diary = Diaryku.new(diary_params)
			if diary.save
				render json: {status: 'saved', data: diary}
			else
				render json: {status: 'failed'}
			end
		end

		private
		def diary_params 
    	params.permit(:nama, :catatan, :lokasi) 
  		end

  	end
end

