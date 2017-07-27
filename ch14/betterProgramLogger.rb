def log string_description, spaces, depth, &block
  puts spaces*depth + "Beginning " + string_description
  output = block.call
  puts spaces*depth + string_description + " finished and returned: " + output.to_s
end

spaces = " "
depth = 0
bstatus=false
log "outer block", spaces, depth do
   n=1
   hi = "HEYYY"
   depth = depth + 1
    log "inside block", spaces, depth do
      3.times do
      n=n*3
      end
        depth = depth + 1
        log "insidex2 block", spaces, depth do
          hi
        end
        depth = depth - 1
        n
      end
    log "another block" , spaces, depth do
    bstatus
    end
depth = depth - 1
bstatus = true
end
