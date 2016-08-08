defmodule ReverseProxy.Clients.Giphy do
  use HTTPoison.Base

  @host Application.get_env(:reverse_proxy, :giphy)[:host]
  @secret Application.get_env(:reverse_proxy, :giphy)[:secret]

  def process_url(url) do
    @host <> url
    # append_secret(@host <> url)
  end

  def process_request_headers(headers) do
    List.keyreplace(headers, "accept", 0, {"accept", "application/json"})
  end

  defp append_secret(url) do
    secret = URI.encode_query(%{secret: @secret})
    url <> "?" <> secret
  end
end