require 'wav-file'
require 'rainbow'

def write_inc(bank_name, basename, data)
  File.open("incs/#{bank_name}/#{basename}.inc", "w+") do |inc|
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

Dir.glob('wavetables/*').each do |bank|
  bank_name = bank.split('/').last

  puts %[Creating directory "#{bank_name}"...].color(:blue)
  `mkdir -p incs/#{bank_name}`

  Dir.glob("#{bank}/*.wav").each do |path|
    wav_name = path.split('/').last
    basename = wav_name.split('.')[0..-2].join('.')

    File.open path do |wav|
      format = WavFile::readFormat wav
      raise 'Wave file must be 16 bits' if format.bitPerSample != 16

      data_chunk = WavFile::readDataChunk wav
      data_size = data_chunk.size
      puts %[Read "#{path}", which has a size of #{data_size}.].color(:blue)

      data = data_chunk.data.unpack 's*'

      write_inc bank_name, basename, data

      lengths[basename] = data_size
    end
  end
end

# Create template code

defines = []
datas = []

bank_list = [] # list of lists of integers
bank_i = 0
wavetable_i = 0
Dir.glob('incs/*').each do |bank|
  bank_name = bank.split('/').last

  Dir.glob("#{bank}/*.inc").each do |path|
    inc_name = path.split('/').last
    basename = inc_name.split('.')[0..-2].join('.')
    length = lengths[basename]

    defines << %|#define WAVETABLE_#{wavetable_i}_LENGTH #{length}|
    datas << \
      %|uint16 wavetable_#{wavetable_i}[] __FLASH__ = {\n| +
      %|  #include <#{path}>\n| +
      %|};|

    bank_list[bank_i] ||= []
    bank_list[bank_i] << wavetable_i

    wavetable_i += 1
  end

  bank_i += 1
end

bank_list.each.with_index do |bank, i|
  defines << %|#define BANK_#{i}_LENGTH #{bank.length}|
  datas << \
    %|unsigned int *bank_#{i}[] = {\n| +
    %|  #{bank.map { |b| "wavetable_#{b}" }.join(', ')}\n| +
    %|};|
end

defines << %|#define BANKS_COUNT #{bank_list.length}|
datas << \
  %|unsigned int *banks[] = {\n| +
  %|  #{0.upto(bank_list.length - 1).map { |b| "bank_#{b}" }.join(', ')}\n| +
  %|};|

puts defines.join("\n")
puts datas.join("\n")

