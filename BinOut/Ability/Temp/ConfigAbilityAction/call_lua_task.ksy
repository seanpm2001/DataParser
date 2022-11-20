meta:
  id: call_lua_task
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../config_ability_action
    - ../../../../aux_types
seq:
  - id: base
    type: config_ability_action
  - id: bit_field
    type: u1
  - id: target_alias
    type: aux_types::string
    if: has_field_target_alias
  - id: value_int
    type: aux_types::vlq_base128_le_s
    if: has_field_value_int
  - id: value_float
    type: f4
    if: has_field_value_float
  - id: value_string
    type: aux_types::string
    if: has_field_value_string
instances:
  has_field_target_alias: # Field №0
    value: (bit_field & 0b0001) != 0
  has_field_value_int: # Field №1
    value: (bit_field & 0b0010) != 0
  has_field_value_float: # Field №2
    value: (bit_field & 0b0100) != 0
  has_field_value_string: # Field №3
    value: (bit_field & 0b1000) != 0
  # Base class fields
  token:
    value: base.token
  target:
    value: base.target
  other_targets:
    value: base.other_targets
  do_off_stage:
    value: base.do_off_stage
  do_after_die:
    value: base.do_after_die
  can_be_handled_on_recover:
    value: base.can_be_handled_on_recover
  mute_remote_action:
    value: base.mute_remote_action
  predicates:
    value: base.predicates
  predicates_foreach:
    value: base.predicates_foreach
