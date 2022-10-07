require 'spec_helper'

describe 'Stock' do
  context '#evaluate' do
    it 'Recebe uma sequência de valores de uma ação e retorna o maior lucro' do
      stock = 'DOP:2 5'

      expect(Stock.new.evaluate(stock)).to eq 'DOP:3'
    end

    it 'Recebe uma sequência de valores de uma ação e retorna o maior lucro' do
      stock = 'ZXN:2 58 20 10 2'

      expect(Stock.new.evaluate(stock)).to eq 'ZXN:56'
    end

    it 'Recebe uma sequência de valores de uma ação e retorna a menor perda' do
      stock = 'ZLP:98 33 12 4'

      expect(Stock.new.evaluate(stock)).to eq 'ZLP:-8'
    end
  end

  context '#evaluate_stocks' do
    it 'Recebe uma lista de ações e a retorna ordenada pelo lucro' do
      stocks = <<~STOCKS
        PPP:53 3 2 13 6
        WRW:5 14 10 1 20
        FTT:8 5 2 1
      STOCKS

      expect(Stock.new.evaluate_stocks(stocks)).to eq ["FTT:-1", "PPP:11", "WRW:19"]
    end

    it 'Recebe uma lista de ações e a retorna ordenada pelo lucro' do
      stocks = <<~STOCKS
      BSS:2 38 14 53 321
      PIP:59 9 12 2
      EET:2 9
      TTE:42 1982 44 252 87 30 77
      STOCKS

      expect(Stock.new.evaluate_stocks(stocks)).to eq ['PIP:3', 'EET:7', 'BSS:319', 'TTE:1940']
    end

    it 'Recebe uma lista de ações e a retorna ordenada pelo lucro' do
      stocks = <<~STOCKS
      DDP:21 11 14 1 13 2 4 55 12 15 1 15 22 14 4 1 14 23 25 12 39 12
      GPF:21 31 4 42 23 44 69 2 21 9 3 69 3 29 83 91 13 82 4 41 9 1 83 1 81
      AWE:33 49 65 43 22 81 46 15 42 23 71 24 42 42 62 47 84 93 74 53 44 2
      UWU:22 44 25 47 25 37 43 17 73 56 16 23 31 64 83 13 32 26 16 66 23 34
      STOCKS

      expect(Stock.new.evaluate_stocks(stocks)).to eq ['DDP:54', 'UWU:67', 'AWE:78', 'GPF:89']
    end
  end
end
