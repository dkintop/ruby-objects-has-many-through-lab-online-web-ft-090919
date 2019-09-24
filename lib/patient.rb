class Patient 
  attr_reader :name
  def initialize(name)
    @name = name 
  end 
  
  def appointments
    
  end
  
  def new_appointment(date, doctor)
    Appointment.new(date, self, doctor)
  end 
  
end 