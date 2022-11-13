meta:
  id: enum__indicator_distance_info_type
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__indicator_distance_info_type:
    seq:
      - id: data
        type: aux_types::vlq_base128_le_s
    instances:
      value:
        value: data.value
        enum: indicator_distance_info_type
enums:
  indicator_distance_info_type:
    0: none
    1: to_avatar
    2: remaining_distance
