class TriangleTest
  def self.do(*edges)
    a_b_greater_than_c = (edges[0] + edges[1]) > edges[2]
    b_c_greater_than_a = (edges[1] + edges[2]) > edges[0]
    c_a_greater_than_b = (edges[2] + edges[0]) > edges[1]

    return 'invalid' unless a_b_greater_than_c && b_c_greater_than_a && c_a_greater_than_b

    return 'scalene' if edges[0] != edges[1] && edges[0] != edges[2] && edges[1] != edges[2]
    return 'equilateral' if edges[0] == edges[1] && edges[0] == edges[2] && edges[1] == edges[2]
    return 'isosceles' if edges[0] == edges[1] || edges[0] == edges[2] || edges[1] == edges[2]
  end
end
