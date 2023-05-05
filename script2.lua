function love.draw()
  common_draw()
    love.graphics.print('Hello World from script2!', 100, 100)
end

--[[
function love.update()
	if love.mouse.isDown(1) then
    love.filesystem.load("main.lua")()
	end
end
--]]
--[[
function love.mousereleased(x, y, button)
  if button == 1 then
    love.filesystem.load("controls/main.lua")()
  end
end
--]]

next="controls/main.lua"
-------------

---dofile("location.lua")
love.filesystem.load("location.lua")()