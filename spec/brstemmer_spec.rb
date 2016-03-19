require 'spec_helper'

describe Brstemmer do
  context "#apply_rules_by_name" do

    def set_instance(word)
      @stemmer = Brstemmer::Stemmer.new word
    end

    it '.plural_reduction for `ores`' do
      set_instance 'corredores'
      expect(@stemmer.apply_rules_by_name 'plural_reduction').to eq 'corredor'
    end

    it '.plural_reduction for `as`' do
      set_instance 'corredoras'
      expect(@stemmer.apply_rules_by_name 'plural_reduction').to eq 'corredora'
    end

    it '.plural_reduction for `ões`' do
      set_instance 'balões'
      expect(@stemmer.apply_rules_by_name 'plural_reduction').to eq 'balão'
    end

    it '.plural_reduction for `ons`' do
      set_instance 'bons'
      expect(@stemmer.apply_rules_by_name 'plural_reduction').to eq 'bom'
    end

    it '.plural_reduction for `ães`' do
      set_instance 'mães'
      expect(@stemmer.apply_rules_by_name 'plural_reduction').to eq 'mãe'
    end

    it '.plural_reduction for `ais`' do
      set_instance 'normais'
      expect(@stemmer.apply_rules_by_name 'plural_reduction').to eq 'normal'
    end

    it '.plural_reduction for `éis`' do
      set_instance 'papéis'
      expect(@stemmer.apply_rules_by_name 'plural_reduction').to eq 'papel'
    end

    it '.plural_reduction for `eis`' do
      set_instance 'amaveis'
      expect(@stemmer.apply_rules_by_name 'plural_reduction').to eq 'amavel'
    end

    it '.plural_reduction for `óis`' do
      set_instance 'lençóis'
      expect(@stemmer.apply_rules_by_name 'plural_reduction').to eq 'lençol'
    end

    it '.plural_reduction for `is`' do
      set_instance 'barris'
      expect(@stemmer.apply_rules_by_name 'plural_reduction').to eq 'barril'
    end

    # TODO! Fix this
    # it '.plural_reduction for `les`' do
    #   set_instance 'males'
    #   expect(@stemmer.apply_rules_by_name 'plural_reduction').to eq 'mal'
    # end

    # it '.plural_reduction for `res`' do
    #   set_instance 'lares'
    #   expect(@stemmer.apply_rules_by_name 'plural_reduction').to eq 'lar'
    # end

    it '.plural_reduction for `asas`' do
      set_instance 'casas'
      expect(@stemmer.apply_rules_by_name 'plural_reduction').to eq 'casa'
    end
  end
end