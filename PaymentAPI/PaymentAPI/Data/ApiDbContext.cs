using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;
using PaymentAPI.Models;

namespace PaymentAPI.Data
{
     public class ApiDbContext : IdentityDbContext
    {
        public  DbSet<Payment_details> Payment_Details { get; set; }
        public virtual DbSet<RefreshToken> RefreshToken { get; set; }
        public ApiDbContext(DbContextOptions<ApiDbContext> options) : base(options)
        {
        }
    }
}