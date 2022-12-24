# 2022-09-08: copied from a dj_dave interview on SongPsych
#  cf. <https://www.youtube.com/watch?v=vuSZQnkOB_Y>


use_bpm 103

live_loop :met1 do
  sleep 1
end

define :pattern do |pattern|
  return pattern.ring.tick == "x"
end

kick = "/Users/band/Documents/Music/freesoundSamples/183099__dwsd__bd-bodacious.wav"
kick2 = "/Users/band/Documents/Music/freesoundSamples/183097__dwsd__bd-doitlive.wav"
hhc1 = "/Users/band/Documents/Music/Expansions Selection Library/Samples/Drums/Hihat/ClosedHH Graphite 1.wav"
clap= "/Users/band/Documents/Music/freesoundSamples/24787__young-daddy__clap-mix2.wav"
hhc2 = "/Users/band/Documents/Music/freesoundSamples/547456__tosha73__hi-hat-002.wav"
hhc3 = "/Users/band/Documents/Music/freesoundSamples/547455__tosha73__hi-hat-003.wav"
hho = "/Users/band/Documents/Music/freesoundSamples/565071__ovvcuxs__open-hi-hat-spiryt-2.wav"

live_loop :kick, sync: :met1 do
  a = 2
  ##| sample kick, amp: a if pattern "xx-x-x-xx--x-x-x"
  ##| sample kick, amp: a if pattern "x-xxx-x-xxx-x-xx"
  ##| sample kick2, amp: a if pattern "x-----x---x--x--"
  ##| sample kick2, amp: a if pattern "-xx-x-x---x-x---" # 1-16
  sample kick, amp: 1 if pattern "----x---x-x---x-" # 33-48
  ##| sample kick, amp: a if pattern "x---x-x---x-x---" # 97-112
  sleep 0.25
end

live_loop :clap, sync: :met1 do
  ##| stop
  ##| sleep 1
  ##| sample clap, amp: 5
  sample clap, amp: 2 if pattern "-xx-x-x---x-x---" # 1-16
  sleep 0.5
end

live_loop :hhc, sync: :met1 do
  ##|   ##| sample hhc2 if pattern "x-x-x-x-xxx-x-x-"
  sample hhc2, amp: 2 if pattern "x-x---x-----x-x-" # 17-32
  ##|   sample hhc2 if pattern "--x---x-x-----x-" # 65-80
  sleep 0.125
end

##| live_loop :hho, sync: :met1 do
##|   stop
##|   sleep 0.5
##|   ##| sample hho
##|   sample hho, amp: a if pattern "----x---x-x---x-" # 33-48
##|   sleep 0.5
##| end

live_loop :notes, sync: :met1 do
  use_synth :winwood_lead
  play_pattern_timed (ring 43, 41, 47, 44, 51, 46, 53, 46, 59, 48, 61, 48, 67, 50, 71, 59, 73, 50),[0.25,0.75,1.50,2.25,4.0,6.75]
  sleep 0.125
end
