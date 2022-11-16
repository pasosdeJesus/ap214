require 'sivel2_gen/concerns/controllers/personas_controller'
require 'date'

module Apo214
  module Concerns
    module Controllers
      module PersonasController
        extend ActiveSupport::Concern

        included do
          include Sivel2Gen::Concerns::Controllers::PersonasController

          # Están llenas @persona, @victima, @personaant, @caso
          # Y está listo para salvar la nueva persona @persona en
          # @victima --remplazando @personaant.
          # Continúa si esta función retorna true, de lo contrario
          # se espera que la función haga render json con el error
          # y que retorne false.

          def atributos_show_apo214
            atributos_show_sip + [:lugarpreliminar_ids]
          end

          def atributos_show
            atributos_show_apo214
          end

          def atributos_form
            atributos_show - [:id, :lugarpreliminar_ids]
          end

          def atributos_index
            atributos_show - [:lugarpreliminar_ids]
          end

          def remplazar_antes_salvar_v
            true
          end 

          def remplazar_despues_salvar_v
            true
          end 

          def remplazar_apo214
            @persona = Sip::Persona.find(params[:id_persona])
            respond_to do |format|
              format.html {
                render("/sip/personas/remplazarpersona",
                       layout: false)
                return
              }
            end
          end

          def remplazardepositado
            id_listadepositados = params[:id_listadepositados]
            @listadepositados = id_listadepositados
            @persona = Sip::Persona.find(params[:id_persona])
            respond_to do |format|
              format.html {
                render("/sip/personas/remplazardepositado",
                       layout: false)
                return
              }
            end
          end

          def remplazarotrafuente
            id_otrafuente = params[:id_listapersofuentes]
            @listapersofuentes = id_otrafuente
            @persona = Sip::Persona.find(params[:id_persona])
            respond_to do |format|
              format.html {
                render("/sip/personas/remplazarotrafuente",
                       layout: false)
                return
              }
            end
          end

        end # included


        class_methods do
        end # class_methods
      end
    end
  end
end
