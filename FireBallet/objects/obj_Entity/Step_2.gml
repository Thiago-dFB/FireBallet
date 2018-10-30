//apply friction
xVel = lerp(xVel, 0, frict)
yVel = lerp(yVel, 0, frict)

//apply delta
x += xVel
y += yVel

//Room loop
if (x > room_width+sprite_width) x = -sprite_width
if (x < -sprite_width) x = room_width+sprite_width
if (y > room_height+sprite_height) y = -sprite_height
if (y < -sprite_height) y = room_height+sprite_height