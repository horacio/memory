require 'spec_helper'

describe Memory do
  describe Memory::Sources::GitHubSource do
    describe '#new' do
      it 'requires a GitHub username' do
        expect {
          Memory::Sources::GitHubSource.new
        }.to raise_error
      end

      describe '#feed_url' do
        it 'is built from the configured username' do
          source = Memory::Sources::GitHubSource.new(username: 'svankmajer')

          expect(source.feed_url).to include(source.username)
        end
      end

      describe '#update' do
        it 'updates the store returning the latest events' do
          source = Memory::Sources::GitHubSource.new(username: 'svankmajer')

          expect(source.update).to be_an(Array)
        end
      end
    end
  end
end
