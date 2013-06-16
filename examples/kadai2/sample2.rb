require "dxruby"

i = Image.new(640, 480)
c = 255
r = 1
font = Font.new(32)

Window.loop do
  c -= Input.x
  c = 255 if c > 255
  c = 0 if c < 0
  Window.drawFont(0, 0, "C:#{c}", font)

  if Input.mouseDown?(M_LBUTTON)
    x = Input.mousePosX
    y = Input.mousePosY
    i.circleFill(x, y, r, [c, c, c])
  end
  Window.draw(0, 0, i)
end
