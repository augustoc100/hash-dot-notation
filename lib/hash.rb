class Hash
  def method_missing(method)
    fetch(method)
  end
end
