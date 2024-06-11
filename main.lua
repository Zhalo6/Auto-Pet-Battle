local game_state = 'menu'
local menus = { 'Play', 'Settings', 'Quit' }
local selected_menu_item = 1
local window_width 
local window_height
local font_height

-- functions
local draw_menu
local menu_keypressed
local draw_settings
local settings_keypressed
local draw_game
local game_keypressed

function love.load()

  love.window.setMode(1000, 700, {resizable=true, vsync=0, minwidth=400, minheight=300})

  -- get the width and height of the game window in order to center menu items
  window_width, window_height = love.graphics.getDimensions()

  -- use a big font for the menu
  local font = love.graphics.setNewFont(30)

  -- get the height of the font to help calculate vertical positions of menu items
  font_height = font:getHeight()

end

function love.update(dt)

  if game_state == 'game' then
    -- update everything in the game
  end

end

function love.draw()
  
  if game_state == 'menu' then
    draw_menu()

  elseif game_state == 'settings' then
    draw_settings()

  else -- game_state == 'game'
    draw_game()

  end

end

function round_rectangle(x, y, width, height, radius)
	--RECTANGLES
	love.graphics.rectangle("fill", x + radius, y + radius, width - (radius * 2), height - radius * 2)
	love.graphics.rectangle("fill", x + radius, y, width - (radius * 2), radius)
	love.graphics.rectangle("fill", x + radius, y + height - radius, width - (radius * 2), radius)
	love.graphics.rectangle("fill", x, y + radius, radius, height - (radius * 2))
	love.graphics.rectangle("fill", x + (width - radius), y + radius, radius, height - (radius * 2))
	
	--ARCS
	love.graphics.arc("fill", x + radius, y + radius, radius, math.rad(-180), math.rad(-90))
	love.graphics.arc("fill", x + width - radius , y + radius, radius, math.rad(-90), math.rad(0))
	love.graphics.arc("fill", x + radius, y + height - radius, radius, math.rad(-180), math.rad(-270))
	love.graphics.arc("fill", x + width - radius , y + height - radius, radius, math.rad(0), math.rad(90))
end

function draw_menu()

  love.graphics.setBackgroundColor(love.math.colorFromBytes(45,136,54))

  local horizontal_center = window_width / 2
  local vertical_center = window_height / 2
  local start_y = vertical_center - (font_height * (#menus / 2))

  -- draw guides to help check if menu items are centered, can remove later
  -- love.graphics.setColor(1, 1, 1, 0.1)
  -- love.graphics.line(horizontal_center, 0, horizontal_center, window_height)
  -- love.graphics.line(0, vertical_center, window_width, vertical_center)

  -- draw game title
  love.graphics.setColor(1, 1, 1, 1)
  love.graphics.printf("Animal Fighter", 0, 150, window_width, 'center')

  -- draw menu items
  for i = 1, #menus do

    -- currently selected menu item is yellow
    if i == selected_menu_item then
        love.graphics.setColor(love.math.colorFromBytes(132,206,248))

    -- other menu items are white
    else
      love.graphics.setColor(1, 1, 1, 1)
    end

    -- draw this menu item centered
    love.graphics.printf(menus[i], 0, start_y + font_height * (i-1), window_width, 'center')

  end

end

function draw_settings()

  love.graphics.printf(
    "settings", 0, window_height / 20, window_width, 'center'
  )

    love.graphics.setBackgroundColor(love.math.colorFromBytes(45,136,54))

    love.graphics.setColor(love.math.colorFromBytes(132,206,248))
    round_rectangle(window_width / 15, window_height / 4 - 50, 450, 75, 10)
    round_rectangle(window_width / 15, window_height / 2.15 - 50, 125, 75, 10)
    round_rectangle(window_width / 15 + 160, window_height / 2.15 - 50, 125, 75, 10)
    round_rectangle(window_width / 15 + 325, window_height / 2.15 - 50, 125, 75, 10)
    round_rectangle(window_width / 15, window_height / 1.5 - 50, 450, 75, 10)


end

function draw_game()
  love.graphics.setColor(love.math.colorFromBytes(210,212,94))
  round_rectangle(50, 50, window_width / 6, 75, 10)
  round_rectangle(255, 550, window_width / 7, 75, 10)
  love.graphics.setColor(love.math.colorFromBytes(40,83,39,50))
  round_rectangle(50, 200, window_width / 1.75, 75, 10)
  round_rectangle(50, 300, window_width / 1.75, 75, 10)
  round_rectangle(50, 450, window_width / 1.75, 75, 10)
  round_rectangle(50, 550, window_width / 6, 75, 10)


end

function love.keypressed(key, scan_code, is_repeat)

  if game_state == 'menu' then
    menu_keypressed(key)

  elseif game_state == 'settings' then
    settings_keypressed(key)

  else -- game_state == 'game'
    game_keypressed(key)

  end

end

function menu_keypressed(key)

  -- pressing Esc on the main menu quits the game
  if key == 'escape' then
    love.event.quit()

  -- pressing up selects the previous menu item, wrapping to the bottom if necessary
  elseif key == 'up' then

    selected_menu_item = selected_menu_item - 1

    if selected_menu_item < 1 then
      selected_menu_item = #menus
    end

  -- pressing down selects the next menu item, wrapping to the top if necessary
  elseif key == 'down' then

    selected_menu_item = selected_menu_item + 1

    if selected_menu_item > #menus then
      selected_menu_item = 1
    end

  -- pressing enter changes the game state (or quits the game)
  elseif key == 'return' or key == 'kpenter' then

    if menus[selected_menu_item] == 'Play' then
      game_state = 'game'

    elseif menus[selected_menu_item] == 'Settings' then
      game_state = 'settings'

    elseif menus[selected_menu_item] == 'Quit' then
      love.event.quit()
    end

  end

end

function settings_keypressed(key)

  if key == 'escape' then
    game_state = 'menu'
  end

end

function game_keypressed(key)

  if key == 'escape' then
    game_state = 'menu'
  end

end
