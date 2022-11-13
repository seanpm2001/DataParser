meta:
  id: enum__monster_security_level
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__monster_security_level:
    seq:
      - id: data
        type: aux_types::vlq_base128_le_s
    instances:
      value:
        value: data.value
        enum: monster_security_level
enums:
  monster_security_level:
    0: normal
    1: elite
    2: boss
