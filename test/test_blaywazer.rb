require 'minitest/autorun'
require 'blaywazer'
require 'httmultiparty'

class CommitTest < Minitest::Test
  include HTTMultiParty

  def setup
    @b_uri                        =  'http://localhost:4567/'
    @options = {:headers => {
        'User-Agent' => 'CliffWhite',
        'Origin' => self.class.base_uri,
        'Connection' => 'keep-alive',
        'Accept' => 'application/vnd.github.v3+json',
        'Accept-Encoding' => 'gzip,deflate',
        'Accept-Language' => 'en-US,en;q=0.8',
        'Accept-Charset' => 'ISO-8859-1,utf-8;q=0.7,*;q=0.3',
        'Content-Type' => 'application/json; charset=UTF-8',
        'Cache-Control' => 'no-cache'

        }
    }
    self.class.base_uri @b_uri
  end

  # Called after every test method runs. Can be used to tear
  # down fixture information.

  def teardown
    # Do nothing
  end

  # Fake test
  def test_fail

    # fail('Not implemented')
  end

  def test_no_owner
    # repos/cliff/blaywazer/commits
    response = self.class.get('http://localhost:4567/repos/cliff/blaywazer/commits', @options)
    puts response
    #
    # wsmstore_data = JSON.parse(response.body)
    # wsmstore_data = wsmstore_data['wsmstore']
    # wsmstore_data

  end
end