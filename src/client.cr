class Iolite::Client
  getter server, port, password, nickname, username, realname

  def initialize(
    @server : String,
    @port : Int32? = 6667,
    @password : String? = nil,

    @nickname : String? = "iolite",
    @username : String? = "iolite",
    @realname : String? = "iolite"
  )
  end

  class NoServerError < Exception; end
end
