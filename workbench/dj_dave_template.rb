# the baseline sonic-pi template used by dj_dave
# cf. <https://www.youtube.com/watch?v=vuSZQnkOB_Y>

use_bpm 130

live_loop :met1 do
  sleep 1
end

define :pattern do |pattern|
  return pattern.ring.tick == "x"
end

kick = "/Users/sarah/Desktop/dj_dave/samples/kisses/kick.wav"
kick2 = "/Users/sarah/Desktop/dj_dave/samples/kisses/kick2.wav"
hhc1 = "/Users/sarah/Desktop/dj_dave/samples/kisses/hhc1.wav"
clap = "/Users/sarah/Desktop/dj_dave/samples/kisses/clap.wav"
hhc2 = "/Users/sarah/Desktop/dj_dave/samples/kisses/hhc2.wav"
hhc3 = "/Users/sarah/Desktop/dj_dave/samples/kisses/hhc3.wav"
hho = "/Users/sarah/Desktop/dj_dave/samples/kisses/hho.wav"

