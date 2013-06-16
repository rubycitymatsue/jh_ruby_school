require "dxruby"

i = Image.new(640, 480)
c = 255
r = 1

Window.loop do
  if Input.mouseDown?(M_LBUTTON)
    x = Input.mousePosX
    y = Input.mousePosY
    i.circleFill(x, y, r, [c, c, c])
  end
  Window.draw(0, 0, i)
end
