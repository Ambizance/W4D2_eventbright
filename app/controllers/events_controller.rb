class EventsController < ApplicationController
  def index
    if params[:user_id]
      @events= User.find(params[:user_id]).events
    else
      @events= Event.all
    end
  end

  def show

  end

  def new
    @event = Event.new
  end

  def edit

  end

  def create
    @event = Event.new(admin_id:current_user.id)
    @event.update(post_params)

    if @event.save
      redirect_to root_path
  end

  def update
    
  end

  def destroy
    
  end

    # Use callbacks to share common setup or constraints between actions.
    def set_event
      @event = Event.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def post_params
      params.require(:event).permit(:title, :description, :location, :duration, :price, :start_date)
    end

end


