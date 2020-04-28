require 'rspec'

describe 'Generates russian words' do
  it 'generates sentences with Russian-like words' do
    expect( 1.sentences(:russian).scan(/[А-Яа-я\-]+/).length ).to be >= 3
  end
  it 'average word length like to real Russian texts' do
    lens = 100.sentences(:russian).scan(/[А-Яа-я\-]+/).map{|w| w.length}
    expect( lens.sum.to_f / lens.size ).to be_within(0.5).of(5.4)
  end
end