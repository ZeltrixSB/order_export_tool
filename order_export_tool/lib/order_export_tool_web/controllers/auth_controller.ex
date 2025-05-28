
defmodule OrderExportToolWeb.AuthController do
  use OrderExportToolWeb, :controller

  @client_id "6g8qfati8jjs2"
  @client_secret "4fdd75797cbafd20994a9d92483d12a2475b7872"
  @redirect_uri "http://localhost:4000/auth/tiktok/callback"

  def login(conn, _params) do
    url = "https://www.tiktok.com/v2/auth/authorize/?client_key=#{@client_id}&response_type=code&scope=order.list&redirect_uri=#{@redirect_uri}"
    redirect(conn, external: url)
  end

  def callback(conn, %{"code" => code}) do
    headers = [{"Content-Type", "application/x-www-form-urlencoded"}]
    body = URI.encode_query(%{
      client_key: @client_id,
      client_secret: @client_secret,
      code: code,
      grant_type: "authorization_code",
      redirect_uri: @redirect_uri
    })

    {:ok, res} = HTTPoison.post("https://open-api.tiktok.com/oauth/access_token/", body, headers)
    {:ok, %{"data" => %{"access_token" => token}}} = Jason.decode(res.body)

    conn
    |> put_session(:access_token, token)
    |> redirect(to: "/orders")
  end
end
