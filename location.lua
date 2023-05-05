function love.keypressed(key, u)
  if key == "lctrl" then -- LeftControl key
    
    love.filesystem.load(next)()
    
    ---- -- Configuration reload but preserve states
    ---conf_buttons_reload()
    
  end
end

function love.mousepressed( x, y, button, istouch, presses )
  if button == 1 and y<=section_top_height then
    love.filesystem.load(next)()
  end
end