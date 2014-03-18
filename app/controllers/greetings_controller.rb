class GreetingsController < ApplicationController
  def index
    # This is just going to show a form and nothing else
  end

  def create
    email_to = params[:email_to]
    subject = params[:subject]
    body = params[:body]
    Pony.send(to: email_to, subject: subject, body: body)
    redirect_to :index, flash: "Email Sent"
  end



end
