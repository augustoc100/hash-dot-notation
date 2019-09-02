class Hash
  def method_missing(method)
    (self[method.to_s] || self[method]).tap do |value|
      raise NoMethodError unless value
    end
  end
end
