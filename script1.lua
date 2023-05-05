function love.draw()
  common_draw()
    love.graphics.print('Hello World from script1!', 100, 100)
end

--[[
function love.update()
	if love.mouse.isDown(1) then
    love.filesystem.load("script2.lua")()
	end
end
--]]
--[[
function love.mousereleased(x, y, button)
   if button == 1 then
      love.filesystem.load("script2.lua")()
   end
end
--]]

next="script2.lua"
-------------

---dofile("location.lua")
love.filesystem.load("location.lua")()