meta:
  id: enum__team_type
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__team_type:
    seq:
      - id: data
        type: aux_types::vlq_base128_le_s
    instances:
      value:
        value: data.value
        enum: team_type
enums:
  team_type:
    0: cur_team
    1: big_team
