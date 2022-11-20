meta:
  id: attach_to_element_type_mixin
  endian: le
  license: GPL
  imports:
    - ../config_ability_mixin
    - ../../../../aux_types
    - ../../../../ArrayType/array_of__enum__element_type__length_u
seq:
  - id: base
    type: config_ability_mixin
  - id: bit_field
    type: u1
  - id: element_types
    type: array_of__enum__element_type__length_u
    if: has_field_element_types
  - id: reject
    type: u1
    if: has_field_reject
  - id: modifier_name
    type: aux_types::string
    if: has_field_modifier_name
instances:
  has_field_element_types: # Field №0
    value: (bit_field & 0b001) != 0
  has_field_reject: # Field №1
    value: (bit_field & 0b010) != 0
  has_field_modifier_name: # Field №2
    value: (bit_field & 0b100) != 0
  # Base class fields
  is_unique:
    value: base.is_unique
