meta:
  id: enum__config_weather_type
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__config_weather_type:
    seq:
      - id: data
        type: aux_types::vlq_base128_le_s
    instances:
      value:
        value: data.value
        enum: config_weather_type
enums:
  config_weather_type:
    0: clear_sky
    1: cloudy
    2: foggy
    3: rain
    4: snow
    5: storm
    6: skill
