class PagesController < ApplicationController
	def home
		@newtodo = Todo.new()
		@todos = Todo.all
		@cats = Cat.all
		@users = User.all
	end

	def create
		newtodo = Todo.new(name: params[:todos][:name], date: params[:todos][:date])
		newtodo.save!
		redirect_to root_url
	end
end