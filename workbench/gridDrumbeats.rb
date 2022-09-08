# cf. <https://www.youtube.com/watch?v=RaJZho7p2Y4>

use_bpm 98

a = [1,0,1,0,2,0,0,0,1,0,0,0,2,1,0,0]

live_loop :drum1 do
  16.times do |i|
    sample :bd_haus if a[i] == 1
    sample :sn_zome if a[i] == 2
    sleep 0.25
  end
end

b = [1,1,1,2,1,0,1,0,1,0,1,1,2,1,0,1]

live_loop :drum2 do
  16.times do |i|
    sample :drum_cymbal_closed if b[i] == 1
    sample :drum_cymbal_pedal if b[i] == 2
    sleep 0.25
  end
end
