# Danny Carroll live_coding demo
#   cf. <https://www.youtube.com/watch?v=hU4RmI5EUzw>

use_bpm 113

with_fx :lpf, cutoff: rrand(60,120) do
  live_loop :shakers do
    sample "/Users/band/Documents/Music/Expansions Selection Library/Samples/Drums/Shaker/Shaker Sapphire.wav", amp: 4
    sleep 32
  end
end

live_loop :offhat do
  sample "/Users/band/Documents/Music/freesoundSamples/45668__pjcohen__zildjian-a-custom-hi-hat-cymbals-pedal-chic.wav", amp: 8
  sleep 32
end

live_loop :clap do
  sample "/Users/band/Documents/Music/freesoundSamples/509526__synthnisse__claps.wav", amp: 2
  sleep 32
end

live_loop :snare do
  sample "/Users/band/Documents/Music/Expansions Selection Library/Samples/Drums/Snare/Snare Sapphire.wav", amp: 2
  sleep 32
end

with_fx :compressor do
  with_fx :lpf, cutoff: 100 do
    live_loop :kick do
      sample :bd_ada, amp: 4
      sleep 1
    end
  end
end

live_loop :synth do
  use_synth :hollow
  play_pattern_timed chord(:b3, :m9), 0.75, amp: 8, cutoff: rrand(70,120)
end

with_fx :reverb do
  live_loop :chord do
    use_synth :pretty_bell
    play chord(:b3, :m9), amp: 2, cutoff: rrand(60,120)
    sleep 4
  end
end

live_loop :ambient do
  use_synth :prophet
  play chord(:e3, :m9), amp: 3, release: 8, cutoff: rrand(60,120)
  sleep 8
end

