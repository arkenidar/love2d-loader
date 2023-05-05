
require("mobdebug").start()

function love.load()
  love.window.setTitle"love2d: loader (page-like location loading)"
  love.window.setMode(500,500)
end

-- http loader ala web-browser
-- loads lua files
----love.filesystem.load("script1.lua")()

section_top_height = 50
function common_draw()
  -- background
  love.graphics.setColor(1,1,1) -- white bg
  love.graphics.rectangle("fill", 0,0, 500, section_top_height) -- xywh
  
  love.graphics.setColor(0,1,1) -- white bg
  love.graphics.print("Hello World! next is : "..next.." . Left-Control key or click HERE!", 0,0)
  love.graphics.setColor(1,1,1) -- white bg
end

function love.draw()
common_draw()
end

next="script1.lua"

-------------
--[[
function love.keypressed(key, u)
  if key == "lctrl" then -- LeftControl key
    
    love.filesystem.load(next)()
    
    ---- -- Configuration reload but preserve states
    ---conf_buttons_reload()
    
  end
end --]]

---dofile("location.lua")
love.filesystem.load("location.lua")()
------------