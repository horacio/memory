require 'spec_helper'

describe Memory do
  describe Memory::Sources::GitHubSource do
    subject(:github_source) {
      Memory::Sources::GitHubSource.new(username: 'svankmajer')
    }

    describe '#new' do
      it 'requires a GitHub username' do
        expect {
          Memory::Sources::GitHubSource.new
        }.to raise_error
      end

      describe '#feed_url' do
        it 'is built from the configured username' do
          expect(github_source.feed_url).to include(github_source.username)
        end
      end

      describe '#update' do
        it 'updates the store returning an array of the latest events' do
          expect(github_source.update).to be_an(Array)
        end
      end
    end
  end
end
