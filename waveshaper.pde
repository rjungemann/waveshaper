#define SAMPLE_RATE 44 // 44.1kHz sample rate
#define ADCS 2 // use both ADCs

#define NUM_WAVETABLES 64
#define WAVETABLE_0_LENGTH 1200
#define WAVETABLE_1_LENGTH 1200
#define WAVETABLE_2_LENGTH 1200
#define WAVETABLE_3_LENGTH 1200
#define WAVETABLE_4_LENGTH 1200
#define WAVETABLE_5_LENGTH 1200
#define WAVETABLE_6_LENGTH 1200
#define WAVETABLE_7_LENGTH 1200
#define WAVETABLE_8_LENGTH 1200
#define WAVETABLE_9_LENGTH 1200
#define WAVETABLE_10_LENGTH 1200
#define WAVETABLE_11_LENGTH 1200
#define WAVETABLE_12_LENGTH 1200
#define WAVETABLE_13_LENGTH 1200
#define WAVETABLE_14_LENGTH 1200
#define WAVETABLE_15_LENGTH 1200
#define WAVETABLE_16_LENGTH 1200
#define WAVETABLE_17_LENGTH 1200
#define WAVETABLE_18_LENGTH 1200
#define WAVETABLE_19_LENGTH 1200
#define WAVETABLE_20_LENGTH 1200
#define WAVETABLE_21_LENGTH 1200
#define WAVETABLE_22_LENGTH 1200
#define WAVETABLE_23_LENGTH 1200
#define WAVETABLE_24_LENGTH 1200
#define WAVETABLE_25_LENGTH 1200
#define WAVETABLE_26_LENGTH 1200
#define WAVETABLE_27_LENGTH 1200
#define WAVETABLE_28_LENGTH 1200
#define WAVETABLE_29_LENGTH 1200
#define WAVETABLE_30_LENGTH 1200
#define WAVETABLE_31_LENGTH 1200
#define WAVETABLE_32_LENGTH 1200
#define WAVETABLE_33_LENGTH 1200
#define WAVETABLE_34_LENGTH 1200
#define WAVETABLE_35_LENGTH 1200
#define WAVETABLE_36_LENGTH 1200
#define WAVETABLE_37_LENGTH 1200
#define WAVETABLE_38_LENGTH 1200
#define WAVETABLE_39_LENGTH 1200
#define WAVETABLE_40_LENGTH 1200
#define WAVETABLE_41_LENGTH 1200
#define WAVETABLE_42_LENGTH 1200
#define WAVETABLE_43_LENGTH 1200
#define WAVETABLE_44_LENGTH 1200
#define WAVETABLE_45_LENGTH 1200
#define WAVETABLE_46_LENGTH 1200
#define WAVETABLE_47_LENGTH 1200
#define WAVETABLE_48_LENGTH 1200
#define WAVETABLE_49_LENGTH 1200
#define WAVETABLE_50_LENGTH 1200
#define WAVETABLE_51_LENGTH 1200
#define WAVETABLE_52_LENGTH 1200
#define WAVETABLE_53_LENGTH 1200
#define WAVETABLE_54_LENGTH 1200
#define WAVETABLE_55_LENGTH 1200
#define WAVETABLE_56_LENGTH 1200
#define WAVETABLE_57_LENGTH 1200
#define WAVETABLE_58_LENGTH 1200
#define WAVETABLE_59_LENGTH 1200
#define WAVETABLE_60_LENGTH 1200
#define WAVETABLE_61_LENGTH 1200
#define WAVETABLE_62_LENGTH 1200
#define WAVETABLE_63_LENGTH 1200

#define getWavetableValue(in, table, len) table[ ((in + 32768) * len) / 65536 ]

#include <AudioCodec_Maple.h>

