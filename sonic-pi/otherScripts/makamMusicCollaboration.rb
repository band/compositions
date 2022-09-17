# Makam Music Collaboration
#  cf. <https://www.youtube.com/watch?v=R8xL1z66D8c>

hicaz = scale(:b2, :hicaz)
melody = [hicaz[0],0,0,hicaz[4],0,0,hicaz[3],0,hicaz[2],0,0,hicaz[3],0,0,hicaz[1],0]
vol = 0.75

live_loop :beat do
  if (spread 1,8).tick then
    sample :drum_heavy_kick, amp: vol
  end
  sleep 0.25
end

live_loop :base, sync: :beat do
  if (spread 1,8).tick then
    with_synth :fm do
      play :b1, amp: vol, release: 4
    end
  end
  sleep 0.25
end

live_loop :atmo, sync: :beat do
  if (spread 2,8).tick then
    with_fx :reverb do
      with_fx :echo do
        with_synth :prophet do
          play :b2, amp: vol * 0.5, release: 2
        end
      end
    end
  end
  sleep 0.25
end

live_loop :snare, sync: :beat do
  if (spread 3,8).tick then
    with_fx :echo, phase: 0.125, mix: 0 do
      sample :drum_snare_hard, amp: vol * 0.5
    end
  end
  sleep 0.25
end

live_loop :extra, sync: :beat do
  if (spread 2,8).tick then
    with_fx :reverb do
      with_fx :wobble, phase: 4, mix: 0.5 do
        with_synth :zawa do
          play :b3, amp: vol * 0.1, release: 4
        end
      end
    end
  end
  sleep 0.25
end

live_loop :upper, sync: :beat do
  with_fx :reverb do
    with_fx :echo, mix: 0.25 do
      with_synth :saw do
        scale(:b3, :hicaz).each do |i|
          play i, amp: vol * 0.75, cutoff: rrand(60,120), release: 1
          sleep 1
        end
      end
    end
  end
end

live_loop :lower, sync: :beat do
  with_fx :reverb do
    with_fx :echo, mix: 0.25 do
      with_synth :saw do
        scale(:b3, :hicaz).reverse.each do |i|
          play i, amp: vol * 0.75, cutoff: rrand(60,120), release: 1
          sleep 1
        end
      end
    end
  end
end

live_loop :melody, sync: :beat do
  melody.each do |i|
    with_synth :tb303 do
      play i, amp: vol * 0.5, cutoff: rrand(60, 120)
      sleep 0.25
    end
  end
end
