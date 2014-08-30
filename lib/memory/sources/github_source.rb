module Memory
  module Sources
    class GitHubSource
      attr_reader :username, :feed_url

      def initialize(username:)
        @username = username
        @store = Memory::Persistence::AtomPersistence.new
        @parser = Memory::Parsers::RSSParser.new
      end

      def update
        @store.persist(collection)
      end

      def feed_url
        "https://github.com/#{username}.atom"
      end

      private

      def collection
        @parser.parse(feed)
      end

      def feed
        open(feed_url).read
      end
    end
  end
end
