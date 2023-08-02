require_relative './ruby_trace.rb'
bind = binding
p bind

bind.local_variable_set(:bind, 2)

p bind

p binding.local_variables

bind = binding

p eval("bind", bind)

if 2 > 3
  puts 2
else
  puts 3
end


if true
  puts "looks like the if true is compiled out"
end
