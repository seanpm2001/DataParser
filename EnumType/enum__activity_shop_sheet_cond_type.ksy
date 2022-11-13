meta:
  id: enum__activity_shop_sheet_cond_type
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__activity_shop_sheet_cond_type:
    seq:
      - id: data
        type: aux_types::vlq_base128_le_s
    instances:
      value:
        value: data.value
        enum: activity_shop_sheet_cond_type
enums:
  activity_shop_sheet_cond_type:
    0: activity_shop_sheet_cond_none
    1: activity_shop_sheet_cond_quest_finish
    2: activity_shop_sheet_cond_time_equal_greater
    3: activity_shop_sheet_cond_sea_lamp_phase
