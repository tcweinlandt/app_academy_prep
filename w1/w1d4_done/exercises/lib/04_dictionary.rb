class Dictionary
    attr_reader :entries
    def initialize
        @entries = {}
    end
    def add(entry)
        entry.is_a?(Hash) ? @entries.merge!(entry) : @entries[entry]=NIL
    end
    def keywords
        @entries.keys.sort
    end
    def words
        @entries.values
    end
    def include?(keyword)
        self.keywords.include?(keyword)
    end
    def find(word)
        @entries.select {|key,val| key.include?(word)}
    end
    def printable
        entries = keywords.map do |keyword|
        %Q{[#{keyword}] "#{@entries[keyword]}"}
        end

        entries.join("\n")
    end
end
