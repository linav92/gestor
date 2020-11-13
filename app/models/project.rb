class Project < ApplicationRecord
    validates :name, :description, :states, presence: true
    enum states: {Propuesta: 0,  En_progreso: 1, Terminado: 2} 


    before_save :has_states
    def has_states
        if self.states.present?
            self.states.save
        else
            self.states = "Propuesta"
        end
    end     
end