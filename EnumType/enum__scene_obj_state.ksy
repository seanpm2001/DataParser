meta:
  id: enum__scene_obj_state
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__scene_obj_state:
    seq:
      - id: data
        type: aux_types::vlq_base128_le_s
    instances:
      value:
        value: data.value
        enum: scene_obj_state
enums:
  scene_obj_state:
    0: normal
    1: burning
    2: burned
    3: cut
    4: frozen
    5: melt
