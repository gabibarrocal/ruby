require_relative '../../app/bank'


describe ContaPoupanca do
  describe 'Saque' do
    context 'quando o valor for positivo' do
      before(:all) do
        @cp = ContaPoupanca.new(1000.00)
        @cp.saca(200.00)
      end
      it 'entao atualiza saldo' do
        expect(@cp.saldo).to eql 798.00
      end
    end

    context 'quando o saldo é zero' do
      before(:all) do
        @cp = ContaPoupanca.new(0.00)
        @cp.saca(100.00)
      end
      it 'então exibe mensagem' do
        expect(@cp.mensagem).to eql 'Saldo insuficiente :('
      end
      it 'saldos permanece zerado' do
        expect(@cp.saldo).to eql 0.00
      end
    end

    context 'quando o saldo é insuficiente' do
      before(:all) do
        @cp = ContaPoupanca.new(100.00)
        @cp.saca(101.00)
      end
      it 'então exibe mensagem' do
        expect(@cp.mensagem).to eql 'Saldo insuficiente :('
      end
      it 'e o saldo permanece' do
        expect(@cp.saldo).to eql 100.00
      end
    end

    context 'quando osupera o limite de saque' do
      before(:all) do
        @cp = ContaPoupanca.new(1000.00)
        @cp.saca(501.00)
      end
      it 'então exibe mensagem' do
        expect(@cp.mensagem).to eql 'Limite maximo pra saque é de 500'
      end
      it 'e o saldo permanece' do
        expect(@cp.saldo).to eql 1000.00
      end
    end


  end
end
