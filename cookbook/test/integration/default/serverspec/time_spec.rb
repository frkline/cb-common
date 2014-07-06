require 'spec_helper'

# Timezone
describe command('date') do
	its(:stdout) { should match /UTC/ }
end

# NTP service
describe service('ntpd') do
    it { should be_enabled }
    it { should be_running }
end