class Candy
    #each candy must have a name and know which store it is going to (where it goes in unshelved)
    def initialize(name, store)
        @name = name
        @store = store
        @isShelved = false
        store.addNewCandy(self)
    end

    def getName()
        @name
    end

    def setToShelf()
        @isShelved = true
    end

    def unShelf()
        @isShelved = false
    end

end