class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :meeting_room
  has_and_belongs_to_many :laptops
  has_and_belongs_to_many :videobeams

  before_validation :initialize_day

  before_create :available_schedule, :validate_start_hour, :validate_end_hour, :validate_day, :validate_devices

  def self.build_json
  	@reservation_list = []
  	self.find_each do |reservation|
  		@reservation_list << {
        id: reservation.id,
  			description: reservation.description,
      	startHour: reservation.start_hour,
      	endHour: reservation.end_hour,
  			meetingRoom:reservation.fill_meeting_room,
  			user:reservation.fill_user,
  			laptops:reservation.fill_laptops,
  			videobeams: reservation.fill_videobeams
  		}
  	end
   # retorna la lista
  	{reservations: @reservation_list}
  end


  def fill_meeting_room

    if self.meeting_room
   	{
   		id: self.meeting_room.id,
   		name:self.meeting_room.name
   	}
    else
      {id: '',
      name:''}
    end
  end

  def fill_user
   	{
 			id: self.user.id,
 			name: self.user.name
 		}
  end

  def fill_laptops
    @laptops=[]
    self.laptops.find_each do |elem|
      @laptops << { id: elem.id, code:elem.code}
    end
   @laptops
  end

  def fill_videobeams
    @videobeams=[]
    self.videobeams.find_each do |elem|
      @videobeams << { id: elem.id, code:elem.code}
    end

   @videobeams
  end

  # private
  def validate_start_hour
    if ( DateTime.current() > self.start_hour )
      #raise ActiveRecord::Rollback, "Error con la hora inicial"
    end
  end

  def validate_end_hour
    if ( self.start_hour >= self.end_hour )
      raise ActiveRecord::Rollback, "La hora final es mayor a la hora final"
    end
  end

  def validate_devices
     if self.meeting_room.nil?
         raise ActiveRecord::Rollback, "La reserva esta vacia"
     end
  end

  def validate_day
    if self.start_hour.wday == 0 || self.end_hour.wday == 0
      raise ActiveRecord::Rollback, "No se puede reservar dia domingo"
    end
  end

  def available_room
    Reservation.where(day:self.day).where.not(meeting_room: nil).find_each do |elem|
        if (self.start_hour < elem.start_hour) && (self.end_hour < elem.start_hour)
          puts "ok"
        elsif (self.start_hour > elem.end_hour) && (self.end_hour < elem.end_hour)
          puts "ok"
        else
          raise ActiveRecord::Rollback, "No esta disponible para dicho horario"
        end
      end
  end

  def available_schedule
      if !self.meeting_room.nil?
          self.available_room
      end
  end

  def initialize_day
     self.day = self.start_hour.to_date
  end

end
