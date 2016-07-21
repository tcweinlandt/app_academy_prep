def ftoc(fahr)
  fahr -= 32.0
  cel = fahr * 5 / 9
end

def ctof(cel)
  cel = cel * 9.0 / 5.0
  fahr = cel + 32
end
