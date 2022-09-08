# 2022-09-08 list of prime numbers with prime intervals

notes0 = [43, 41, 47, 44, 51, 46, 59, 52, 61, 50, 67, 54, 71, 54, 79, 60]
notes1 = [47, 45, 51, 48, 59, 54, 61, 54, 67, 56, 71, 58, 79, 62, 83, 64]
notes2 = [51, 50, 53, 50, 59, 55, 61, 54, 67, 56, 71, 58, 73, 56, 79, 68]
notes3 = [53, 51, 59, 56, 61, 56, 67, 60, 71, 60, 73, 60, 79, 62, 83, 72]
live_loop :arp do
  use_synth :dpulse
  1.times do
    play_pattern_timed notes0, 0.125 , release: 0.1
  end
  sleep 0.125
  use_synth :beep
  1.times do
    play_pattern_timed notes1, 0.125 , release: 0.2
  end
  sleep 0.125
  use_synth :fm
  1.times do
    play_pattern_timed notes2, 0.125 , release: 0.1
  end
  sleep 0.125
  use_synth :tb303
  1.times do
    play_pattern_timed notes3, 0.125 , release: 0.2
  end
  sleep 0.125
end

# borrowed bass line from Sonic-Pi tutorial
live_loop :foo do
  sample :loop_garzul
  use_synth :prophet
  play :c3, release: 8, cutoff: rrand(90,120)
  sleep 4
end