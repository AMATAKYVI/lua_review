monsters = {
    {name = "Giant Snake",
    health = 100,
    attack = 15,
    defense = 5,
    is_alive = true
    },
    {name = "Giant Spider",
    health = 80,
    attack = 10,
    defense = 3,
    is_alive = true
    },
    {name = "Giant Giant",
    health = 150,
    attack = 20,
    defense = 10,
    is_alive = true 
    }
} -- A table containing information about different monsters, including their name, health, attack power, defense, and whether they are alive or not.

function attack(attacker, defender)
    if attacker.is_alive and defender.is_alive then
        local damage = math.max(attacker.attack - defender.defense, 0)
        defender.health = defender.health - damage
        print(attacker.name .. " attacks " .. defender.name .. " for " .. damage .. " damage!")
        
        if defender.health <= 0 then
            defender.is_alive = false
            print(defender.name .. " has been defeated!")
        else
            print(defender.name .. " has " .. defender.health .. " health remaining.")
        end
    else
        if not attacker.is_alive then
            print(attacker.name .. " is already defeated and cannot attack.")
        end
        if not defender.is_alive then
            print(defender.name .. " is already defeated and cannot be attacked.")
        end
    end
end -- A function that simulates an attack between two monsters. It calculates the damage based on the attacker's attack power and the defender's defense, updates the defender's health, and checks if the defender is defeated.


return {attack = attack, monsters = monsters} -- Returns the table of monsters, allowing other scripts to access and use this data when they require this module.