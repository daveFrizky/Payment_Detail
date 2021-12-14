using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.Json.Serialization;
using System.Threading.Tasks;

namespace PaymentAPI.Configuration
{
    public class AuthResult
    {
        public string username { get; set; }
        public string Token { get; set; }
        public string RefreshToken { get; set; }
        public bool Success { get; set; }

        public List<string> Errors { get; set; }
    }
}
