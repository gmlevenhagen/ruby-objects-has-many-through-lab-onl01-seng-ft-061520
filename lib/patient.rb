class Patient
  attr_accessor :name, :appointment, :doctor

  @@all = []


  def initialize(name)
   @name = name
   @appointment = appointment
   @doctor = doctor
   @@all << self
  end

  def self.all
    @@all
  end

  def appointments
    @appointments
  end

 def doctors
   @appointments.collect do |appointment|
     appointment.doctor
   end
 end

 def new_appointment(doctor, date)
  Appointment.new(self, doctor, date)
 end

end
