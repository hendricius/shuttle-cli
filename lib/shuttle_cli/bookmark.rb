module ShuttleCli
  class Bookmark
    attr_accessor :children, :name, :cmd, :number, :parent

    @@bookmark_number = 1

    def self.new_from_json json, parent: nil
      obj = new
      # We are looking at a deep nested hash if we have more than 1 values.
      if json.length == 1
        obj.name = json.keys.first
        obj.children = json.values.flatten.map do |h|
          # Recursive extract again
          new_from_json h, parent: obj
        end
      else
        obj.name = json[:name]
        obj.cmd = json[:cmd]
      end
      obj.parent = parent
      obj.number = @@bookmark_number
      @@bookmark_number += 1
      obj
    end

    def build_name
      if parent
        "#{parent.name} - #{name}"
      else
        name
      end
    end

    def to_a
      [number, build_name, cmd]
    end

    def connect
      system(cmd)
    end
  end
end
