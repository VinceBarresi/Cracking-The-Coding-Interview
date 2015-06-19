class Node
    attr_accessor :value, :next

    def initialize value = nil
        @value = value
    end

    def to_s
        @value
    end
end
