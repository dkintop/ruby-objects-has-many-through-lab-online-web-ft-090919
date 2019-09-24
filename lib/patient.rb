class Patient 
  attr_reader :name
  
  @@all = []
  def initialize(name)
    @name = name 
    @@all << self 
  end 
  
  
  def self.all 
    
  end 
  
  def appointments
    Appointment.all.select do |appointment|
      appointment.patient == self
    end
  end
  
  def new_appointment(date, doctor)
    Appointment.new(date, self, doctor)
  end 
  
end 