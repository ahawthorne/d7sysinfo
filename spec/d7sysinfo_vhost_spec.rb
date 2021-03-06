require 'spec_helper'
describe D7sysinfo::Vhost do
  subject { D7sysinfo::Vhost.new('test').node }
  it { expect(subject['wordpress.conf'][:wordpress]).to eq '7.7.7' }
  it { expect(subject['rails.conf'][:rails]).to eq 'rails (3.3.3)' }
  it { expect(subject['drupal.conf'][:drupal]).to eq '1.1.1' }
  it { expect(subject['drupal2.conf'][:drupal]).to eq '7.26' }
  it { expect(subject['ee.conf'][:ee]).to eq '255' }
end
