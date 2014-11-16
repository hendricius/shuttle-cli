module Shuttle
  class Printer
    def print
      rows = bookmarks.map(&:to_a)
      table = Terminal::Table.new :rows => rows, headings: %w[number name command]
      puts table
    end

    def bookmarks
      reader.bookmarks
    end

    def reader
      @reader ||= Shuttle::Reader.new
    end
  end
end
