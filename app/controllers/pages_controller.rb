class PagesController < ApplicationController

	before_action :set_page, only: [:show, :edit, :update, :destroy]
	before_action :set_new_page, only: [:new, :create]

	def index
		@pages ||= Page.roots.map do |page|
			page.subtree.arrange
		end
	end

	def show
		@page = @page.subtree.arrange
	end

	def new
	
	end

	def edit 

	end

	def create
		@page.assing_attributes(page_params)

		respond_to do |format|
			if @page.save
				format.html { redirect_to @page, notice: 'Page was created.'}
				format.json { render :show, status: :created, location: @page }
			else
				format.html { render :new }
				format.json { render json: @page.errors, status: :unprocessable_entity }
			end
		end
	end

	def update
		respond_to do |format|
			if @page.update(page_params)
				format.html { redirect_to @page, notice: 'Page was update'}
				format.json { render :show, status: :ok, location: @page }
			else
				format.html { render :edit }
				format.json { render :json @page.errors, status: :unprocessable_entity }
			end
		end
	end

	def destroy
		@page.destroy
		redirect_url = @page.is_root? ? pages_url(@pages.parent)
		respond_to do |format|
			format.html { redirect_to redirect_url, notice: 'Page was destoyed.'}
			format.json { head :no_content }
		end
	end

	

end