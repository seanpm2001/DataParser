meta:
  id: enum__view_cache_type
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__view_cache_type:
    seq:
      - id: data
        type: aux_types::vlq_base128_le_s
    instances:
      value:
        value: data.value
        enum: view_cache_type
enums:
  view_cache_type:
    0: lru_cached
    1: always_cached
    2: dont_cache
