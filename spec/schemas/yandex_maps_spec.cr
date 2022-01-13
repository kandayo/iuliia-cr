# DO NOT EDIT THIS FILE.
# Generated from Iuliia schemas. See `Iuliia::SchemaImporter`.
#
# ## SAMPLES
#
# ----------------------------------------------------------------------------
# Iuliia
# https://github.com/nalgeon/iuliia
# ----------------------------------------------------------------------------
#
# MIT License
#
# Copyright (c) 2020 Anton Zhiyanov
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.

require "../spec_helper"

describe Iuliia::YandexMaps do
  it "transliterates Юлия, съешь ещё этих мягких французских булок из Йошкар-Олы, да выпей алтайского чаю" do
    cyrilic = "Юлия, съешь ещё этих мягких французских булок из Йошкар-Олы, да выпей алтайского чаю"
    transliteration = "Yuliya, syesh yeschyo etikh myagkikh frantsuzskikh bulok iz Yoshkar-Oly, da vypey altayskogo chayu"

    Iuliia::YandexMaps.translate(cyrilic).should eq(transliteration)
  end

  it "transliterates Россия, город Йошкар-Ола, улица Яна Крастыня" do
    cyrilic = "Россия, город Йошкар-Ола, улица Яна Крастыня"
    transliteration = "Rossiya, gorod Yoshkar-Ola, ulitsa Yana Krastynya"

    Iuliia::YandexMaps.translate(cyrilic).should eq(transliteration)
  end

  it "transliterates Санкт-Петербург, Подъездной пер" do
    cyrilic = "Санкт-Петербург, Подъездной пер"
    transliteration = "Sankt-Peterburg, Podyezdnoy per"

    Iuliia::YandexMaps.translate(cyrilic).should eq(transliteration)
  end

  it "transliterates Москва, ул Подъёмная" do
    cyrilic = "Москва, ул Подъёмная"
    transliteration = "Moskva, ul Podyomnaya"

    Iuliia::YandexMaps.translate(cyrilic).should eq(transliteration)
  end

  it "transliterates Астрахань, ул Подъяпольского" do
    cyrilic = "Астрахань, ул Подъяпольского"
    transliteration = "Astrakhan, ul Podyapolskogo"

    Iuliia::YandexMaps.translate(cyrilic).should eq(transliteration)
  end

  it "transliterates Щегловитовка" do
    cyrilic = "Щегловитовка"
    transliteration = "Scheglovitovka"

    Iuliia::YandexMaps.translate(cyrilic).should eq(transliteration)
  end

  it "transliterates Новый Уренгой" do
    cyrilic = "Новый Уренгой"
    transliteration = "Noviy Urengoy"

    Iuliia::YandexMaps.translate(cyrilic).should eq(transliteration)
  end

  it "transliterates Елабуга" do
    cyrilic = "Елабуга"
    transliteration = "Yelabuga"

    Iuliia::YandexMaps.translate(cyrilic).should eq(transliteration)
  end

  it "transliterates Бабаево" do
    cyrilic = "Бабаево"
    transliteration = "Babayevo"

    Iuliia::YandexMaps.translate(cyrilic).should eq(transliteration)
  end

  it "transliterates Белово" do
    cyrilic = "Белово"
    transliteration = "Belovo"

    Iuliia::YandexMaps.translate(cyrilic).should eq(transliteration)
  end
end
