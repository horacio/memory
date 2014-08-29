module Memory
  module Stores
    class RedisStore
      def persist(collection)
        collection.items.map do |event|
          # persist in Redis :v
        end
      end
    end
  end
end
