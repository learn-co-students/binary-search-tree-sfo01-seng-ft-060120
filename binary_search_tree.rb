class BST
    
    attr_accessor :data, :left, :right

    def initialize(num)
        @data = num
        @left = nil
        @right = nil
    end

    def insert(num)
        if num <= self.data 
            if !!self.left
                self.left.insert(num)
            else 
                self.left = BST.new(num)
            end
        else
            if !!self.right
                self.right.insert(num)
            else 
                self.right = BST.new(num)
            end
        end
    end

    def each(array=[])
        self.left.each(array) if self.left
        array.push(self.data)
        self.right.each(array) if self.right
    end
end