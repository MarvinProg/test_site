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

	
end
