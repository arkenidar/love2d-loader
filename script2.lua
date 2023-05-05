function love.draw()
    common_draw()
    love.graphics.print('Hello World from script2!', 100, 100)
end
next="controls/main.lua"
love.filesystem.load("location.lua")()