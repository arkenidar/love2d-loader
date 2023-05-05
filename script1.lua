function love.draw()
    common_draw()
    love.graphics.print('Hello World from script1!', 100, 100)
end
next="script2.lua"
love.filesystem.load("location.lua")()