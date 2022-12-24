# Fade in
# by Davids Fiddle <https://www.youtube.com/watch?v=fiWlDLS3-m8>

amp_kik = (ramp *(range 0,1,0.1))

live_loop :kik do
  sample :drum_bass_hard, amp: (ramp *(range 0,1,0.1)).mirror.tick
  sleep 0.5
end

# TODO: sub sample with :ambi_glass_rub
