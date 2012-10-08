 class Services
        def initialize(since, last_modified, services, links)
          @since = since
          @last_modified = last_modified
          @services = services
          @links = links
        end
    end

    class Service
      def initialize(type, since, last_modified, versions)
        @type = type
        @since = since
        @last_modified = last_modified
        @versions = versions
      end
    end

    class Version
      def initialize()
        
      end
    end