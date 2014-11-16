module ShuttleCli
  class Printer
    def print
      rows = bookmarks.map(&:to_a)
      table = Terminal::Table.new :rows => rows, headings: %w[number name command]
      puts table
    end

    def bookmarks
      reader.bookmarks
    end

    def bookmark_by_number number
      bookmark = bookmarks.select {|bm| bm.number == number.to_i }[0]
      raise ArgumentError, "Please provide a valid bookmark number" unless bookmark
      bookmark
    end

    def connect_to_number number
      bookmark = bookmark_by_number number
      bookmark.connect
    end

    def reader
      @reader ||= Reader.new
    end
  end
end
