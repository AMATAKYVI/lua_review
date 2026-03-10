

local mymodule = require("mymodule")
local attack = mymodule.attack
local monsters = mymodule.monsters

local player = {
    name = "Hero",
    health = 100,
    attack = 20,
    defense = 10,
    is_alive = true
}
-- Simulate a battle between the player and the first monster
print(monsters)
-- print(player)
local monster = monsters[1]

local getUserInput = function()
    print("Choose an action: (1) Attack, (2) Defend")
    local choice = io.read()
    return choice
end
-- while player.is_alive do
--     local choice = getUserInput()
--     if choice == "1" then
--         attack(player, monster)
--     elseif choice == "2" then
--         print(player.name .. " defends against the next attack!")
--         player.defense = player.defense + 5 -- Temporarily increase defense for the next
--     end
-- end
-- attack(player, monster)
-- attack(monster, player)

local t = {
    name = "Jack",
    age = 30,
    friends = {"Alice", "Bob", "Charlie"},
    greet = function(self)
        print("Hello, my name is " .. self.name .. " and I am " .. self.age .. " years old.")
    end,

    friendsTotal = function(self)
        print("My friends are: " .. table.concat(self.friends, ", "))
    end
}

t.greet(t) -- Output: Hello, my name is Jack and I am 30 years old.
t.friendsTotal(t) -- Output: My friends are: Alice, Bob, Charlie

local function Animal(name, sound)
    local self = {}
    self.name = name
    self.sound = sound

    function self:makeSound()
        print(self.name .. " says " .. self.sound)
    end

    return self
end

local function Dog(name)
    local self = Animal(name, "Woof")

    function self:fetch()
        print(self.name .. " is fetching the ball!")
    end
    -- function self:makeSound()
    --     print(self.name .. " barks: " .. self.sound)
    -- end

    return self
end

local dog = Dog("Buddy")
dog:makeSound() -- Output: Buddy barks: Woof
dog:fetch()

local cat = Animal("Whiskers", "Meow")
cat:makeSound() -- Output: Whiskers says Meow


-- metatable
local function addTableValues(x, y)
    return x.num + y.num
end
local myTable = {
    __add = addTableValues
}



local tb1 = {num=5}
local tb2 = {num=10}

setmetatable(tb1, myTable)
local ans = tb1 + tb2

print(ans) -- Output: 15


