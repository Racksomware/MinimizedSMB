--[[
  The Init() method is part of the game's lifecycle and called only once when the game starts.
]]--
function Init()

  BackgroundColor(5)

  DrawText( "YOLK PORK WOMBO ZULGOMJO", 4, 4, DrawMode.TilemapCache, "GenHUD", 55)
  DrawText( os.date("%d-%m-%Y"), 4, 12, DrawMode.TilemapCache, "GenHUD", 55)

  DrawText( "MENSAJE DE PRUEBA", 4, 32, DrawMode.TilemapCache, "GenHUD", 55)
  DrawText( "mensaje de prueba", 4, 40, DrawMode.TilemapCache, "GenHUD", 55)
  DrawText( "ABCDEFGHIJKLMNOPQRSTUVWXYZ", 4, 48, DrawMode.TilemapCache, "GenHUD", 55)
  DrawText( "abcdefghijklmnopqrstuvwxyz", 4, 56, DrawMode.TilemapCache, "GenHUD", 55)

end

--[[
  The Update() method is part of the game's life cycle. The engine calls
  Update() on every frame before the Draw() method. It accepts one argument,
  timeDelta, which is the difference in milliseconds since the last frame.
]]--
function Update(timeDelta)

  DrawText(os.date("%S:%M:%H"), 4, 20, DrawMode.Sprite, "GenHUD", 55)
  DrawText("BG COLOR ID: ".. BackgroundColor(), 84, 12, DrawMode.Sprite, "GenHUD", 55)
  DrawText("ACRIVE SPR.: ".. TotalSprites(true), 84, 20, DrawMode.Sprite, "GenHUD", 55)

end

--[[
  The Draw() method is part of the game's life cycle. It is called after
  Update() and is where all of our draw calls should go.
  We'll be using this to render sprites to the display.
]]--
function Draw()

  --DrawSpriteBlock( id, x, y, width, height, flipH, flipV, DrawMode, colorOffset, onScreen, useScrollPos, bounds )
  RedrawDisplay()

end