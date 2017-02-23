class ArchivesController < ApplicationController
  def new
  	@archive = Archive.new
  end

  def create
  	@archive = Archive.new(permit_archive)
  	if @archive.save
  		flash[:success] = "Success!"
  		redirect_to archives_path(@archive)
  	else
  		flash[:error] = @archive.errors.full_messages
  		rendirect_ro new_archive_path
  	end
  end

  private
  	def permit_archive
  		params.require(:archive).permit(:url,:title)
  	end
end
