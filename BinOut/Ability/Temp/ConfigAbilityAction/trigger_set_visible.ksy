meta:
  id: trigger_set_visible
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../config_ability_action
seq:
  - id: base
    type: config_ability_action
  - id: bit_field
    type: u1
  - id: visible
    type: u1
    if: has_field_visible
instances:
  has_field_visible: # Field №0
    value: (bit_field & 0b1) != 0
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
