module Memory
  module Parsers
    class RSSParser
      attr_reader :parser

      def initialize(parser = RSS::Parser)
        @parser = parser
      end

      def parse(feed)
        parser.parse(feed)
      end
    end
  end
end
