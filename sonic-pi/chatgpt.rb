use_bpm 30

define :chorda do |root, type|
  case type
  when "major"
    [root, root+4, root+7]
  when "minor"
    [root, root+3, root+7]
  end
end

define :play_chorda do |root, type|
  play_pattern_timed chorda(root, type), 0.5
end

live_loop :chords do
  use_synth :piano
  with_fx :reverb, room: 0.5 do
    play_chorda :c3, "minor"
    play_chorda :f3, "minor"
    play_chorda :c3, "minor"
    play_chorda :g3, "major"
  end
end

live_loop :melody do
  use_synth :sine
  with_fx :reverb, room: 0.5 do
    play_pattern_timed [:c4, :f4, :c4, :g4, :c5, :f4, :c4, :e4], 0.25
  end
end