meta:
  id: enum__mixin_targetting
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__mixin_targetting:
    seq:
      - id: data
        type: aux_types::vlq_base128_le_s
    instances:
      value:
        value: data.value
        enum: mixin_targetting
enums:
  mixin_targetting:
    0: none
    1: allied
    2: enemy
    3: all
