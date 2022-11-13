meta:
  id: enum__material_expire_type
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__material_expire_type:
    seq:
      - id: data
        type: aux_types::vlq_base128_le_s
    instances:
      value:
        value: data.value
        enum: material_expire_type
enums:
  material_expire_type:
    1: count_down
    2: date_time
    3: delay_week_count_down
