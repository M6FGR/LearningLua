---@class StringUtils
utils = {}

--- Returns true if the word begins with the targeted string
---@param word any
---@param beginning any
---@return boolean
function utils.startsWith(word, beginning)
    local stringWord = tostring(word)
    local stringBeginning = tostring(beginning)
    return string.sub(stringWord, 1, #stringBeginning) == stringBeginning
end

--- Returns true if the word ends with the targeted string
---@param word any
---@param ending any
---@return boolean
function utils.endsWith(word, ending)
    local stringWord = tostring(word)
    local stringEnding = tostring(ending)
    if stringEnding == "" then return true end
    return string.sub(stringWord, -#stringEnding) == stringEnding
end

--- Returns true if the word contains the targeted string
---@param word any
---@param containing any
---@return boolean
function utils.contains(word, containing)
    local stringWord = tostring(word)
    local stringContaining = tostring(containing)
    return string.find(stringWord, stringContaining, 1, true) ~= nil
end

--- Removes leading and trailing whitespace from a string
---@param str any
---@return string
function utils.trim(str)
    local s = tostring(str)
    return (s:gsub("^%s*(.-)%s*$", "%1"))
end

--- Returns true if the string is empty or consists only of whitespace
---@param str any
---@return boolean
function utils.isBlank(str)
    if str == nil then return true end
    local s = tostring(str)
    return s:match("^%s*$") ~= nil
end

--- Capitalizes the first letter of a string
---@param str any
---@return string
function utils.capitalize(str)
    local s = tostring(str)
    return s:gsub("^%l", string.upper)
end

--- Splits a string by a given delimiter into an array table
---@param inputstr string
---@param sep string
---@return table
function utils.split(inputstr, sep)
    if sep == nil then
        sep = "%s"
    end
    local t = {}
    for str in string.gmatch(tostring(inputstr), "([^" .. sep .. "]+)") do
        table.insert(t, str)
    end
    return t
end

return utils