uint16 wavetable_0[] __FLASH__ = {
  #include </Users/rjungemann/Documents/MapleIDE/waveshaper/incs/AKWF_vgtri_0016.inc>
};
uint16 wavetable_1[] __FLASH__ = {
  #include </Users/rjungemann/Documents/MapleIDE/waveshaper/incs/AKWF_vgtri_0015.inc>
};
uint16 wavetable_2[] __FLASH__ = {
  #include </Users/rjungemann/Documents/MapleIDE/waveshaper/incs/AKWF_vgtri_0014.inc>
};
uint16 wavetable_3[] __FLASH__ = {
  #include </Users/rjungemann/Documents/MapleIDE/waveshaper/incs/AKWF_vgtri_0013.inc>
};
uint16 wavetable_4[] __FLASH__ = {
  #include </Users/rjungemann/Documents/MapleIDE/waveshaper/incs/AKWF_vgtri_0012.inc>
};
uint16 wavetable_5[] __FLASH__ = {
  #include </Users/rjungemann/Documents/MapleIDE/waveshaper/incs/AKWF_vgtri_0011.inc>
};
uint16 wavetable_6[] __FLASH__ = {
  #include </Users/rjungemann/Documents/MapleIDE/waveshaper/incs/AKWF_vgtri_0010.inc>
};
uint16 wavetable_7[] __FLASH__ = {
  #include </Users/rjungemann/Documents/MapleIDE/waveshaper/incs/AKWF_vgtri_0009.inc>
};
uint16 wavetable_8[] __FLASH__ = {
  #include </Users/rjungemann/Documents/MapleIDE/waveshaper/incs/AKWF_vgtri_0008.inc>
};
uint16 wavetable_9[] __FLASH__ = {
  #include </Users/rjungemann/Documents/MapleIDE/waveshaper/incs/AKWF_vgtri_0007.inc>
};
uint16 wavetable_10[] __FLASH__ = {
  #include </Users/rjungemann/Documents/MapleIDE/waveshaper/incs/AKWF_vgtri_0006.inc>
};
uint16 wavetable_11[] __FLASH__ = {
  #include </Users/rjungemann/Documents/MapleIDE/waveshaper/incs/AKWF_vgtri_0005.inc>
};
uint16 wavetable_12[] __FLASH__ = {
  #include </Users/rjungemann/Documents/MapleIDE/waveshaper/incs/AKWF_vgtri_0004.inc>
};
uint16 wavetable_13[] __FLASH__ = {
  #include </Users/rjungemann/Documents/MapleIDE/waveshaper/incs/AKWF_vgtri_0003.inc>
};
uint16 wavetable_14[] __FLASH__ = {
  #include </Users/rjungemann/Documents/MapleIDE/waveshaper/incs/AKWF_vgtri_0002.inc>
};
uint16 wavetable_15[] __FLASH__ = {
  #include </Users/rjungemann/Documents/MapleIDE/waveshaper/incs/AKWF_vgtri_0001.inc>
};
uint16 wavetable_16[] __FLASH__ = {
  #include </Users/rjungemann/Documents/MapleIDE/waveshaper/incs/AKWF_vgsqu_0016.inc>
};
uint16 wavetable_17[] __FLASH__ = {
  #include </Users/rjungemann/Documents/MapleIDE/waveshaper/incs/AKWF_vgsqu_0015.inc>
};
uint16 wavetable_18[] __FLASH__ = {
  #include </Users/rjungemann/Documents/MapleIDE/waveshaper/incs/AKWF_vgsqu_0014.inc>
};
uint16 wavetable_19[] __FLASH__ = {
  #include </Users/rjungemann/Documents/MapleIDE/waveshaper/incs/AKWF_vgsqu_0013.inc>
};
uint16 wavetable_20[] __FLASH__ = {
  #include </Users/rjungemann/Documents/MapleIDE/waveshaper/incs/AKWF_vgsqu_0012.inc>
};
uint16 wavetable_21[] __FLASH__ = {
  #include </Users/rjungemann/Documents/MapleIDE/waveshaper/incs/AKWF_vgsqu_0011.inc>
};
uint16 wavetable_22[] __FLASH__ = {
  #include </Users/rjungemann/Documents/MapleIDE/waveshaper/incs/AKWF_vgsqu_0010.inc>
};
uint16 wavetable_23[] __FLASH__ = {
  #include </Users/rjungemann/Documents/MapleIDE/waveshaper/incs/AKWF_vgsqu_0009.inc>
};
uint16 wavetable_24[] __FLASH__ = {
  #include </Users/rjungemann/Documents/MapleIDE/waveshaper/incs/AKWF_vgsqu_0008.inc>
};
uint16 wavetable_25[] __FLASH__ = {
  #include </Users/rjungemann/Documents/MapleIDE/waveshaper/incs/AKWF_vgsqu_0007.inc>
};
uint16 wavetable_26[] __FLASH__ = {
  #include </Users/rjungemann/Documents/MapleIDE/waveshaper/incs/AKWF_vgsqu_0006.inc>
};
uint16 wavetable_27[] __FLASH__ = {
  #include </Users/rjungemann/Documents/MapleIDE/waveshaper/incs/AKWF_vgsqu_0005.inc>
};
uint16 wavetable_28[] __FLASH__ = {
  #include </Users/rjungemann/Documents/MapleIDE/waveshaper/incs/AKWF_vgsqu_0004.inc>
};
uint16 wavetable_29[] __FLASH__ = {
  #include </Users/rjungemann/Documents/MapleIDE/waveshaper/incs/AKWF_vgsqu_0003.inc>
};
uint16 wavetable_30[] __FLASH__ = {
  #include </Users/rjungemann/Documents/MapleIDE/waveshaper/incs/AKWF_vgsqu_0002.inc>
};
uint16 wavetable_31[] __FLASH__ = {
  #include </Users/rjungemann/Documents/MapleIDE/waveshaper/incs/AKWF_vgsqu_0001.inc>
};
uint16 wavetable_32[] __FLASH__ = {
  #include </Users/rjungemann/Documents/MapleIDE/waveshaper/incs/AKWF_vgsin_0016.inc>
};
uint16 wavetable_33[] __FLASH__ = {
  #include </Users/rjungemann/Documents/MapleIDE/waveshaper/incs/AKWF_vgsin_0015.inc>
};
uint16 wavetable_34[] __FLASH__ = {
  #include </Users/rjungemann/Documents/MapleIDE/waveshaper/incs/AKWF_vgsin_0014.inc>
};
uint16 wavetable_35[] __FLASH__ = {
  #include </Users/rjungemann/Documents/MapleIDE/waveshaper/incs/AKWF_vgsin_0013.inc>
};
uint16 wavetable_36[] __FLASH__ = {
  #include </Users/rjungemann/Documents/MapleIDE/waveshaper/incs/AKWF_vgsin_0012.inc>
};
uint16 wavetable_37[] __FLASH__ = {
  #include </Users/rjungemann/Documents/MapleIDE/waveshaper/incs/AKWF_vgsin_0011.inc>
};
uint16 wavetable_38[] __FLASH__ = {
  #include </Users/rjungemann/Documents/MapleIDE/waveshaper/incs/AKWF_vgsin_0010.inc>
};
uint16 wavetable_39[] __FLASH__ = {
  #include </Users/rjungemann/Documents/MapleIDE/waveshaper/incs/AKWF_vgsin_0009.inc>
};
uint16 wavetable_40[] __FLASH__ = {
  #include </Users/rjungemann/Documents/MapleIDE/waveshaper/incs/AKWF_vgsin_0008.inc>
};
uint16 wavetable_41[] __FLASH__ = {
  #include </Users/rjungemann/Documents/MapleIDE/waveshaper/incs/AKWF_vgsin_0007.inc>
};
uint16 wavetable_42[] __FLASH__ = {
  #include </Users/rjungemann/Documents/MapleIDE/waveshaper/incs/AKWF_vgsin_0006.inc>
};
uint16 wavetable_43[] __FLASH__ = {
  #include </Users/rjungemann/Documents/MapleIDE/waveshaper/incs/AKWF_vgsin_0005.inc>
};
uint16 wavetable_44[] __FLASH__ = {
  #include </Users/rjungemann/Documents/MapleIDE/waveshaper/incs/AKWF_vgsin_0004.inc>
};
uint16 wavetable_45[] __FLASH__ = {
  #include </Users/rjungemann/Documents/MapleIDE/waveshaper/incs/AKWF_vgsin_0003.inc>
};
uint16 wavetable_46[] __FLASH__ = {
  #include </Users/rjungemann/Documents/MapleIDE/waveshaper/incs/AKWF_vgsin_0002.inc>
};
uint16 wavetable_47[] __FLASH__ = {
  #include </Users/rjungemann/Documents/MapleIDE/waveshaper/incs/AKWF_vgsin_0001.inc>
};
uint16 wavetable_48[] __FLASH__ = {
  #include </Users/rjungemann/Documents/MapleIDE/waveshaper/incs/AKWF_vgsaw_0016.inc>
};
uint16 wavetable_49[] __FLASH__ = {
  #include </Users/rjungemann/Documents/MapleIDE/waveshaper/incs/AKWF_vgsaw_0015.inc>
};
uint16 wavetable_50[] __FLASH__ = {
  #include </Users/rjungemann/Documents/MapleIDE/waveshaper/incs/AKWF_vgsaw_0014.inc>
};
uint16 wavetable_51[] __FLASH__ = {
  #include </Users/rjungemann/Documents/MapleIDE/waveshaper/incs/AKWF_vgsaw_0013.inc>
};
uint16 wavetable_52[] __FLASH__ = {
  #include </Users/rjungemann/Documents/MapleIDE/waveshaper/incs/AKWF_vgsaw_0012.inc>
};
uint16 wavetable_53[] __FLASH__ = {
  #include </Users/rjungemann/Documents/MapleIDE/waveshaper/incs/AKWF_vgsaw_0011.inc>
};
uint16 wavetable_54[] __FLASH__ = {
  #include </Users/rjungemann/Documents/MapleIDE/waveshaper/incs/AKWF_vgsaw_0010.inc>
};
uint16 wavetable_55[] __FLASH__ = {
  #include </Users/rjungemann/Documents/MapleIDE/waveshaper/incs/AKWF_vgsaw_0009.inc>
};
uint16 wavetable_56[] __FLASH__ = {
  #include </Users/rjungemann/Documents/MapleIDE/waveshaper/incs/AKWF_vgsaw_0008.inc>
};
uint16 wavetable_57[] __FLASH__ = {
  #include </Users/rjungemann/Documents/MapleIDE/waveshaper/incs/AKWF_vgsaw_0007.inc>
};
uint16 wavetable_58[] __FLASH__ = {
  #include </Users/rjungemann/Documents/MapleIDE/waveshaper/incs/AKWF_vgsaw_0006.inc>
};
uint16 wavetable_59[] __FLASH__ = {
  #include </Users/rjungemann/Documents/MapleIDE/waveshaper/incs/AKWF_vgsaw_0005.inc>
};
uint16 wavetable_60[] __FLASH__ = {
  #include </Users/rjungemann/Documents/MapleIDE/waveshaper/incs/AKWF_vgsaw_0004.inc>
};
uint16 wavetable_61[] __FLASH__ = {
  #include </Users/rjungemann/Documents/MapleIDE/waveshaper/incs/AKWF_vgsaw_0003.inc>
};
uint16 wavetable_62[] __FLASH__ = {
  #include </Users/rjungemann/Documents/MapleIDE/waveshaper/incs/AKWF_vgsaw_0002.inc>
};
uint16 wavetable_63[] __FLASH__ = {
  #include </Users/rjungemann/Documents/MapleIDE/waveshaper/incs/AKWF_vgsaw_0001.inc>
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
      wavetableValueJ = getWavetableValue(left_in,  wavetable_0, WAVETABLE_0_LENGTH);
      break;
    case 1:
      wavetableValueI = getWavetableValue(right_in, wavetable_1, WAVETABLE_1_LENGTH);
      wavetableValueJ = getWavetableValue(left_in,  wavetable_1, WAVETABLE_1_LENGTH);
      break;
    case 2:
      wavetableValueI = getWavetableValue(right_in, wavetable_2, WAVETABLE_2_LENGTH);
      wavetableValueJ = getWavetableValue(left_in,  wavetable_2, WAVETABLE_2_LENGTH);
      break;
    case 3:
      wavetableValueI = getWavetableValue(right_in, wavetable_3, WAVETABLE_3_LENGTH);
      wavetableValueJ = getWavetableValue(left_in,  wavetable_3, WAVETABLE_3_LENGTH);
      break;
    case 4:
      wavetableValueI = getWavetableValue(right_in, wavetable_4, WAVETABLE_4_LENGTH);
      wavetableValueJ = getWavetableValue(left_in,  wavetable_4, WAVETABLE_4_LENGTH);
      break;
    case 5:
      wavetableValueI = getWavetableValue(right_in, wavetable_5, WAVETABLE_5_LENGTH);
      wavetableValueJ = getWavetableValue(left_in,  wavetable_5, WAVETABLE_5_LENGTH);
      break;
    case 6:
      wavetableValueI = getWavetableValue(right_in, wavetable_6, WAVETABLE_6_LENGTH);
      wavetableValueJ = getWavetableValue(left_in,  wavetable_6, WAVETABLE_6_LENGTH);
      break;
    case 7:
      wavetableValueI = getWavetableValue(right_in, wavetable_7, WAVETABLE_7_LENGTH);
      wavetableValueJ = getWavetableValue(left_in,  wavetable_7, WAVETABLE_7_LENGTH);
      break;
    case 8:
      wavetableValueI = getWavetableValue(right_in, wavetable_8, WAVETABLE_8_LENGTH);
      wavetableValueJ = getWavetableValue(left_in,  wavetable_8, WAVETABLE_8_LENGTH);
      break;
    case 9:
      wavetableValueI = getWavetableValue(right_in, wavetable_9, WAVETABLE_9_LENGTH);
      wavetableValueJ = getWavetableValue(left_in,  wavetable_9, WAVETABLE_9_LENGTH);
      break;
    case 10:
      wavetableValueI = getWavetableValue(right_in, wavetable_10, WAVETABLE_10_LENGTH);
      wavetableValueJ = getWavetableValue(left_in,  wavetable_10, WAVETABLE_10_LENGTH);
      break;
    case 11:
      wavetableValueI = getWavetableValue(right_in, wavetable_11, WAVETABLE_11_LENGTH);
      wavetableValueJ = getWavetableValue(left_in,  wavetable_11, WAVETABLE_11_LENGTH);
      break;
    case 12:
      wavetableValueI = getWavetableValue(right_in, wavetable_12, WAVETABLE_12_LENGTH);
      wavetableValueJ = getWavetableValue(left_in,  wavetable_12, WAVETABLE_12_LENGTH);
      break;
    case 13:
      wavetableValueI = getWavetableValue(right_in, wavetable_13, WAVETABLE_13_LENGTH);
      wavetableValueJ = getWavetableValue(left_in,  wavetable_13, WAVETABLE_13_LENGTH);
      break;
    case 14:
      wavetableValueI = getWavetableValue(right_in, wavetable_14, WAVETABLE_14_LENGTH);
      wavetableValueJ = getWavetableValue(left_in,  wavetable_14, WAVETABLE_14_LENGTH);
      break;
    case 15:
      wavetableValueI = getWavetableValue(right_in, wavetable_15, WAVETABLE_15_LENGTH);
      wavetableValueJ = getWavetableValue(left_in,  wavetable_15, WAVETABLE_15_LENGTH);
      break;
    case 16:
      wavetableValueI = getWavetableValue(right_in, wavetable_16, WAVETABLE_16_LENGTH);
      wavetableValueJ = getWavetableValue(left_in,  wavetable_16, WAVETABLE_16_LENGTH);
      break;
    case 17:
      wavetableValueI = getWavetableValue(right_in, wavetable_17, WAVETABLE_17_LENGTH);
      wavetableValueJ = getWavetableValue(left_in,  wavetable_17, WAVETABLE_17_LENGTH);
      break;
    case 18:
      wavetableValueI = getWavetableValue(right_in, wavetable_18, WAVETABLE_18_LENGTH);
      wavetableValueJ = getWavetableValue(left_in,  wavetable_18, WAVETABLE_18_LENGTH);
      break;
    case 19:
      wavetableValueI = getWavetableValue(right_in, wavetable_19, WAVETABLE_19_LENGTH);
      wavetableValueJ = getWavetableValue(left_in,  wavetable_19, WAVETABLE_19_LENGTH);
      break;
    case 20:
      wavetableValueI = getWavetableValue(right_in, wavetable_20, WAVETABLE_20_LENGTH);
      wavetableValueJ = getWavetableValue(left_in,  wavetable_20, WAVETABLE_20_LENGTH);
      break;
    case 21:
      wavetableValueI = getWavetableValue(right_in, wavetable_21, WAVETABLE_21_LENGTH);
      wavetableValueJ = getWavetableValue(left_in,  wavetable_21, WAVETABLE_21_LENGTH);
      break;
    case 22:
      wavetableValueI = getWavetableValue(right_in, wavetable_22, WAVETABLE_22_LENGTH);
      wavetableValueJ = getWavetableValue(left_in,  wavetable_22, WAVETABLE_22_LENGTH);
      break;
    case 23:
      wavetableValueI = getWavetableValue(right_in, wavetable_23, WAVETABLE_23_LENGTH);
      wavetableValueJ = getWavetableValue(left_in,  wavetable_23, WAVETABLE_23_LENGTH);
      break;
    case 24:
      wavetableValueI = getWavetableValue(right_in, wavetable_24, WAVETABLE_24_LENGTH);
      wavetableValueJ = getWavetableValue(left_in,  wavetable_24, WAVETABLE_24_LENGTH);
      break;
    case 25:
      wavetableValueI = getWavetableValue(right_in, wavetable_25, WAVETABLE_25_LENGTH);
      wavetableValueJ = getWavetableValue(left_in,  wavetable_25, WAVETABLE_25_LENGTH);
      break;
    case 26:
      wavetableValueI = getWavetableValue(right_in, wavetable_26, WAVETABLE_26_LENGTH);
      wavetableValueJ = getWavetableValue(left_in,  wavetable_26, WAVETABLE_26_LENGTH);
      break;
    case 27:
      wavetableValueI = getWavetableValue(right_in, wavetable_27, WAVETABLE_27_LENGTH);
      wavetableValueJ = getWavetableValue(left_in,  wavetable_27, WAVETABLE_27_LENGTH);
      break;
    case 28:
      wavetableValueI = getWavetableValue(right_in, wavetable_28, WAVETABLE_28_LENGTH);
      wavetableValueJ = getWavetableValue(left_in,  wavetable_28, WAVETABLE_28_LENGTH);
      break;
    case 29:
      wavetableValueI = getWavetableValue(right_in, wavetable_29, WAVETABLE_29_LENGTH);
      wavetableValueJ = getWavetableValue(left_in,  wavetable_29, WAVETABLE_29_LENGTH);
      break;
    case 30:
      wavetableValueI = getWavetableValue(right_in, wavetable_30, WAVETABLE_30_LENGTH);
      wavetableValueJ = getWavetableValue(left_in,  wavetable_30, WAVETABLE_30_LENGTH);
      break;
    case 31:
      wavetableValueI = getWavetableValue(right_in, wavetable_31, WAVETABLE_31_LENGTH);
      wavetableValueJ = getWavetableValue(left_in,  wavetable_31, WAVETABLE_31_LENGTH);
      break;
    case 32:
      wavetableValueI = getWavetableValue(right_in, wavetable_32, WAVETABLE_32_LENGTH);
      wavetableValueJ = getWavetableValue(left_in,  wavetable_32, WAVETABLE_32_LENGTH);
      break;
    case 33:
      wavetableValueI = getWavetableValue(right_in, wavetable_33, WAVETABLE_33_LENGTH);
      wavetableValueJ = getWavetableValue(left_in,  wavetable_33, WAVETABLE_33_LENGTH);
      break;
    case 34:
      wavetableValueI = getWavetableValue(right_in, wavetable_34, WAVETABLE_34_LENGTH);
      wavetableValueJ = getWavetableValue(left_in,  wavetable_34, WAVETABLE_34_LENGTH);
      break;
    case 35:
      wavetableValueI = getWavetableValue(right_in, wavetable_35, WAVETABLE_35_LENGTH);
      wavetableValueJ = getWavetableValue(left_in,  wavetable_35, WAVETABLE_35_LENGTH);
      break;
    case 36:
      wavetableValueI = getWavetableValue(right_in, wavetable_36, WAVETABLE_36_LENGTH);
      wavetableValueJ = getWavetableValue(left_in,  wavetable_36, WAVETABLE_36_LENGTH);
      break;
    case 37:
      wavetableValueI = getWavetableValue(right_in, wavetable_37, WAVETABLE_37_LENGTH);
      wavetableValueJ = getWavetableValue(left_in,  wavetable_37, WAVETABLE_37_LENGTH);
      break;
    case 38:
      wavetableValueI = getWavetableValue(right_in, wavetable_38, WAVETABLE_38_LENGTH);
      wavetableValueJ = getWavetableValue(left_in,  wavetable_38, WAVETABLE_38_LENGTH);
      break;
    case 39:
      wavetableValueI = getWavetableValue(right_in, wavetable_39, WAVETABLE_39_LENGTH);
      wavetableValueJ = getWavetableValue(left_in,  wavetable_39, WAVETABLE_39_LENGTH);
      break;
    case 40:
      wavetableValueI = getWavetableValue(right_in, wavetable_40, WAVETABLE_40_LENGTH);
      wavetableValueJ = getWavetableValue(left_in,  wavetable_40, WAVETABLE_40_LENGTH);
      break;
    case 41:
      wavetableValueI = getWavetableValue(right_in, wavetable_41, WAVETABLE_41_LENGTH);
      wavetableValueJ = getWavetableValue(left_in,  wavetable_41, WAVETABLE_41_LENGTH);
      break;
    case 42:
      wavetableValueI = getWavetableValue(right_in, wavetable_42, WAVETABLE_42_LENGTH);
      wavetableValueJ = getWavetableValue(left_in,  wavetable_42, WAVETABLE_42_LENGTH);
      break;
    case 43:
      wavetableValueI = getWavetableValue(right_in, wavetable_43, WAVETABLE_43_LENGTH);
      wavetableValueJ = getWavetableValue(left_in,  wavetable_43, WAVETABLE_43_LENGTH);
      break;
    case 44:
      wavetableValueI = getWavetableValue(right_in, wavetable_44, WAVETABLE_44_LENGTH);
      wavetableValueJ = getWavetableValue(left_in,  wavetable_44, WAVETABLE_44_LENGTH);
      break;
    case 45:
      wavetableValueI = getWavetableValue(right_in, wavetable_45, WAVETABLE_45_LENGTH);
      wavetableValueJ = getWavetableValue(left_in,  wavetable_45, WAVETABLE_45_LENGTH);
      break;
    case 46:
      wavetableValueI = getWavetableValue(right_in, wavetable_46, WAVETABLE_46_LENGTH);
      wavetableValueJ = getWavetableValue(left_in,  wavetable_46, WAVETABLE_46_LENGTH);
      break;
    case 47:
      wavetableValueI = getWavetableValue(right_in, wavetable_47, WAVETABLE_47_LENGTH);
      wavetableValueJ = getWavetableValue(left_in,  wavetable_47, WAVETABLE_47_LENGTH);
      break;
    case 48:
      wavetableValueI = getWavetableValue(right_in, wavetable_48, WAVETABLE_48_LENGTH);
      wavetableValueJ = getWavetableValue(left_in,  wavetable_48, WAVETABLE_48_LENGTH);
      break;
    case 49:
      wavetableValueI = getWavetableValue(right_in, wavetable_49, WAVETABLE_49_LENGTH);
      wavetableValueJ = getWavetableValue(left_in,  wavetable_49, WAVETABLE_49_LENGTH);
      break;
    case 50:
      wavetableValueI = getWavetableValue(right_in, wavetable_50, WAVETABLE_50_LENGTH);
      wavetableValueJ = getWavetableValue(left_in,  wavetable_50, WAVETABLE_50_LENGTH);
      break;
    case 51:
      wavetableValueI = getWavetableValue(right_in, wavetable_51, WAVETABLE_51_LENGTH);
      wavetableValueJ = getWavetableValue(left_in,  wavetable_51, WAVETABLE_51_LENGTH);
      break;
    case 52:
      wavetableValueI = getWavetableValue(right_in, wavetable_52, WAVETABLE_52_LENGTH);
      wavetableValueJ = getWavetableValue(left_in,  wavetable_52, WAVETABLE_52_LENGTH);
      break;
    case 53:
      wavetableValueI = getWavetableValue(right_in, wavetable_53, WAVETABLE_53_LENGTH);
      wavetableValueJ = getWavetableValue(left_in,  wavetable_53, WAVETABLE_53_LENGTH);
      break;
    case 54:
      wavetableValueI = getWavetableValue(right_in, wavetable_54, WAVETABLE_54_LENGTH);
      wavetableValueJ = getWavetableValue(left_in,  wavetable_54, WAVETABLE_54_LENGTH);
      break;
    case 55:
      wavetableValueI = getWavetableValue(right_in, wavetable_55, WAVETABLE_55_LENGTH);
      wavetableValueJ = getWavetableValue(left_in,  wavetable_55, WAVETABLE_55_LENGTH);
      break;
    case 56:
      wavetableValueI = getWavetableValue(right_in, wavetable_56, WAVETABLE_56_LENGTH);
      wavetableValueJ = getWavetableValue(left_in,  wavetable_56, WAVETABLE_56_LENGTH);
      break;
    case 57:
      wavetableValueI = getWavetableValue(right_in, wavetable_57, WAVETABLE_57_LENGTH);
      wavetableValueJ = getWavetableValue(left_in,  wavetable_57, WAVETABLE_57_LENGTH);
      break;
    case 58:
      wavetableValueI = getWavetableValue(right_in, wavetable_58, WAVETABLE_58_LENGTH);
      wavetableValueJ = getWavetableValue(left_in,  wavetable_58, WAVETABLE_58_LENGTH);
      break;
    case 59:
      wavetableValueI = getWavetableValue(right_in, wavetable_59, WAVETABLE_59_LENGTH);
      wavetableValueJ = getWavetableValue(left_in,  wavetable_59, WAVETABLE_59_LENGTH);
      break;
    case 60:
      wavetableValueI = getWavetableValue(right_in, wavetable_60, WAVETABLE_60_LENGTH);
      wavetableValueJ = getWavetableValue(left_in,  wavetable_60, WAVETABLE_60_LENGTH);
      break;
    case 61:
      wavetableValueI = getWavetableValue(right_in, wavetable_61, WAVETABLE_61_LENGTH);
      wavetableValueJ = getWavetableValue(left_in,  wavetable_61, WAVETABLE_61_LENGTH);
      break;
    case 62:
      wavetableValueI = getWavetableValue(right_in, wavetable_62, WAVETABLE_62_LENGTH);
      wavetableValueJ = getWavetableValue(left_in,  wavetable_62, WAVETABLE_62_LENGTH);
      break;
    case 63:
      wavetableValueI = getWavetableValue(right_in, wavetable_63, WAVETABLE_63_LENGTH);
      wavetableValueJ = getWavetableValue(left_in,  wavetable_63, WAVETABLE_63_LENGTH);
      break;
  }

  int16 scaledValueI = (mod1_value * wavetableValueI) / 65536;
  int16 scaledValueJ = (mod1_value * wavetableValueJ) / 65536;

  left_out = scaledValueI;
  right_out = scaledValueJ;
}

