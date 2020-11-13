class Project < ApplicationRecord
    enum states: %i[Propuesta En_progreso Terminado] 
end
