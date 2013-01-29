class String
  def bold
    "<b>" + self + "</b>"
  end

  def italic
    "<i>" + self + "</i>"
  end

  def light
    "<font name='OpenSans-Light.ttf'>" + self + "</font>"
  end
  
  def bold_italic
    "<font name='OpenSans-BoldItalic.ttf'>" + self + "</font>"
  end

  def color(c)
    "<color rgb='#{c}'>" + self + "</color>"
  end

end