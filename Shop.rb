class Shop
   def initialize()
       @unShelvedCandies = Array.new
       @shelves = Array.new
       @shelvesCount = 0
   end

   def addNewCandy(newCandy)
       @unShelvedCandies.push(newCandy)
   end

   def addShelf(newShelf)
      @shelves.push(newShelf)
      @shelvesCount += 1
   end

   #creates a shelf within 'this' store, so after the initializer for 
   #the shelf is called, the addShelf function above^^ officially adds 
   #the new shelf
   def addNewShelf()
       Shelf.new(self)
   end

   #removes a shelf, but first removes the candies found on it
   def removeShelf(index)
       if index > @shelves.length
            print "Please choose a proper shelf"
       else
            @shelves[index].getCandies.each{ |candy|
               @unShelvedCandies.push(candy)
               candy.unShelf
            }
           @shelves.delete_at(index)
           @shelvesCount -= 1
       end
   end

   #moves candies on to a shelf according to their respective indices
   def moveCandyToShelf(candyIndex, shelfIndex)
      if shelfIndex > @shelves.length
         print "Please choose a proper shelf"
      elsif candyIndex > @unShelvedCandies.length
         print "Please choose a proper candy"
      else
         @shelves[shelfIndex].addCandy(@unShelvedCandies[candyIndex])
         @unShelvedCandies[candyIndex].setToShelf
         @unShelvedCandies.delete_at(candyIndex)
      end
   end

   #unshelfs a speceifc candy from a specific shelf
   def moveCandyFromShelf(candyIndex, shelfIndex)
      if shelfIndex > @shelves.length
         print "Please choose a proper shelf"
      elsif candyIndex > @shelves[shelfIndex].getCandies.length
         print "Please choose a proper candy"
      else
       @unShelvedCandies.push(@shelves[shelfIndex].getCandies[candyIndex])
       @shelves[shelfIndex].getCandies[candyIndex].unShelf
       @shelves[shelfIndex].deleteCandy(candyIndex)
      end
   end

   #prints out the names of all the candies shelved (for sale)
   def listCandies()
      @shelves.each { |shelf|
         shelf.getCandies.each{ |candy|
            puts candy.getName
         }
     }
   end
end


