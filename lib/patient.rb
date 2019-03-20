require 'pry'

class Patient 
  attr_accessor :name 
  @@all = [] 
  
  def self.all 
    @@all 
  end 
  
  def initialize(name)
    @name = name 
    @@all << self 
  end 
  
  def new_appointment(doctor, date)
    new_appt = Appointment.new(date, self, doctor)
  end 
  
  def appointments
    dummy_appt = Appointment.all.select do |appointment|
      appointment.patient.name == @name 
    end 
  end 
  
  def doctors 
    appointments.collect do |appointment|
      appointment.doctor 
    end 
  end 
  
end 
