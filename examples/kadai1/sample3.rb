require "dxruby"
i = Image.new(640, 480)
i.boxFill(50, 50, 350, 200, [255, 0, 0])
i.circle(50, 50, 10, [0, 255, 0])
i.circle(350, 50, 10, [0, 255, 0])
i.circle(50, 200, 10, [0, 255, 0])
i.circle(350, 200, 10, [0, 255, 0])
font = Font.new(50, "MS Gothic")

Window.loop do
  Window.draw(0, 0, i)
  t = Time.now
  if (t.sec % 2) == 0
    s = t.strftime("%H:%M:%S")
  else
    s = t.strftime("%H %M %S")
  end
  Window.drawFont(100, 100, s, font)
end
