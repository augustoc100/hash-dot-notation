# hash-dot-notation
instead of use
```ruby
hash = {foo: 'foo'}
hash[:foo] # => 'foo'
#or 
hash = {'foo' => 'foo'}
hash['foo'] # => 'foo'

```
Use
```ruby
hash = {foo: 'foo'}
hash.foo # => 'foo'

```

You only need to require the hash_dot_notation file after installing the gem

```ruby
require 'hash_do_notation'
```
