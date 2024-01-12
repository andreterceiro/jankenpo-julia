using Random

"""
Returns a random string of a computer choice, "paper", "rock" or "scissors"

@return String
"""
function getCompleteStringComputerChoice()
    intComputerChoice = abs(rand(Int) % 3)

    if  intComputerChoice == 1
         return "paper"
    end

    if intComputerChoice == 2
         return "rock"
    end

    return "scissors"
end

"""
Converts a string related to a choice ("p", "r" or "s"), to a complete string of a choice, "paper", "rock" or "scissors"

@param String charChoice Char representing the choice to be converted

@return String
"""
function convertCharToCompleteStringOfChoice(charChoice)
    if charChoice == "p"
        return "paper"
    end

    if charChoice == "r"
        return "rock"
    end
 
    if charChoice == "s"
        return "scissors"
    end
    
    throw("You need to specify 'p', 'r' or 's'")
end

print("Jankenpo\n")
print("========\n\n")
userChoice = ""

while userChoice != "paper" && userChoice != "rock" && userChoice != "scissors"
    characterChoice = ""
    try
        print("Please type 'p' for paper or 'r' for rock or 's' for scissors: ")
        
        characterUserChoice = readline()
        global userChoice = convertCharToCompleteStringOfChoice(characterUserChoice)
    catch e
    end
end

computerChoice = getCompleteStringComputerChoice()

if ((userChoice == "paper" && computerChoice == "rock") || (userChoice == "rock" && computerChoice == "scissors") || (userChoice == "scissors" && computerChoice == "paper"))
    print("The winner is: user\n")
elseif (userChoice == computerChoice)
    print("The winner is: draw\n")
else
    print("The winner is: computer\n")
end

print("\nComputer selected: " * computerChoice)
print("\nUser selected: " * userChoice * "\n\n")