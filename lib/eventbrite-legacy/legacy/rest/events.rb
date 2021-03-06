require 'eventbrite-legacy/legacy/rest/utils'
require 'eventbrite-legacy/legacy/action'
require 'eventbrite-legacy/legacy/event'

module Eventbrite
  module Legacy
    module REST
      module Events
        include Eventbrite::Legacy::REST::Utils

        def event_get(event, options = {})
          deprecate "'event_get' is deprecated. Recommend using v3 'event_get'"
          options[:id] = extract_id(event)

          perform_with_nested_object(:get, :v1, "/json/event_get/", options, :event, Eventbrite::Legacy::Event)
        end

        def event_copy(event, title, options = {})
          deprecate "'event_copy' is deprecated. Recommend using v3 'event_details'"
          options[:id]    = extract_id(event)
          options[:title] = title

          perform_with_nested_object(:get, :v1, "/json/event_copy/", options, :process, Eventbrite::Legacy::Action)
        end

        def event_update(event, options = {})
          deprecate "'event_update' is deprecated. Recommend using v3 'event_details'"
          options[:id] = extract_id(event)
          perform_with_nested_object(:get, :v1, "/json/event_update/", options, :process, Eventbrite::Legacy::Action)
        end
      end
    end
  end
end
