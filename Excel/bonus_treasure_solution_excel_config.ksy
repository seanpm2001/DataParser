meta:
  id: bonus_treasure_solution_excel_config
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
  - id: show_image_hash_suffix
    type: aux_types::vlq_base128_le_u
    if: has_field_show_image_hash
  - id: show_image_hash_pre
    type: s1
    if: has_field_show_image_hash
  - id: solution
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_solution
instances:
  has_field_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_show_image_hash: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_solution: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
