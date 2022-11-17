meta:
  id: expedition_path_excel_config
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../aux_types
    - ../ArrayType/array_of__aux_types__vlq_base128_le_u__length_u
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: id
    type: aux_types::vlq_base128_le_u
    if: has_field_id
  - id: difficulty_id
    type: aux_types::vlq_base128_le_u
    if: has_field_difficulty_id
  - id: super_element
    type: aux_types::string
    if: has_field_super_element
  - id: basic_reward_id
    type: aux_types::vlq_base128_le_u
    if: has_field_basic_reward_id
  - id: bonus_reward_id
    type: aux_types::vlq_base128_le_u
    if: has_field_bonus_reward_id
  - id: path_name
    type: aux_types::vlq_base128_le_u
    if: has_field_path_name
  - id: path_desc
    type: aux_types::vlq_base128_le_u
    if: has_field_path_desc
  - id: level_reward_list
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_level_reward_list
  - id: reward_preview_id
    type: aux_types::vlq_base128_le_u
    if: has_field_reward_preview_id
instances:
  has_field_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_difficulty_id: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_super_element: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_basic_reward_id: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_bonus_reward_id: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_path_name: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
  has_field_path_desc: # Field №6
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
  has_field_level_reward_list: # Field №7
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b10000000) != 0)
  has_field_reward_preview_id: # Field №8
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000001) != 0)
