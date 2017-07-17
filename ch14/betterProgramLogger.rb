$spaces = "  "
$depth = 0
def log string_description, &block
  puts $spaces*$depth + "Beginning " + string_description
  block.call
end
log "outer block" do
   n=1
   bstatus=false
   hi = "HEYYY"
   $depth = $depth + 1
    log "inside block" do
      3.times do
      n=n*3
      end
        $depth = $depth + 1
        log "insidex2 block" do
          hi = "What\'s up?"
        end
        puts $spaces*$depth + "insidex2 finished and returned: " + hi
        $depth = $depth - 1
      end
      puts $spaces*$depth + "inside block finished and returned: " + n.to_s
    log "another block" do
      puts $spaces*$depth + "another block finished and returned: YES!"
    end
$depth = $depth - 1
puts "We are done with outer block! returned: "+bstatus.to_s
end
