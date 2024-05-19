local input
local key = loadstring(game:HttpGet('your link'))()


function begin()
    rconsoleprint('@@WHITE@@')
    rconsolename("Console - Key System")
    rconsoleprint("Get Key: Example Link/ \n")
    rconsoleprint("Enter Key:")
    input = rconsoleinput()


if input == key then
    rconsoleclear()
    rconsoleprint('@@LIGHT_GREEN@@')
    rconsolename("Script - Main Script")
    rconsoleprint("Welcome!\n")
    loadstring(game:HttpGet('your script link'))()

elseif input ~= key then
    rconsoleprint("@@RED@@")
    rconsoleprint("Incorrect key!\n")
    rconsolename("Wrong Key!")
    wait(2)
    rconsoleclear()
    begin()
 end
end


begin()
