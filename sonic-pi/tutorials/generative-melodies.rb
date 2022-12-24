# Generative melodies
# by Davids Fiddle <https://www.youtube.com/watch?v=9aQc4jEiJWQ&list=PLxJoOXhg8m5LbBzczDCeZ4wzky1K578SS&index=9>

live_loop :melody do
  play (scale :c4, :major,
              num_octaves: 1).choose
  sleep (knit 0.25,1,0.5,10,0.75,1,1,1).choose
end
