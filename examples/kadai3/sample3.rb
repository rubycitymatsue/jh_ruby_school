require "dxruby"

f = ["7", "@", "G", "!", "*"]
no1_f = f.sort_by { rand }
no2_f = f.sort_by { rand }
no3_f = f.sort_by { rand }

i = 0
no1 = no1_f[i]
no2 = no2_f[i]
no3 = no3_f[i]

no1_s = false
no2_s = false
no3_s = false
font = Font.new(64, "MS Gothic")
Window.fps = 15

Window.loop do
  Window.drawFont(20, 10, "#{no1} #{no2} #{no3}", font)
  if Input.mousePush?(M_LBUTTON)
    if !no1_s
      no1_s = true
    elsif !no2_s
      no2_s = true
    elsif !no3_s
      no3_s = true
    end
  end
  i += 1
  if i >= f.length
    i = 0
  end
  if !no1_s
    no1 = no1_f[i]
  end

  if !no2_s
    no2 = no2_f[i]
  end

  if no3_s
    if no1 == no2 && no1 == no3
      Window.drawFont(120, 100, "Good!!", font)
    else
      Window.drawFont(120, 100, "Bad.", font)
    end
  else
    no3 = no3_f[i]
  end
end
