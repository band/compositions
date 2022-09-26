# 2022-09-26: started from a dj_dave interview on SongPsych
#  cf. <https://www.youtube.com/watch?v=vuSZQnkOB_Y>


use_bpm 97

live_loop :met1 do
  sleep 1
end

define :pattern do |pattern|
  return pattern.ring.tick == "x"
end

kick = "/Users/band/Documents/Music/freesoundSamples/183099__dwsd__bd-bodacious.wav"
kick2 = "/Users/band/Documents/Music/freesoundSamples/183097__dwsd__bd-doitlive.wav"
hhc1 = "/Users/band/Documents/Music/Expansions Selection Library/Samples/Drums/Hihat/ClosedHH Graphite 1.wav"
clap= "/Users/band/Documents/Music/freesoundSamples/509526__synthnisse__claps.wav"
hhc2 = "/Users/band/Documents/Music/freesoundSamples/547456__tosha73__hi-hat-002.wav"
hhc3 = "/Users/band/Documents/Music/freesoundSamples/547455__tosha73__hi-hat-003.wav"
hho = "/Users/band/Documents/Music/freesoundSamples/565071__ovvcuxs__open-hi-hat-spiryt-2.wav"

live_loop :kick, sync: :met1 do
  a = 2
  sample kick, amp: a if pattern "xx-x-x-xx--x-x-x"
  sleep 0.25
end

live_loop :clap, sync: :met1 do
  ##| stop
  ##| sleep 1
  sample clap, amp: 3 if pattern "-x--x----x--x--x"
  sleep 0.25
end

live_loop :melo do
  ##| stop
  use_synth :fm
  play_pattern [:d3, :Cs6, :Eb5], amp: 0.3, release: 4, cutoff: 90
  sleep 0.75
end

live_loop :notes, sync: :met1 do
  use_synth :piano
  play_pattern_timed (ring 43, 41, 47, 44, 51, 46, 53, 46, 59, 48, 61, 48, 67, 50, 71, 59, 73, 50),[0.25,0.75,1.50,2.25,4.0,6.75]
  sleep 0.125
end
