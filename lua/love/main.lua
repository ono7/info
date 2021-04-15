local message = 0

local testScores = {
  95,
  87,
  98
}
table.insert(testScores, 1000)
testScores.math = "hello there"

function love.draw()
  love.graphics.setFont(love.graphics.newFont(50))
  for _, v in pairs(testScores) do
    if type(v) ~= "number" then
      love.graphics.print(v .. " awesome!")
    end
  end
end
