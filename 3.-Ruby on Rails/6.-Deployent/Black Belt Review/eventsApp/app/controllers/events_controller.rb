class EventsController < ApplicationController
  def index
  end

  def show
      @event = Event.find(params[:id])
      @comments = Event.find(params[:id]).comments
  end

  def edit
      @event = Event.find(params[:id])
      date = @event.date.to_s
      @date = date.slice(0..(date.index(' ')-1))
  end

  def create
      params[:event][:date] = params[:event][:date].to_date
      event = Event.new( event_params )
      if event.valid?
          if params[:event][:date] < Date.today
              flash[:event_error] = "Please check the date of your event"
              redirect_to '/events'
              return
          end
          event.save
      else
          flash[:event_error] = "Please check your event"
      end
      redirect_to '/events'
  end

  def update
      event = Event.find(params[:id])
      event.update( event_params )
      redirect_to '/events'
  end

  def destroy
      event = Event.find(params[:id])
      event.destroy
      redirect_to '/events'
  end

  def join
      join_event = Participant.new(user_id: params[:user_id], event_id: params[:event_id])
      if join_event.valid?
          join_event.save
          redirect_to '/events'
      else
          flash[:participant_error] = "We were no able to add you to this event"
          redirect_to :back
      end
  end

  private
  def event_params
      params.require(:event).permit(:name, :date, :city, :state, :user_id)
  end
end
