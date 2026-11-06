function sayHello()
    print("Hello world!")
end

-- a local function is private, a non-local is public
local function checkTime()
    local result = os.time(table);
    print("The time is: " + result)
end

-- To comment, we use these? "--"
local function checkBooleans(string)
-- nil == null in most languages, except python, it's "None"
   if string == nil then return end;
   if utils.startsWith(string, "No") then
       error("The word started with NO!", 3)
   end
end



