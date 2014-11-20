module MioMiep
  class Note
    attr_accessor :note, :velocity
    KEYS = ["C", "Db", "D", "Eb", "E", "F", "Gb", "G", "Ab", "A", "Bb", "B"]    
    
    def initialize(note, velocity)
      @note = note
      @velocity = velocity
    end

    def self.note_to_key(note)
      octave_shift = -1
      octave = ((note) / 12.0).to_i + octave_shift;
      name = KEYS[note % 12] + ("%d" % octave;)
    end

    #note to freq in Hz
    def self.piano_note_to_freq(note) 
      center_freq = 440 #by convention
      center_tone = 69 #A4 by convention
      center_freq * 2** ((note - center_tone)/12.0);
    end
  end
end