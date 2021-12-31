class Iolite::Client
  getter server, port, password, nickname, username, realname

  def initialize(
    @server : String?,
    @port : Int32? = 6667,
    @nickname : String? = "iolite",
    @password : String? = nil,
    @username : String? = "iolite",
    @realname : String? = "iolite"
  )
    unless @server
      raise NoServerError.new
    end
  end

  class NoServerError < Exception; end
end
