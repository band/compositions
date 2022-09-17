# the baseline sonic-pi template used by dj_dave
# cf. <https://www.youtube.com/watch?v=vuSZQnkOB_Y>

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

# some prime number patterns

##| "-xx-x-x---x-x---" # 1-16
##| "x-x---x-----x-x-" # 17-32
##| "-----x---x-x---x-" # 33-48
##| "----x-----x-x---" # 49-64
##| "--x---x-x-----x-" # 65-80
##| "--x-----x-------" # 81-96
##| "x---x-x---x-x---" # 97-112
