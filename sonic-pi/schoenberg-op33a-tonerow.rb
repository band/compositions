# examples of 12 tone transformations (prime, inversion, retrograde, retrograde-inversion)
#  cf. <https://en.wikipedia.org/wiki/Twelve-tone_technique>
#
prime = [:B3, :Bf3, :G3, :Cs4, :Ef4, :C4, :D4, :A3, :Ff3, :E3, :Af3, :F3]
retrograde = [:F3, :Af3, :E3, :Fs3, :A3, :D4, :C4, :Ef4, :Cs4, :G3, :Bf3, :B3]
inversion = [:B3, :C4, :Ef4, :A3, :G3, :Bf3, :Af3, :Cs4, :E4, :Fs4, :D4, :F4]
retro_invert = [:F4, :D4, :Fs4, :E4, :Cs4, :Af3, :Bf3, :G3, :A3, :Ef4, :C4, :B3]

live_loop :arp do
  use_synth :dpulse
  2.times do
    play_pattern_timed prime, 0.125, release: 0.1
  end
  sleep 0.125
  use_synth :beep
  2.times do
    play_pattern_timed inversion, 0.125, release: 0.1
    play_pattern_timed retrograde, 0.125, release: 0.1
  end
  sleep 0.125
  use_synth :fm
  2.times do
    play_pattern_timed retrograde, 0.125, release: 0.1
  end
  sleep 0.125
  use_synth :blade
  play_pattern_timed retro_invert, 0.125, amp: 4, release: 0.2
  sleep 0.5
end

# with a bass example from the Sonic-Pi tutorial
live_loop :foo do
  sample :loop_garzul
  use_synth :tb303
  play :c3, release: 8, cutoff: rrand(90,130)
  sleep 8
end
