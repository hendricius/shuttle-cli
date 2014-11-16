module Shuttle
  class Bookmark
    attr_accessor :children, :name, :cmd, :number

    @@bookmark_number = 1

    def self.new_from_json json
      obj = new
      # We are looking at a deep nested hash if we have more than 1 values.
      if json.length == 1
        obj.name = json.keys.first
        obj.children = json.values.flatten.map do |h|
          # Recursive extract again
          new_from_json h
        end
      else
        obj.name = json[:name]
        obj.cmd = json[:cmd]
      end
      obj.number = @@bookmark_number
      @@bookmark_number += 1
      obj
    end

    def to_a
      [number, name, cmd]
    end
  end
end
