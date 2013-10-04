require 'pathname'
require 'wav-file'
require 'rainbow'
require 'erb'

def write_inc(basename, data)
  File.open("incs/#{basename}.inc", "w+") do |inc|
    inc.puts %[// #{basename}.inc]
    inc.puts %[// AKWF waveforms from Adventure Kid ] +
      %[(http://adventurekid.se)]
    inc.puts %[// This file is a 1024 sample by 16b signed integer ] +
      %[sinewave lookup table.]
    inc.print "\n"

    inc.puts data.join(",\n")
  end
end

# Generate incs

lengths = {}

puts %[Removing contents of "incs" directory...].color(:blue)
`rm -rf incs/*`

Dir.glob('wavetables/**/*.wav').each do |path|
  wav_name = path.split('/').last
  basename = wav_name.split('.')[0..-2].join('.')

  File.open path do |wav|
    format = WavFile::readFormat wav
    raise 'Wave file must be 16 bits' if format.bitPerSample != 16

    data_chunk = WavFile::readDataChunk wav
    data_size = data_chunk.size
    puts %[Read "#{path}", which has a size of #{data_size}.].color(:blue)

    data = data_chunk.data.unpack 's*'

    write_inc basename, data

    lengths[basename] = data_size
  end
end

# Create template code

num_wavetables = 64
incs = Dir.glob("incs/*.inc").reverse[0...num_wavetables]
defines = []
datas = []
cases = []

defines << %|#define NUM_WAVETABLES #{num_wavetables}|

incs.each.with_index do |path, i|
  inc_name = path.split('/').last
  basename = inc_name.split('.')[0..-2].join('.')
  length = lengths[basename]

  defines << %|#define WAVETABLE_#{i}_LENGTH #{length}|
  datas << \
    %|uint16 wavetable_#{i}[] __FLASH__ = {\n| +
    %|  #include <#{Pathname.new('.').expand_path.to_s}/#{path}>\n| +
    %|};|

  cases << \
    %|    case #{i}:\n| +
    %|      wavetableValueI = getWavetableValue(right_in, wavetable_#{i}, WAVETABLE_#{i}_LENGTH);\n| +
    %|      wavetableValueJ = getWavetableValue(left_in,  wavetable_#{i}, WAVETABLE_#{i}_LENGTH);\n| +
    %|      break;|
end

File.open('waveshaper2.pde', 'w') do |f|
  f.puts ERB.new(File.read('waveshaper2.pde.erb')).result(binding)
end

