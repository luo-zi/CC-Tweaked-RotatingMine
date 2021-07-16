local M = { }
TurtleTool=M
function M.warnning()--warnning function
    print("Error!!!")
  end

  --basic movement function--start
  function M.moveForwardByDig()
    turtle.dig()
    turtle.forward()
    turtle.suck()
  end
  function M.moveBackByDig()
    turtle.turnLeft()
    turtle.turnLeft()
    turtle.dig()
    turtle.forward()
    turtle.turnLeft()
    turtle.turnLeft()
    turtle.suck()
  end
  function M.moveUpByDig()
    turtle.digUp()
    turtle.up()
    turtle.suck()
  end
  function M.moveDownByDig()
    turtle.digDown()
    turtle.down()
    turtle.suck()
  end
 --basic movement function--end

  --Variable step movement function--start
  function M.w(n)
    for i=1,n do
     M.moveForwardByDig()
    end
  end
  function M.s(n)
    for i=1,n do
      M.moveBackByDig()
    end
  end
  function M.a(n)
    turtle.turnLeft()
    for i=1,n do
     M.moveForwardByDig()
    end
  end
  function M.d(n)
    turtle.turnRight()
    for i=1,n do
     M.moveForwardByDig()
    end
  end
  function M.r(n)
    for i=1,n do
      M.moveUpByDig()
    end
  end
  function M.down(n)
    for i=1,n do
      M.moveDownByDig()
    end
  end
--Variable step movement function--end

  function M.tryMakeWay()
    local stone=false
    if not turtle.inspectDown() then
        if M.findCobblestoneSlot()~=-1 then
            turtle.select(M.findCobblestoneSlot())
            turtle.placeDown()
        end
    end

  end
--
  function M.findCobblestoneSlot()
    local cobblestoneSolt=-1;
    for i = 1, 16 do
        local m=turtle.getItemDetail(i,true)
        if  m then
        local t=m.tags
        if (t["forge:cobblestone"]==true) then
        --turtle.select(i)
       -- turtle.placeDown()
           cobblestoneSolt=i
           break
        end
      end
    end

      return cobblestoneSolt
  end
 return TurtleTool