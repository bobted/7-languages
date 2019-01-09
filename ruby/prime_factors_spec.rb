def prime_factors(num)
  return [] if num == 1
  factor = (2..num).find {|x| num % x == 0} 
  [factor] + prime_factors(num / factor) 
end

RSpec.describe "Prime Factors" do

  it "has factors of [] for 1" do
    expect(prime_factors(1)).to eq []
  end

  it "has factors of [2] for 2" do
    expect(prime_factors(2)).to eq [2]
  end

  it "has factors of [2] for 3" do
    expect(prime_factors(3)).to eq [3]
  end

  it "has factors of [2] for 4" do
    expect(prime_factors(4)).to eq [2, 2]
  end

  it "has factors of [2] for 5" do
    expect(prime_factors(5)).to eq [5]
  end

  it "has factors of [2] for 6" do
    expect(prime_factors(6)).to eq [2, 3]
  end

  it "has factors of [2] for 7" do
    expect(prime_factors(7)).to eq [7]
  end

  it "has factors of [2] for 8" do
    expect(prime_factors(8)).to eq [2, 2, 2]
  end

  it "has factors of [2] for 9" do
    expect(prime_factors(9)).to eq [3, 3]
  end

end
