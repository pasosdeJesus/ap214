require 'sivel2_gen/concerns/models/persona'

module Apo214
  module Concerns
    module Models
      module Persona
        extend ActiveSupport::Concern

        included do
          include Sivel2Gen::Concerns::Models::Persona

          has_many :lugarpreliminar, foreign_key: "persona_id", validate: true,
            class_name: 'Apo214::Lugarpreliminar'
          has_many :propietario, foreign_key: "persona_id", validate: true,
            class_name: 'Apo214::Propietario', through: 'personapropietario'
          has_many :lugarpreliminar, through: :propietario,
            class_name: 'Apo214::Lugarpreliminar'

        end

      end
    end
  end
end

