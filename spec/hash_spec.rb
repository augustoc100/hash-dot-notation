require 'hash'

describe Hash do
  context 'quando acesso os atributos de um hash usando dot notation'do
    it 'retorna o atributo'do
      subject = {
        attr1: 'attribute1',
        attr2: 'attribute2',
        attr3: 'attribute3',
        attr4: 1432,
        attr5: 50.09,
        attr6: [1,2,3],
        attr7: {foo: 'foo'},
      }

      subject.each do |key, value|
        expect(subject.send(key)).to eq value
      end
    end

    context 'quando as chaves são strings' do
      it 'retorna o atributo'do
        subject = {
          "string1": "stringibute1",
          "string2": "stringibute2",
          "string3": "stringibute3",
          "string4": 1432,
          "string5": 50.09,
          "string6": [1,2,3],
          "string7": {foo: "foo"},
        }

        subject.each do |key, value|
          expect(subject.send(key)).to eq value
        end
      end
    end

    context 'quando o metodo não existe' do
      it 'lance um erro'do
        subject = {attr: 'result'}

        expect {subject.unexisted_method}.to raise_error KeyError
      end
    end
  end
end
