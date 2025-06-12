--[[
https://learnxinyminutes.com/lua/
--]]


print("hello world")

local s = 'example string'
local s2 = "can also use double quotes"
print(s)
print(s2)
-- s2 = nil -- this gives an error for some reason

local i = 1
while i <= 5 do
	if i==3 then
		print("three")
	else
		print(i)
	end
	i = i+1
end

-- print(y)
-- x = y
-- print(x)

local x = 3.14/2
local y = math.sin(x)
print(x, y)

-- TABLES

local dog = {name="tigger", age=9, [6] = 6}
print(dog.name, "is", dog.age)
print(dog[6])


-- METATABLES
f1 = {a=1,b=2}
f2 = {a=2,b=3}

metafraction = {}
function metafraction.__add(f1,f2)
	sum = {}
	sum.b = f1.b * f2.b
	sum.a = f1.a*f2.b + f2.a*f1.b
	return sum
end

setmetatable(f1, metafraction)
setmetatable(f2, metafraction)

s = f1+f2
print(s.a, "/", s.b)

print(2+2)
g = load("print(3+3)")
g()



-- :so to execute
