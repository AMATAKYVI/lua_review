-- comment
--[[ comment
comment ]]

print("Hello, World!")

-- precedural programming

function factorial(n)
    if n == 0 then
        return 1
    else
        return n * factorial(n - 1)
    end
end

print(factorial(5)) -- Output: 120

print("this " .. "is a" .. " string")

-- types
print(type(42)) -- Output: number  
print(type("Hello")) -- Output: string
print(type(true)) -- Output: boolean
print(type(nil)) -- Output: nil
print(type({})) -- Output: table
print(type(function() end)) -- Output: function

local userInventory = {
    diamondblade = {
        damage = 100,
        durability = 100
    },
    stoneblade = {
        damage = 10,
        durability = 20
    },
    diamondarmor = {
        defense =50,
        durability = 500
    },
    stonearmor = {
        defense = 10,
        durability = 100
    },
    shield = {
        defense = 3,
        durability = 75
    },
    potion = {
        healing = 50
    }
}

for itemName, itemDetails in pairs(userInventory) do
    print("Item: " .. itemName)
    for attribute, value in pairs(itemDetails) do
        print("  " .. attribute .. ": " .. value)
    end
end

-- multiple line text
local multiLineText = [[
This is a multi-line string.
It can span multiple lines without needing concatenation.
You can include "quotes" and 'apostrophes' without escaping.
]]

print(multiLineText)

-- string concat
local name = "John"
local age = 30
local message = "Hello, " .. name .. ". You are " .. age .. " years old."
print(message)

local drinkAgeLimit = 21
local mikeAge = 18

if mikeAge >= drinkAgeLimit then
    print("Mike can buy a drink.")
else
    print("Mike cannot buy a drink.")
end

C = 5

local c = 1000
print(C) -- Output: 5
print(c) -- Output: 1000

_G.ADMIND_CODE = "12345"

print(ADMIND_CODE) -- Output: 12345

if _G.ADMIND_CODE == "12345" then
    print("Admin code is correct.")
else
    print("Admin code is incorrect.")
end

--type coercion
local num = 10
local str = "20"
local result = num + str -- This will cause an error in Lua
print(result) -- Output: 30 (if Lua coerces the string to a number)

local num2 = 10
local str2 = "20"
local result2 = num2 + tonumber(str2)
print(result2) -- Output: 30

-- type conversion
local num3 = 10
local str3 = tostring(num3)
print(str3) -- Output: "10"

-- type casting
local num4 = 10
local str4 = "20"
local result4 = num4 + tonumber(str4)
print(result4) -- Output: 30

--addition
local a = 5
local b = 10
local sum = a + b
print("The sum of " .. a .. " and " .. b .. " is: " .. sum)

-- subtraction
local a = 10
local b = 5
local difference = a - b
print("The difference between " .. a .. " and " .. b .. " is: " .. difference)

-- multiplication
local a = 5
local b = 10
local product = a * b
print("The product of " .. a .. " and " .. b .. " is: " .. product)

-- division
local a = 10
local b = 5
local quotient = a / b
print("The quotient of " .. a .. " divided by " .. b .. " is: " .. quotient)

--modulo
local a = 10
local b = 3
local remainder = a % b
print("The remainder of " .. a .. " divided by " .. b .. " is: " .. remainder)

local array = {1, 2, 3, 4, 5}
for index, value in ipairs(array) do
    if value % 2 == 0 then
        print(value .. " is even.")
    else
        print(value .. " is odd.")
    end
end

--get user input
-- print("Enter your name:")
-- local name = io.read()
-- print("Hello, " .. name .. "!")

-- --get user input
-- print("Enter your age:")
-- local age = io.read()
-- print("You are " .. age .. " years old.")


-- local win = false;
-- while not win do
--     local randomDiceRoll = math.random(1, 6)
--     print("Guess the dice roll (1-6): ")
--     local userGuess = io.read()
--     if tonumber(userGuess) == randomDiceRoll then
--         print("Congratulations! You guessed the correct number: " .. randomDiceRoll)
--         win = true;
--     else
--         print("Sorry, the correct number was: " .. randomDiceRoll)
--         print("Try again! Guess the dice roll (1-6): ")
--         userGuess = io.read()
--     end
-- end

-- local win = false;
-- while not win do
--     local randomDiceRoll = math.random(1, 6)
--     print("Guess the dice roll (1-6): ")
--     local userGuess = io.read()
--     if tonumber(userGuess) == randomDiceRoll then
--         print("Congratulations! You guessed the correct number: " .. randomDiceRoll)
--         win = true;
--     else
--         print("Sorry, the correct number was: " .. randomDiceRoll)
--         print("Try again! Guess the dice roll (1-6): ")
--         userGuess = io.read()
--     end
-- end


