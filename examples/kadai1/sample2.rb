require "dxruby"
font = Font.new(50, "MS Gothic")
Window.loop do
  t = Time.now
  if (t.sec % 2) == 0
    s = t.strftime("%H:%M:%S")
  else
    s = t.strftime("%H %M %S")
  end
  Window.drawFont(100, 100, s, font)
end
