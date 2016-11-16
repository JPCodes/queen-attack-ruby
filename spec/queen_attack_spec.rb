require('rspec')
require('queen_attack')

describe('Array#queen_attack?') do

  it('is false if the coordinates are not horizontally, vertically, or diagonally in line with each other') do
    expect([1,1].queen_attack?([2,3])).to(eq(false))
  end

  it('will return true when queen is horizontal to enemy piece') do
    expect([3,0].queen_attack?([2, 0])).to(eq(true))
  end

  it('will return true when queen is vertical to enemy piece') do
    expect([0,3].queen_attack?([0,2])).to(eq(true))
  end

  it('will return true when queen is diagonal to the enemy piece') do
    expect([2,2].queen_attack?([4,4])).to(eq(true))
  end
end
