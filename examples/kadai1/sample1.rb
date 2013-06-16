require "dxruby"
font = Font.new(50, "MS Gothic")
Window.loop do
  t = Time.now
  s = t.strftime("%H:%M:%S")
  Window.drawFont(100, 100, s, font)
end
