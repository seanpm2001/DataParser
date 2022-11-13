meta:
  id: enum__ornaments_type
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__ornaments_type:
    seq:
      - id: data
        type: aux_types::vlq_base128_le_s
    instances:
      value:
        value: data.value
        enum: ornaments_type
enums:
  ornaments_type:
    0: none
    1: fly
