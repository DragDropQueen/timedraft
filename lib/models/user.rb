require './lib/models/appointment'

class User
  attr_reader :username, :id, :appointments

  def initialize(params)
    @username = params[:username]
    @id = params[:id] || rand(100)
    @appointments = []
  end

  def ==(other)
    id == other.id
  end

  def create_appointment(params)
    @appointments << Appointment.new(params)
  end
end
