meta:
  id: enum__config_preload_type
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__config_preload_type:
    seq:
      - id: data
        type: aux_types::vlq_base128_le_s
    instances:
      value:
        value: data.value
        enum: config_preload_type
enums:
  config_preload_type:
    0: on_create
    1: on_combat
    2: on_scene_data_notify
