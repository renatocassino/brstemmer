require 'spec_helper'

describe Brstemmer do
  def set_instance(word)
    @stemmer = Brstemmer::Stemmer.new word
  end

  context "#apply_rules_by_name plural" do

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

  context "#apply_rules_by_name adverb_reduction" do
    it '.adverb_reduction' do
      set_instance 'felizmente'
      expect(@stemmer.apply_rules_by_name 'adverb_reduction').to eq 'feliz'
    end
  end

  context "#apply_rules_by_name feminine_reduction" do
    it '.feminine_reduction `ona`' do
      set_instance 'chefona'
      expect(@stemmer.apply_rules_by_name 'feminine_reduction').to eq 'chefão'
    end

    it '.feminine_reduction `ã`' do
      set_instance 'vilã'
      expect(@stemmer.apply_rules_by_name 'feminine_reduction').to eq 'vilão'
    end

    it '.feminine_reduction `ora`' do
      set_instance 'professora'
      expect(@stemmer.apply_rules_by_name 'feminine_reduction').to eq 'professor'
    end

    it '.feminine_reduction `ana`' do
      set_instance 'americana'
      expect(@stemmer.apply_rules_by_name 'feminine_reduction').to eq 'americano'
    end

    it '.feminine_reduction `inha`' do
      set_instance 'sozinha'
      expect(@stemmer.apply_rules_by_name 'feminine_reduction').to eq 'sozinho'
    end
    it '.feminine_reduction `esa`' do
      set_instance 'inglesa'
      expect(@stemmer.apply_rules_by_name 'feminine_reduction').to eq 'inglês'
    end

    it '.feminine_reduction `íaca`' do
      set_instance 'maníaca'
      expect(@stemmer.apply_rules_by_name 'feminine_reduction').to eq 'maníaco'
    end

    it '.feminine_reduction `ica`' do
      set_instance 'prática'
      expect(@stemmer.apply_rules_by_name 'feminine_reduction').to eq 'prático'
    end

    it '.feminine_reduction `ada`' do
      set_instance 'cansada'
      expect(@stemmer.apply_rules_by_name 'feminine_reduction').to eq 'cansado'
    end

    it '.feminine_reduction `ida`' do
      set_instance 'mantida'
      expect(@stemmer.apply_rules_by_name 'feminine_reduction').to eq 'mantido'
    end

    # it '.feminine_reduction `ima`' do
    #   set_instance 'prima'
    #   expect(@stemmer.apply_rules_by_name 'feminine_reduction').to eq 'primo'
    # end

    it '.feminine_reduction `iva`' do
      set_instance 'passiva'
      expect(@stemmer.apply_rules_by_name 'feminine_reduction').to eq 'passivo'
    end

    it '.feminine_reduction `eira`' do
      set_instance 'primeira'
      expect(@stemmer.apply_rules_by_name 'feminine_reduction').to eq 'primeiro'
    end

  end
end