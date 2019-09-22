require 'pry'

class Doctor
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
        
    end

    def appointments
        Appointment.all.select { |appointment| appointment.doctor == self }
    end

    def new_appointment(patient, date)
        Appointment.new(date, patient, self)
    end

    def patients
        Patient.all.select {|patient| patient}
        # I would expect the bottom to work, not the top
        #appointments.select { |appointment| appointment.patient}
    end

    def self.all
        @@all
    end



end #end of Doctor class