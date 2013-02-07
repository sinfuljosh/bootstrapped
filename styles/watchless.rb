#!/usr/bin/ruby -w

def compile_less
    system('lessc less/bootstrap.less > ./bootstrapped.css')
end

def echo_done
	system('echo LESS Compiled!')
end

time = Time.now

puts "Less Watchr started at " + time.inspect

watch("less\/.*\.less$") { |m|
    # Recompile LESS files
    compile_less
    puts "Less Comiled: " + time.inspect 
}

# Ctrl-C
Signal.trap('INT') { abort("\n") }