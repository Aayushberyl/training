#!/usr/bin/env ruby
list=Dir.glob("*.rb")
list.each do |i|
    rd = IO.read i
    IO.write i, "#!/usr/bin/env ruby\n" + rd
end