module ShuttleCli
  class Reader
    attr_accessor :bookmarks

    def initialize
      self.bookmarks = load_bookmarks
      self
    end

    def load_bookmarks
      json = bookmarks_json.with_indifferent_access
      hosts = json[:hosts].flatten
      converted = hosts.map do |h|
        Bookmark.new_from_json h
      end
      # For now flatten all.
      converted.map do |b|
        if b.children
          b.children
        else
          b
        end
      end.flatten
    end

    def json_location
      open(ENV['HOME']+'/.shuttle.json')
    end

    def json_file_content
      File.open(json_location, "rb") {|f| f.read }
    end

    def bookmarks_json
      JSON.parse json_file_content
    end
  end
end
