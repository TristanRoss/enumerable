module Enumerable
    def my_each
        for i in 0..yield().length - 1
            return i
        end
    end
end