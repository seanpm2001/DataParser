meta:
  id: enum__music_game_param
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__music_game_param:
    seq:
      - id: data
        type: aux_types::vlq_base128_le_u
    instances:
      value:
        value: data.value
        enum: music_game_param
enums:
  music_game_param:
    0: none
    1: time
    2: scene_id
    4: area_id
    8: weather
    16: enemy_count
    32: enemy_distance
    64: quest_id_list
    128: last_user_cue
    256: random
