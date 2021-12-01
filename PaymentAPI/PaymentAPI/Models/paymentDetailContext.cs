using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using MySql.Data.MySqlClient;

namespace PaymentAPI.Models
{
    public class paymentDetailContext
    {
        public string ConnectionString { get; set; }

        public paymentDetailContext(string connectionString)
        {
            this.ConnectionString = connectionString;
        }

        private MySqlConnection GetConnection()
        {
            return new MySqlConnection(ConnectionString);
        }

        public List<Payment_details> GetAllPayment()
        {
            List<Payment_details> list = new List<Payment_details>();
            using (MySqlConnection conn = GetConnection())
            {
                conn.Open();
                MySqlCommand cmd = new MySqlCommand("SELECT * FROM payment_detail", conn);
                using (MySqlDataReader reader = cmd.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        list.Add(new Payment_details()
                        {
                            PaymentDetailId = reader.GetInt32("PaymentDetailId"),
                            cardOwnerName = reader.GetString("cardOwnerName"),
                            cardNumber = reader.GetString("cardNumber"),
                            expirationDate = reader.GetString("expirationDate"),
                            securityCode = reader.GetString("securityCode")

                        });
                    }
                }
            }
            return list;
        }

        public List<Payment_details> GetPaymentById(string id)
        {
            List<Payment_details> list = new List<Payment_details>();
            using (MySqlConnection conn = GetConnection())
            {
                conn.Open();
                MySqlCommand cmd = new MySqlCommand("SELECT * FROM payment_detail where paymentDetailId = @id", conn);
                cmd.Parameters.AddWithValue("@id", id);
                using (MySqlDataReader reader = cmd.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        list.Add(new Payment_details()
                        {
                            PaymentDetailId = reader.GetInt32("PaymentDetailId"),
                            cardOwnerName = reader.GetString("cardOwnerName"),
                            cardNumber = reader.GetString("cardNumber"),
                            expirationDate = reader.GetString("expirationDate"),
                            securityCode = reader.GetString("securityCode")

                        });
                    }
                }
            }
            return list;
        }

        public JsonResult AddPaymentDetail(Payment_details item)
        {
            string result;
            using (MySqlConnection conn = GetConnection())
            {
                conn.Open();

                MySqlCommand cmd = new MySqlCommand(
                    $"INSERT INTO payment_detail (cardOwnerName,cardNumber,expirationDate,securityCode) VALUES ('{item.cardOwnerName}','{item.cardNumber}','{item.expirationDate}" +
                    $"','{item.securityCode}')", conn);
                using (MySqlDataReader reader = cmd.ExecuteReader())
                {
                    if (reader != null)
                    {
                        result = "Data Added!";
                    }
                    else
                    {
                        result = "Something Went Wrong";
                    }
                }
            }
            return new JsonResult(result);
        }

        public JsonResult UpdateById(string id, Payment_details item)
        {
            string result;
            using (MySqlConnection conn = GetConnection())
            {
                conn.Open();
                MySqlCommand cmd = new MySqlCommand(
                    $"UPDATE payment_detail SET  paymentDetailId={item.PaymentDetailId},cardOwnerName='{item.cardOwnerName}',cardNumber='{item.cardNumber}',expirationDate='{item.expirationDate}" +
                    $"',securityCode='{item.securityCode}'  WHERE paymentDetailId = @id", conn);
                cmd.Parameters.AddWithValue("@id", id);
                using (MySqlDataReader reader = cmd.ExecuteReader())
                {
                    if (reader != null)
                    {
                        result = "Data Updated!";
                    }
                    else
                    {
                        result = "Something Went Wrong";
                    }
                }
            }
            return new JsonResult(result);
        }

        public JsonResult DeleteById(string id)
        {
            string result;
            using (MySqlConnection conn = GetConnection())
            {
                conn.Open();
                MySqlCommand cmd = new MySqlCommand("DELETE FROM payment_detail WHERE paymentDetailId = @id", conn);
                cmd.Parameters.AddWithValue("@id", id);
                using (MySqlDataReader reader = cmd.ExecuteReader())
                {
                    if (reader != null)
                    {
                        result = "Data Deleted!";
                    }
                    else
                    {
                        result = "Something Went Wrong!";
                    }
                }
            }
            return new JsonResult(result);
        }
    }
}
