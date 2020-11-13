class Project < ApplicationRecord
    validates :name, :description, presence: true
    enum states: %i[Propuesta En_progreso Terminado] 

    # before_save :has_states
    # def has_states
    #     if self.states.present?
    #         self.states.save
    #     else
    #         self.states = "propuesta"
    #     end
    # end     
end