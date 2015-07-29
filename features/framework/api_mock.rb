class ApiMock

  def self.prepare_flikr_api
    WebMock::API.stub_request(:get, /api.flickr.com/).
        with(headers: {'Accept'=>'*/*', 'User-Agent'=>'Ruby'}).
        to_return(status: 200, body: '{items:[{"title":"Scott Golden Retriever","link":"https://www.flickr.com/photos/hunte77/20091471396/","media":{"m":"https://farm1.staticflickr.com/355/20091471396_fbcd66205b_m.jpg"},"date_taken":"2014-08-07T20:12:34-08:00","description":" \u003Cp\u003E\u003Ca href=\"https://www.flickr.com/people/hunte77/\"\u003Ehunte77\u003C/a\u003E posted a photo:\u003C/p\u003E \u003Cp\u003E\u003Ca href=\"https://www.flickr.com/photos/hunte77/20091471396/\" title=\"Scott Golden Retriever\"\u003E\u003Cimg src=\"https://farm1.staticflickr.com/355/20091471396_fbcd66205b_m.jpg\" width=\"240\" height=\"180\" alt=\"Scott Golden Retriever\" /\u003E\u003C/a\u003E\u003C/p\u003E ","published":"2015-07-29T15:43:53Z","author":"nobody@flickr.com (hunte77)","author_id":"62757637@N04","tags":"dog goldenretriever canon mar perro"}]}', headers: {})
  end

end