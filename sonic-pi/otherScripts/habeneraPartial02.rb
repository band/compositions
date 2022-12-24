
live_loop :habanera do
  use_synth :fm
  use_transpose -12
  play (ring :d, :r, :r, :a, :f5, :r, :a, :r).tick
  sleep 0.25
end

with_fx :reverb do
  live_loop :space_light do
    with_fx :slicer, phase: [0.125,0.25,0.50,0.75].choose do
      synth :blade, note: :d, release: 8, cutoff: 100, amp: [1,2,3,2,1].tick
    end
    sleep 8
  end
end
