--[[
Spoilers for Advent Of Code 2024 :3
]]



local file = io.open("listofnumbers.txt", "r")
local table1 = {}
local table2 = {}
local endtable = {}
local endnum = 0

for line in file:lines() do
    
    line = line:match("^%s*(.-)%s*$")

    local num1, num2 = line:match("(%d+)%s%s%s(%d+)")
    
    if num1 and num2 then
        table.insert(table1, tonumber(num1))
        table.insert(table2, tonumber(num2))
    end
end

file:close()

table.sort(table1)
table.sort(table2)

for i, v in ipairs(table1) do
    local number1 = v
    local number2 = table2[i]
    table.insert(endtable, math.abs(number1 - number2)) 
end

for i, v in ipairs(endtable) do
    endnum = endnum + v
end

print(endnum) -- The number to submit
