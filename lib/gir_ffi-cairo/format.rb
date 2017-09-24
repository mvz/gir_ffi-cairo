module Cairo
  Format = Lib.enum :Format, [
    :invalid, -1,
    :argb32, 0,
    :rgb24,
    :a8,
    :a1,
    :rgb16_565,
    :rgb30
  ]
end
