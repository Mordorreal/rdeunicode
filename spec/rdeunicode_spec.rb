# frozen_string_literal: true

RSpec.describe 'RdeunicodeExample' do
  it 'correctly deunicode' do
    expect(Rdeunicode.deunicode('Æneid')).to eq('AEneid')
    expect(Rdeunicode.deunicode('étude')).to eq('etude')
    expect(Rdeunicode.deunicode('北亰')).to eq('Bei Jing')
    expect(Rdeunicode.deunicode('ᔕᓇᓇ')).to eq('shanana')
    expect(Rdeunicode.deunicode('げんまい茶')).to eq('genmaiCha')
    expect(Rdeunicode.deunicode('🦄☣')).to eq('unicorn biohazard')
  end
end
