require "dxruby"

f = ["7", "@", "G", "!", "*"]
no1_f = f.sort_by { rand }

i = 0
no1 = no1_f[i]

no1_s = false
font = Font.new(64, "MS Gothic")
Window.fps = 15

Window.loop do
  Window.drawFont(20, 10, "#{no1}", font)
  if Input.mousePush?(M_LBUTTON)
    if !no1_s
      no1_s = true
    end
  end
  i += 1
  if i >= f.length
    i = 0
  end
  if no1_s
    Window.drawFont(120, 100, "Good!!", font)
  else
    no1 = no1_f[i]
  end
end
