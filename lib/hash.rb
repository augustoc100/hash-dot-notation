class Hash
  def method_missing(method)
    self[method.to_s] || fetch(method)
  end
end
