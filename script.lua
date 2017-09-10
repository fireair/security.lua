# security.lua
component = require("component")
computer = require("computer")
robot = require("robot")
term = require("term")

xDiff    = {0, 1, 0, -1}
zDiff    = {1, 0, -1, 0}
globalOrient  = 1
global_xCoord = 1
global_zCoord = 1

local input = { ... }

areaRoute    = {}
areaGrid     = {}
areaWidth    = tonumber(input[1]) or 0
areaLength   = tonumber(input[2]) or 0

for x = 1, areaWidth do
  areaGrid[x] = {}

  for z = 1, areaLength do
    areaGrid[x][z] = false
  end
end

function detect
local
  robot.detect()
