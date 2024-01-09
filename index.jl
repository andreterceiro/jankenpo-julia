print("Jankenpo\n")
print("========\n\n")
userChoice = ""
using Random

while userChoice != "paper" && userChoice != "rock" userChoice != "scissors"
    characterChoice = ""
    try
        print("Please type 'p' for paper or 'r' for rock or 's' for scissors: ")
        
        characterChoice = readline()
        global userChoice = convertCharToCompleteStringOfChoice(
            characterChoice
        )
        print("***********" * userChoice * "*********************")
    catch
    end
    
    print(userChoice)
    print("\n=" * characterChoice * "=\n")
end

computerChoice = getCompleteStringComputerChoice()

if ((userChoice == "paper" && computerChoice == "rock") || (userChoice == "rock" && computerChoice == "scissors") (userChoice == "scissors" && computerChoice == "paper")
    print("The winner is: user")
else if (userChoice == computerChoice)
    print("The winner is: draw")
else
    print("The winner is: computer")
end

print("Computer selected: " * computerChoice)
print("User selected: " * userChoice)

"""
Returns a random string of a computer choice, "paper", "rock" or "scissors"

@return String
"""
function getCompleteStringComputerChoice()
    intComputerChoice = rand(1,3)

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
    print("---------------" * charChoice * "-----------------------")
    if charChoice == "p"
         return "paper"
    end

    if charChoice == "r"
         return "rock"
    end
 
    if charChoice == "s"
         return "scissors"
    end
    
    throw("You need to specify 'p', 'r' or 's)
end

