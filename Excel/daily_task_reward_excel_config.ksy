meta:
  id: daily_task_reward_excel_config
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../aux_types
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: id
    type: aux_types::vlq_base128_le_u
    if: has_field_id
  - id: drop_vec
    type: array_of__daily_task_drop_config__length_s
    if: has_field_drop_vec
instances:
  has_field_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_drop_vec: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
types:
  array_of__daily_task_drop_config__length_s:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_s
      - id: data
        type: daily_task_drop_config
        repeat: expr
        repeat-expr: length.value
  daily_task_drop_config:
    seq:
      - id: bit_field
        type: aux_types::length_prefixed_bitfield
      - id: drop_id
        type: aux_types::vlq_base128_le_u
        if: has_field_drop_id
      - id: preview_reward_id
        type: aux_types::vlq_base128_le_u
        if: has_field_preview_reward_id
    instances:
      has_field_drop_id: # Field №0
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
      has_field_preview_reward_id: # Field №1
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)