# levels-live
this is the live song for avicii performed live
<br/>

```
use_bpm 65
######

##| live_loop :measure do
##|   sleep 4
##| end
##| sync :measure
#----------------------------------------------------------
##| live_loop :levels_bass do
##|   play :A2 ,attack_level: 100 #amp:4
##|   sleep 0.5 #1 , 0.5
##| end
#Melody-----------------------------------------------------------








#[1]

## Levels rythm

##| live_loop :levels_chords do
##|   play chord(:Db5 , :minor)
##|   sleep 1
##|   play chord(:E5 , :major)
##|   sleep 1
##|   play chord(:B4 , :major)
##|   sleep 0.75
##|   play chord(:A4 , :major)
##|   sleep 1.25
##| end

# Melody
#[3]
#ixi techno
##| live_loop :levels_melody do

##|   use_synth :chiplead
##|   play :Gb4
##|   sleep 0.25
##|   play :E4
##|   sleep 0.25
##|   play :E4
##|   sleep 0.5
##|   play :E4
##|   sleep 0.25
##|   play :E4
##|   sleep 0.25
##|   play :E4
##|   sleep 0.25
##|   play :E4
##|   sleep 0.25
##|   play :Eb4
##|   sleep 0.25
##|   play :Eb4
##|   sleep 0.25
##|   play :Eb4
##|   sleep 0.25
##|   play :E4
##|   sleep 0.5
##|   play :B4
##|   sleep 0.25
##|   play :Ab4
##|   sleep 0.25
##|   play :Gb4
##|   sleep 0.25
##| end








#Harmony---------------------------------------------------------


#[2]
#Levels Harmony

##| use_synth :fm
##| live_loop :levels_harmony do
##|   play :Gb4
##|   sleep 1
##|   play :E4
##|   sleep 1
##|   play :Eb4
##|   sleep 0.75
##|   play :E4
##|   sleep 1.25
##|   play :B4
##|   sleep 1
##|   play :Ab4
##|   sleep 1
##|   play :Gb4
##|   sleep 0.75
##|   play :E4
##|   sleep 1.25
##| end













##################################################################
#[0]
##| live_loop :moon do
##|   sample :ambi_lunar_land
##|   sleep 2.5
##| end



# [4]
#Hi hat here

##| live_loop :hihat do
##|   sleep 0.5
##|   sample :drum_snare_hard ,amp: 1
##|   sleep 0.5
##| end

######################################################################


# [5]
##| 8.times do
##|   with_fx :distortion do
##|     use_synth :fm
##|     sleep 0.5
##|     play :E4
##|     sleep 0.25
##|     play :Ab4
##|     sleep 0.25
##|     play :B4
##|     sleep 0.25
##|     play :Db5
##|     sleep 3
##|   end
##| end


# [6]
# Nights Melody

live_loop :Nights_Melody do
  use_synth :fm
  sleep 0.25
  play :E4
  sleep 0.25
  play :Ab4
  sleep 0.25
  play :B4
  sleep 0.25
  play :Db5
  sleep 0.25
  play :B4
  sleep 0.50
  play :Ab4
  sleep 1.25
  
  
  sleep 0.25
  play :Ab4
  sleep 0.25
  play :Ab4
  sleep 0.25
  play :E4
  sleep 0.25
  play :Gb4
  sleep 0.75
  play :E4
  sleep 0.25
  play :Gb4
  sleep 0.75
  play :E4
  sleep 0.25
  play :Ab4
  sleep 0.25
  play :B4
  sleep 0.75
end


```
by **Aryan Kathawale**  . 