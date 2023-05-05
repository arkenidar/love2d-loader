-- sliders (slider controls)

---require("slider")
local load_what = "slider.lua"
if common_draw then load_what = "controls/"..load_what end
love.filesystem.load(load_what)()

next="script1.lua"

local sliders_top = section_top_height+100

local sliders={
  --        x,y                 width,height  value color
  red =    {50,sliders_top,     100,50,       0.75, {1,0,0}},
  green =  {50,sliders_top+60,  100,50,       0.75, {0,1,0}},
  blue =   {50,sliders_top+120, 100,50,       0.75, {0,0,1}},
}
function love.draw()
  if common_draw then common_draw() end
  
  slider_draw(sliders.red)
  slider_draw(sliders.green)
  slider_draw(sliders.blue)
    
  -- item colored with given values
  local item_color = {sliders.red[5],sliders.green[5],sliders.blue[5]}
  love.graphics.setColor(item_color[1],item_color[2],item_color[3]) -- colored item
  love.graphics.rectangle("fill", 10,section_top_height+20, 50,50) -- xywh
  love.graphics.setColor(1,1,1) -- reset to white
end