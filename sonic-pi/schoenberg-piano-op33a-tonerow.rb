# Schoenberg - Piano Piece op.33a tone row
# .cf <https://en.wikipedia.org/wiki/Twelve-tone_technique>

use_bpm 60
use_synth_defaults release: 0.5, amp: 0.7, cutoff: 90
use_synth :piano

in_thread do
  play_pattern_timed [:Bf3, :F3, :C4, :B3],[0.25] #p1_a
  play_pattern_timed [:A3, :Fs3, :Cs4, :Ds4],[0.25] #p1_b
  play_pattern_timed [:G3, :A3, :D4, :E4],[0.25] #p1_c
end
in_thread do
  play_pattern_timed [:Ds4, :Gs3, :Cs4, :D4],[0.25] #i6_a
  play_pattern_timed [:E4, :G3, :C4, :Bf3],[0.25] #i6_b
  play_pattern_timed [:Fs3, :F3, :B3, :A3],[0.25] #i6_c
end
