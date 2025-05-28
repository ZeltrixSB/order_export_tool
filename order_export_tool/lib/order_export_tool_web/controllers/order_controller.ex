
defmodule OrderExportToolWeb.OrderController do
  use OrderExportToolWeb, :controller

  def dashboard(conn, _params) do
    token = get_session(conn, :access_token)
    orders = [
      %{order_id: "ORD123", customer_name: "Ali", phone: "0123456789", address: "Jalan Merdeka 1"},
      %{order_id: "ORD124", customer_name: "Siti", phone: "0198765432", address: "Jalan Damai 2"}
    ]
    conn |> render("dashboard.html", orders: orders)
  end

  def export(conn, _params) do
    data = [
      ["Order ID", "Customer Name", "Phone", "Address"],
      ["ORD123", "Ali", "0123456789", "Jalan Merdeka 1"],
      ["ORD124", "Siti", "0198765432", "Jalan Damai 2"]
    ]

    csv_content = data |> Enum.map(&Enum.join(&1, ",")) |> Enum.join("\n")

    conn
    |> put_resp_content_type("text/csv")
    |> put_resp_header("content-disposition", "attachment; filename=orders.csv")
    |> send_resp(200, csv_content)
  end
end
