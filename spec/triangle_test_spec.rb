require_relative '../triangle_test'

describe TriangleTest do
  it 'Returns "scalene" when receives no equal triangle edges' do
    expect(TriangleTest.do(2, 3, 4)).to eq 'scalene'
  end

  it 'Returns "equilateral" when receives all triangle edges are equal' do
    expect(TriangleTest.do(3, 3, 3)).to eq 'equilateral'
  end

  it 'Returns "isosceles" when receives a two equal triangle edges' do
    expect(TriangleTest.do(2, 2, 3)).to eq 'isosceles'
  end

  it 'Returns "invalid" when recives an invalid triangle' do
    expect(TriangleTest.do(2, 2, 3)).to eq 'invalid'
  end
end
