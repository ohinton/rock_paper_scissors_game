require('rspec')
require('game')

describe('game') do
  it("compares the two player choices") do
    expect("rock".game("scissors")).to(eq("Player One!"))
  end
end
