defmodule Registration do
  @moduledoc """
  Provides registration and verification of registration status.
  Uses libraries HTTPotion and Poison to send requests and parse json, respectively
  """

  @host "https://cit-home1.herokuapp.com"
  @register "/api/register"
  @check "/api/check_me"
  @sending_data %{"first_name" => "Alexey", "last_name" => "Patrikeev", "group" => "43506/3"}
  @request_headers ["User-Agent": "My Awesome App", "Content-Type": "application/json"]

  def run do
    HTTPotion.start
    IO.puts("Register response:\n" <> Registration.send_post.body)
    IO.puts("Check response:\n" <> Registration.check)
  end

  @doc """
  Sends a post request to the specified address with the specified parameters 
  """
  def send_post do
    HTTPotion.post(@host <> @register, [body: Poison.encode!(@sending_data), headers: @request_headers])
  end

  @doc """
  Sends a get request to verify registration
  """
  def check do
    HTTPotion.get(@host <> @check).body |> Poison.decode!
  end
end