# 2022-09-08: copied from a dj_dave interview on SongPsych
#  cf. <https://www.youtube.com/watch?v=vuSZQnkOB_Y>

# TODO: find some better samples


use_bpm 130

live_loop :met1 do
  sleep 1
end

define :pattern do |pattern|
  return pattern.ring.tick == "x"
end

kick = "/Users/band/Documents//Music/Expansions Selection Library/Samples/Drums/Kick/Kick Chomp 1.wav"
kick2 = "/Users/band/Documents//Music/Expansions Selection Library/Samples/Drums/Kick/Kick Bulldog 2.wav"
hhc1 = "/Users/band/Documents//Music/Expansions Selection Library/Samples/Drums/Hihat/ClosedHH Graphite 1.wav"
clap= "/Users/band/Documents/Music/Expansions Selection Library/Samples/Drums/Clap/Clap SouthTown.wav"
hhc2 = "/Users/band/Documents//Music/Expansions Selection Library/Samples/Drums/Hihat/ClosedHH Chomp 2.wav"
hhc3 = "/Users/band/Documents//Music/Expansions Selection Library/Samples/Drums/Hihat/ClosedHH Astral.wav"
hho = "/Users/band/Documents//Music/Expansions Selection Library/Samples/Drums/Hihat/OpenHH Analie.wav"

live_loop :kick, sync: :met1 do
  a = 3
  sample kick, amp: a if pattern "x-----x---x--x--"
  sleep 0.25
end

live_loop :clap, sync: :met1 do
  ##| stop
  sleep 1
  sample clap, amp: 2
  sleep 1
end

live_loop :hhc, sync: :met1 do
  sample hhc2 if pattern "x-x-x-x-xxx-x-x-"
  sleep 0.125
end

live_loop :hho, sync: :met1 do
  ##| stop
  sleep 0.5
  sample hho
  sleep 0.5
end


