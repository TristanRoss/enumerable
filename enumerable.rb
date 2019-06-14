module Enumerable
    def my_each
        for i in 0..self.length - 1
          yield(self[i])
        end
      end
    # [1, 2, 3].my_each { |x| puts x}
    
    def my_each_with_index
        for i in 0..self.length - 1
            yield(self[i], i)
        end
    end
    # [5, 6, 7].my_each_with_index { |x, index| puts "#{x} #{index}"}

    def my_select
        arr = []
        for i in 0..self.length - 1
            if yield(self[i])
                arr << self[i]
            end
        end
        return arr
    end
    # puts [1, 2, 3, 4, 5, 6, 7].my_select {|x| x % 2 == 0}

    def my_all?
        for i in 0..self.length - 1
            if yield(self[i]) == false
                return false
            end
        end
        return true
    end
    # puts [1, 2, 3, 4, 5, 6, 7, 8, 9.2].my_all? {|x| x.is_a? Integer}

    def my_any?
        for i in 0..self.length - 1
            if yield(self[i]) == true
                return true
            end
        end
        return false
    end
    # puts [1, 2, 3, 4, 5, 6, 7, 8, 9.2].my_any? {|x| x.is_a? Float}

    def my_none?
        for i in 0..self.length - 1
            if yield(self[i]) == true
                return false
            end
        end
        return true
    end
    # puts [1, 2, 3, 4, 5, 6, 7, 8, 9.2].my_none? {|x| x.is_a? Float}

    def my_count
        counter = 0
        for i in 0..self.length - 1
            if yield(self[i]) == true
                counter += 1
            end
        end
        return counter
    end
    # puts [1, 2, 55, 66, 22, 4102351, 21].my_count {|x| x.odd?}
end