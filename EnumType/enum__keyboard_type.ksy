meta:
  id: enum__keyboard_type
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__keyboard_type:
    seq:
      - id: data
        type: aux_types::vlq_base128_le_s
    instances:
      value:
        value: data.value
        enum: keyboard_type
enums:
  keyboard_type:
    0: invalid
    1033: en
    1036: fr
    1031: de
