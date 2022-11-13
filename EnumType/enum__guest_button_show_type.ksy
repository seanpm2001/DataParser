meta:
  id: enum__guest_button_show_type
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__guest_button_show_type:
    seq:
      - id: data
        type: aux_types::vlq_base128_le_s
    instances:
      value:
        value: data.value
        enum: guest_button_show_type
enums:
  guest_button_show_type:
    0: hide
    1: grap
