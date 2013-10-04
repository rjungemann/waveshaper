waveshaper
==========

Instructions
------------

Procure a Maple microcontroller and an Arduino Audio Codec Shield.

Either use the provided wavetables or place some wavetables into the
`wavetables` folder. You can place anywhere between 1-64 wavetables.

Run `ruby table.rb`.

A `waveshaper.pde` file will be generated. Open it in the Maple IDE.

Compile.

Transfer to the Maple.

The left knob controls gain. The right knob will sweep between the 64
wavetables.

If you want to re-transfer the code or transfer new code, you will have to
reset the Maple into Bootloader mode. This is because to get latency-free audio
processing, you have to disable USB mode. To reset the Maple into Bootloader
mode, press the reset button, then _immediately_ after, hold the alternative
button. The Maple will Flash. You are now in Bootloader mode.

