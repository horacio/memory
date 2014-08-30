module Memory
  module Persistence
    class AtomPersistence
      def persist(collection)
        collection.items.each_with_object([]) do |object, result|
          next if event_exists?(object.id.content)

          event = Memory::Models::Event.new.tap do |e|
            e.guid = object.id.content
            e.author = object.author.name.content
            e.link = object.link.href
            e.title = object.title.content
            e.published = object.published.content.to_s
            e.updated = object.updated.content.to_s
          end

          event.save
        end
      end

      private

      def event_exists?(event_id)
        Memory::Models::Event.with(:guid, event_id)
      end
    end
  end
end
