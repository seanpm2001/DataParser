meta:
  id: enum__circle_detect_direction
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__circle_detect_direction:
    seq:
      - id: data
        type: aux_types::vlq_base128_le_s
    instances:
      value:
        value: data.value
        enum: circle_detect_direction
enums:
  circle_detect_direction:
    0: center_to_side
    1: clockwise
    2: counterclockwise
