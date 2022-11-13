meta:
  id: enum__custom_gadget_node_slot_type
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__custom_gadget_node_slot_type:
    seq:
      - id: data
        type: aux_types::vlq_base128_le_s
    instances:
      value:
        value: data.value
        enum: custom_gadget_node_slot_type
enums:
  custom_gadget_node_slot_type:
    0: default
    1: furniture
