#Author: Adam Alaaeddine
#Date: July 29, 2020
#Description: This program aims to model a simple candy shop.

require_relative "Shop"
require_relative "Shelf"
require_relative "Candy"

shop = Shop.new

snickers = Candy.new("Snickers", shop)
twix = Candy.new("Twix", shop)
gummyBears = Candy.new("Gummy Bears", shop)
sourPatch = Candy.new("Sour Patch", shop)
#unshelvedCandies: [snickers, twix, gummyBears, sourPatch]

choclateShelf = Shelf.new(shop) 
softCandy = Shelf.new(shop)
#shelves: [choclateShelf, softCandy]

shop.moveCandyToShelf(0,0) #choclateShelf : [snickers]
shop.moveCandyToShelf(1,1) #softCandy : [gummyBears]

shop.listCandies #candies on shelves are Snickers and Gummy Bears

shop.removeShelf(1) #removing the first shelf puts Gummy Bears with the unshelved candies
shop.listCandies #only Snickers are for sale




