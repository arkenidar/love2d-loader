--=========================================================
-- equations-plotted "imported" (copied)

function distance(x1,y1,x2,y2)
    return math.sqrt((x2-x1)*(x2-x1)+(y2-y1)*(y2-y1))
end

function draw()

    local x1=150
    local y1=180
    local x2=50
    local y2=300

    for x=0,500 do
        for y=0,500 do
            -- ellipse definition
            if (
            2*distance(x,y,x1,y1)+
            distance(x,y,x2,y2))<300 then
            love.graphics.points({ {x,y} })
            end
        end
    end

end
--=========================================================

function love.draw()
    common_draw()
    love.graphics.print('Hello World from script2!', 100, 100)
    --=========================================================
    draw()
end
next="controls/main.lua"
love.filesystem.load("location.lua")()