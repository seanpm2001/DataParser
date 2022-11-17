meta:
  id: tower_buff_excel_config
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../aux_types
    - ../EnumType/enum__tower_buff_lasting_type
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: tower_buff_id
    type: aux_types::vlq_base128_le_u
    if: has_field_tower_buff_id
  - id: lasting_type
    type: enum__tower_buff_lasting_type
    if: has_field_lasting_type
  - id: desc
    type: aux_types::vlq_base128_le_u
    if: has_field_desc
  - id: buff_icon
    type: aux_types::string
    if: has_field_buff_icon
  - id: buff_id
    type: aux_types::vlq_base128_le_u
    if: has_field_buff_id
instances:
  has_field_tower_buff_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_lasting_type: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_desc: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_buff_icon: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_buff_id: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
