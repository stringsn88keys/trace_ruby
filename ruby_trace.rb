# TracePoint is already in the namespace and doesn't
# need a require
trace = TracePoint.new(:line) do |tp|
  case tp.path
  when /^</
    puts tp.path
  when /^\(eval\)$/
    puts tp.path
  else
    puts "+ #{File.open(tp.path) { |f| f.each_line.to_a[tp.lineno-1] }}"
  end
end

trace.enable
