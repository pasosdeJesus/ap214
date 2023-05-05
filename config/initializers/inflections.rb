# frozen_string_literal: true

# Be sure to restart your server when you modify this file.

# Add new inflection rules using the following format. Inflections
# are locale specific, and you may define rules for as many different
# locales as you wish. All of these examples are active by default:
# ActiveSupport::Inflector.inflections(:en) do |inflect|
#   inflect.plural /^(ox)$/i, '\1en'
#   inflect.singular /^(ox)en/i, '\1'
#   inflect.irregular 'person', 'people'
#   inflect.uncountable %w( fish sheep )
# end

# These inflection rules are supported but not enabled by default:
# ActiveSupport::Inflector.inflections(:en) do |inflect|
#   inflect.acronym 'RESTful'
# end
ActiveSupport::Inflector.inflections do |inflect|
  inflect.irregular("listadepositado", "listasdepositados")
  inflect.irregular("elementopaisaje", "elementospaisaje")
  inflect.irregular("evaluacionriesgo", "evaluacionesriesgo")
  inflect.irregular("tipotestigo", "tipostestigo")
  inflect.irregular("listapersonafuente", "listaspersonasfuentes")
  inflect.irregular("listaevariesgo", "listasevariesgo")
  inflect.irregular("tipotestigo", "tipostestigo")
  inflect.irregular("disposicioncadaveres", "disposicionescadaveres")
  inflect.irregular("lugarpreliminar", "lugarespreliminares")
  inflect.irregular("tipoentierro", "tiposentierro")
end
