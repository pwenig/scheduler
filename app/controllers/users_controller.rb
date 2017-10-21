class UsersController < ApplicationController

  def index
    @users = User.all
    render json: @users
  end
  
  def avail 
    user = User.find_by(name: params['agent'])
    if user.showings.length > 0 && user.showings.any? { |i| i['start_time'].to_datetime == params['date'].to_datetime }
      check_other_agents
    else 
      # Send email to agent
      render json: {message: "Thank you. #{params['agent']} was notified"}
    end
  end
  
  def check_other_agents
    avail_agents = []
    User.all.each do |user|
      if user.showings && user.showings.length > 0 && user.showings.any? { |i| i['start_time'].to_datetime != params['date'].to_datetime }
        avail_agents << user
      elsif user.showings && user.showings.length == 0
        avail_agents << user
      else 
      end 
    end
    # Send email to the avail_agents
    render json: {message: "Thank you. #{params['agent']} was not available. We have notified other agents"}
  end

end 