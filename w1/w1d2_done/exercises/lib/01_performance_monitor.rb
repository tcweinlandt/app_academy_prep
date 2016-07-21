def measure(flag = 1, &prc)
  start_time = Time.now
  flag.times {prc.call}
  finish_time = Time.now
  (finish_time - start_time)/flag
end
