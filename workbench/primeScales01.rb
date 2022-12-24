# 2022-09-05 melodies?, no, chords, mostly noise
# 2022-09-12 prime melodies(?), played at prime time intervals (is this right?)

use_bpm 120
##| use_synth_defaults release: 0.5, amp: 0.7

use_synth :piano
in_thread do
  play_pattern_timed (ring 43, 41, 47, 44, 51, 46, 53, 46, 59, 48, 61, 48, 67, 50, 71, 59, 73, 50),[0.25,0.75,1.50,2.25,4.0,6.75]
end
in_thread do
  sleep 0.25
  play_pattern_timed (ring 51, 50, 53, 50, 59, 55, 61, 54, 67, 56, 71, 58, 73, 56, 79, 68, 83, 60).reverse,[6.75,4.0,2.25,1.5,0.75,0.25]
end

##| 3.times do
##|   in_thread do
##|     play_pattern_timed (ring 43, 41, 47, 44, 51, 46, 53, 46, 59, 48, 61, 48, 67, 50, 71, 59, 73, 50).shuffle,[0.25,0.50,0.75,1.25,1.75]
##|   end
##|   in_thread do
##|     play_pattern_timed (ring 47, 45, 51, 48, 53, 48, 59, 52, 61, 50, 67, 54, 71, 56, 73, 62, 79, 56),[0.25,0.25,0.25]
##|   end
##|   in_thread do
##|     play_pattern_timed (ring 51, 50, 53, 50, 59, 55, 61, 54, 67, 56, 71, 58, 73, 56, 79, 68, 83, 60).shuffle,[0.25,0.25,0.25]
##|   end
##|   in_thread do
##|     play_pattern_timed (ring 53, 51, 59, 56, 61, 56, 67, 60, 71, 60, 73, 60, 79, 62, 83, 72, 89, 66),[0.25,0.25,0.25]
##|   end
##| end
