meta:
  id: enum__combat_billboard_size
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__combat_billboard_size:
    seq:
      - id: data
        type: aux_types::vlq_base128_le_s
    instances:
      value:
        value: data.value
        enum: combat_billboard_size
enums:
  combat_billboard_size:
    0: normal
    1: big
    2: grand
    3: small
