t=require("TurtleTool")
function turn(n)--Basic unit of mine
  for i=1,n do
    t.tryMakeWay()
    t.w(1)
    turtle.digUp()
    turtle.digDown()
    t.down(1)
    t.tryMakeWay()
  end
end
function work(fromY,toY)--Compose the basic unit to make mine
  for i=fromY,toY,-2 do
    turn(2)
    turtle.turnLeft()
  end
  t.w(4)
  t.r(fromY-toY)
end


--main--
print("Please input the position_Y of your turtle")
location_Y=read()
location_Y=textutils.unserialise(location_Y)
print("Please input the position_Y turtle's destination")
destination_Y=read()
destination_Y=textutils.unserialise(destination_Y)
work(location_Y,destination_Y)
