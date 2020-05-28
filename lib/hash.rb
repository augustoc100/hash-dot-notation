class Hash
  def method_missing(method)
    (self[method.to_s] || self[method]).tap do |value|
      raise NoMethodError.new("undefined method #{method} for #{self}") unless value
    end
  end
end
