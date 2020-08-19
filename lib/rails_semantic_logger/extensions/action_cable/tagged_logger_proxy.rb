ActionCable::Connection::TaggedLoggerProxy

module ActionCable
  module Connection
    class TaggedLoggerProxy
      def tag(logger, &block)
        current_tags = tags - logger.formatter.current_tags
        logger.tagged(*current_tags, &block)
      end
    end
  end
end
