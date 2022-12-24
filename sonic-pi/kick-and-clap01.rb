kick = "/Users/band/Documents/Music/freesoundSamples/183097__dwsd__bd-doitlive.wav"
live_loop :d1 do
  sample kick, cutoff: 130
  sleep 0.5
end

live_loop :d2 do
  sample :bd_haus, rate: 1
  sleep 0.5
end

in_thread do
  sleep 0.25
  loop do
    sample :drum_cymbal_closed
    sleep 0.5
  end
end

in_thread do
  loop do
    sample :drum_cymbal_open, amp: 0.3, cutoff: 100
    sleep 4
  end
end

clap="/Users/band/Documents/Music/freesoundSamples/24787__young-daddy__clap-mix2.wav"
in_thread do
  sleep 3.9
  loop do
    sample clap, amp: 3, cutoff: 90
    sleep 4
  end
end
