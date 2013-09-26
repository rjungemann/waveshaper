#define SAMPLE_RATE 44 // 44.1kHz sample rate
#define ADCS 2 // use both ADCs

#define NUM_WAVETABLES 8
#define WAVETABLE_0_LENGTH 1200
#define WAVETABLE_1_LENGTH 1200
#define WAVETABLE_2_LENGTH 1200
#define WAVETABLE_3_LENGTH 1200
#define WAVETABLE_4_LENGTH 1200
#define WAVETABLE_5_LENGTH 1200
#define WAVETABLE_6_LENGTH 1200
#define WAVETABLE_7_LENGTH 1200

#define getWavetableValue(in, table, len) table[ ((in + 32768) * len) / 65536 ]

#include <AudioCodec_Maple.h>

int16 wavetable_0[] __FLASH__ = {
  #include </Users/rjungemann/Documents/MapleIDE/waveshaper/incs/AKWF_hvoice/AKWF_hvoice_0001.inc>
};

int16 wavetable_1[] __FLASH__ = {
  #include </Users/rjungemann/Documents/MapleIDE/waveshaper/incs/AKWF_hvoice/AKWF_hvoice_0002.inc>
};

int16 wavetable_2[] __FLASH__ = {
  #include </Users/rjungemann/Documents/MapleIDE/waveshaper/incs/AKWF_hvoice/AKWF_hvoice_0003.inc>
};

int16 wavetable_3[] __FLASH__ = {
  #include </Users/rjungemann/Documents/MapleIDE/waveshaper/incs/AKWF_hvoice/AKWF_hvoice_0004.inc>
};

int16 wavetable_4[] __FLASH__ = {
  #include </Users/rjungemann/Documents/MapleIDE/waveshaper/incs/AKWF_hvoice/AKWF_hvoice_0005.inc>
};

int16 wavetable_5[] __FLASH__ = {
  #include </Users/rjungemann/Documents/MapleIDE/waveshaper/incs/AKWF_hvoice/AKWF_hvoice_0006.inc>
};

int16 wavetable_6[] __FLASH__ = {
  #include </Users/rjungemann/Documents/MapleIDE/waveshaper/incs/AKWF_hvoice/AKWF_hvoice_0007.inc>
};

int16 wavetable_7[] __FLASH__ = {
  #include </Users/rjungemann/Documents/MapleIDE/waveshaper/incs/AKWF_hvoice/AKWF_hvoice_0008.inc>
};

// audio channel data
int16 left_in = 0;
int16 right_in = 0;
int16 left_out = 0;
int16 right_out = 0;

// dial values
uint16 mod0_value = 0;
uint16 mod1_value = 0;

void setup() {
  SerialUSB.end();
  
  AudioCodec_init();
}

void loop() {
  while(1);
}

void AudioCodec_interrupt() {
  AudioCodec_data(&left_in, &right_in, left_out, right_out);
  AudioCodec_ADC(&mod0_value, &mod1_value);
  
  uint16 wavetableIndex = (mod0_value * NUM_WAVETABLES) / 65536;
  int16 wavetableValueI;
  int16 wavetableValueJ;
  
  switch(wavetableIndex) {
    case 0:
      wavetableValueI = getWavetableValue(right_in, wavetable_0, WAVETABLE_0_LENGTH);
      wavetableValueJ = getWavetableValue(left_in, wavetable_0, WAVETABLE_0_LENGTH);
      break;
    case 1:
      wavetableValueI = getWavetableValue(right_in, wavetable_1, WAVETABLE_1_LENGTH);
      wavetableValueJ = getWavetableValue(left_in, wavetable_1, WAVETABLE_1_LENGTH);
      break;
    case 2:
      wavetableValueI = getWavetableValue(right_in, wavetable_2, WAVETABLE_2_LENGTH);
      wavetableValueJ = getWavetableValue(left_in, wavetable_2, WAVETABLE_2_LENGTH);
      break;
    case 3:
      wavetableValueI = getWavetableValue(right_in, wavetable_3, WAVETABLE_3_LENGTH);
      wavetableValueJ = getWavetableValue(left_in, wavetable_3, WAVETABLE_3_LENGTH);
    case 4:
      wavetableValueI = getWavetableValue(right_in, wavetable_4, WAVETABLE_4_LENGTH);
      wavetableValueJ = getWavetableValue(left_in, wavetable_4, WAVETABLE_4_LENGTH);
      break;
    case 5:
      wavetableValueI = getWavetableValue(right_in, wavetable_5, WAVETABLE_5_LENGTH);
      wavetableValueJ = getWavetableValue(left_in, wavetable_5, WAVETABLE_5_LENGTH);
      break;
    case 6:
      wavetableValueI = getWavetableValue(right_in, wavetable_6, WAVETABLE_6_LENGTH);
      wavetableValueJ = getWavetableValue(left_in, wavetable_6, WAVETABLE_6_LENGTH);
      break;
    case 7:
      wavetableValueI = getWavetableValue(right_in, wavetable_7, WAVETABLE_7_LENGTH);
      wavetableValueJ = getWavetableValue(left_in, wavetable_7, WAVETABLE_7_LENGTH);
  }
  
  int16 scaledValueI = (mod1_value * wavetableValueI) / 65536;
  int16 scaledValueJ = (mod1_value * wavetableValueJ) / 65536;

  left_out = scaledValueI;
  right_out = scaledValueJ;
}

