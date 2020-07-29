class Shelf
    #the shelf has to know which store it is going to
    def initialize(store)
        @store = store
        @myCandies = Array.new #keeps tracks of all the candies on this shelf with respect to their order
        @myCandiesCount = 0
        store.addShelf(self)
    end

    def addCandy(candy)
        @myCandies.push(candy)
        @myCandiesCount += 1
    end

    def deleteCandy(candyIndex)
        @myCandies.delete_at(candyIndex)
        @myCandiesCount -= 1
    end

    def getCandies()
        @myCandies
    end
end