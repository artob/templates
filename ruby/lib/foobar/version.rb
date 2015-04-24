module Foobar
  module VERSION
    FILE = File.expand_path('../../../VERSION', __FILE__).freeze
    STRING = File.read(FILE).chomp.freeze
    MAJOR, MINOR, TINY, EXTRA = STRING.split('.').map(&:to_i).freeze

    ##
    # @return [String]
    def self.to_s() STRING end

    ##
    # @return [String]
    def self.to_str() STRING end

    ##
    # @return [Array(Integer, Integer, Integer)]
    def self.to_a() [MAJOR, MINOR, TINY].freeze end
  end # VERSION
end # Foobar