local findMin = function(a, b)
    if a < b then
        return a
    else
        return b
    end
end

local min = findMin(10, 5)
print("The minimum value is: " .. min)

local findMax = function(a, b)
    if a > b then
        return a
    else
        return b
    end
end

local max = findMax(10, 5)
print("The maximum value is: " .. max)

local textLength = function(str)
    return #str
end

local length = textLength("Hello, World!")
print("The length of the string is: " .. length)

print("The length of the string 'Hello, World!' is: " .. #("Hello, World!"))

--string methods
local str = "Hello, World!"
print(string.upper(str)) -- Output: "HELLO, WORLD!"
print(string.lower(str)) -- Output: "hello, world!"
print(string.len(str)) -- Output: 13
print(string.sub(str, 1, 5)) -- Output: "Hello"
print(string.find(str, "World")) -- Output: 8 (starting index of "World")
print(string.gsub(str, "World", "Lua")) -- Output: "Hello, Lua!"

print(string.char(72, 101, 108, 108, 111)) -- Output: "Hello"
print(string.byte("Hello", 1, 5)) -- Output: 72 101

print(string.rep("Lua ", 3)) -- Output: "Lua Lua Lua "
print(string.reverse("Hello")) -- Output: "olleH"
print(string.format("Pi is approximately %.2f", math.pi)) -- Output: "Pi is approximately 3.14"
print(string.match("Hello, World!", "World")) -- Output: "World"

local beginning, ending = string.find("Hello, World!", "World")
print("Found 'World' at position: " .. beginning .. " to " .. ending)

--logical operators
local a = true
local b = false
print(a and b) -- Output: false
print(a or b) -- Output: true
print(not a) -- Output: false

-- comparison operators
local x = 10
local y = 20
print(x == y) -- Output: false
print(x ~= y) -- Output: true
print(x < y) -- Output: true
print(x > y) -- Output: false
print(x <= y) -- Output: true
print(x >= y) -- Output: false

-- conditional statements
local a = 10
local b = 20
if a > b then
    print("a is greater than b")
elseif a < b then
    print("a is less than b")
else
    print("a is equal to b")
end

-- or and xor
local a = true
local b = false
print(a or b) -- Output: true
print(a and not b or not a and b) -- Output: true (XOR)

-- ternary operator
local a = 10
local b = 20
local result = a > b and "a is greater than b" or "a is less than or equal to b"
print(result)

for i =1, 10, 1 do
    if i % 2 == 0 then
        print(i .. " is even.")
    else
        print(i .. " is odd.")
    end
end


repeat 
    print("Hello, World!")
    i = (i or 0) + 1 -- initialize i to 0 if it is nil, then increment by 1
until i == 10

-- best way for user input
-- print("Enter your name:")
-- local name = io.read()
-- print("Hello, " .. name .. "!")

-- print("Enter your age:")
-- local age = io.read()
-- print("You are " .. age .. " years old.")

-- best way for random numbers
math.randomseed(os.time())
local random_number = math.random(1, 100)
print("Random number: " .. random_number)

-- what is io.write()?
local name = "Alice"
io.write("Hello, " .. name .. "!\n") -- Output: Hello, Alice!

-- table vs array
local myTable = {key1 = "value1", key2 = "value2"}
print(myTable.key1) -- Output: value1
print(myTable["key2"]) -- Output: value2

local myArray = {1, 2, 3, 4, 5}
print(myArray[1]) -- Output: 1
print(myArray[2]) -- Output: 2


--prebuilt array functions
local myArray = {1, 2, 3, 4, 5}
table.insert(myArray, 6) -- Inserts 6 at the end of the array
print(table.concat(myArray, ", ")) -- Output: "1, 2, 3, 4, 5, 6"
table.remove(myArray) -- Removes the last element (6)
print(table.concat(myArray, ", ")) -- Output: "1, 2, 3, 4, 5"
print(table.remove(myArray, 2)) -- Output: 2 (the removed element)
print(#myArray)

for index, value in ipairs(myArray) do
    print("Index: " .. index .. ", Value: " .. value)
end

local array1 = {
    {name = "Alice", age = 30},
    {name = "Bob", age = 25},
    {name = "Charlie", age = 35}
}
for index, value in ipairs(array1) do
    print("Index: " .. index .. ", Name: " .. value.name .. ", Age: " .. value.age)     
end




