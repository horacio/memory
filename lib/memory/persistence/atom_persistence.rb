module Memory
  module Persistence
    class AtomPersistence
      def persist(collection)
        collection.items.each_with_object([]) do |object, result|
          next if event_already_in(object.id.content)

          event = Memory::Models::Event.new.tap do |e|
            e.id = object.id.content
            e.author = object.author.name
            e.link = object.link
            e.title = object.title
            e.published = object.published
            e.updated = object.updated
          end

          event.save
        end
      end

      private

      def event_already_in(event_id)
        Memory::Models::Event.with(:guid, event_id)
      end
    end
  end
end
