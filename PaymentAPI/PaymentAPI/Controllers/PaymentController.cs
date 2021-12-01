using Microsoft.AspNetCore.Authentication.JwtBearer;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using System.Threading.Tasks;
using PaymentAPI.Models;
using PaymentAPI.Data;
using System.Collections.Generic;
using System;

namespace PaymentAPI.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    [Authorize(AuthenticationSchemes = JwtBearerDefaults.AuthenticationScheme)]
    public class PaymentController : ControllerBase
    {
        private paymentDetailContext _context;

        public PaymentController(paymentDetailContext context)
        {
            _context = context;
        }

        [HttpGet(Name = "Get All")]
        public ActionResult<IEnumerable<Payment_details>> GetEmployeeItems()
        {
            _context = HttpContext.RequestServices.GetService(typeof(paymentDetailContext)) as paymentDetailContext;
            return _context.GetAllPayment();
        }

        [HttpGet("{id}", Name = "Get where")]
        public ActionResult<IEnumerable<Payment_details>> GetEmployeeItem(String id)
        {
            _context = HttpContext.RequestServices.GetService(typeof(paymentDetailContext)) as paymentDetailContext;
            return _context.GetPaymentById(id);

        }

        [HttpPost(Name = "Add PaymentDetail")]
        public ActionResult<string> AddMovies(Payment_details item)
        {
            _context = HttpContext.RequestServices.GetService(typeof(paymentDetailContext)) as paymentDetailContext;
            return _context.AddPaymentDetail(item);

        }

        [HttpPut("{id}", Name = "Update payment_detail By Id")]
        public ActionResult<string> UpdateMoviesById(string id, Payment_details item)
        {
            _context = HttpContext.RequestServices.GetService(typeof(paymentDetailContext)) as paymentDetailContext;
            return _context.UpdateById(id, item);

        }

        [HttpDelete("{id}", Name = "Delete payment_detail By Id")]
        public ActionResult<string> DeleteMoviesById(string id)
        {
            _context = HttpContext.RequestServices.GetService(typeof(paymentDetailContext)) as paymentDetailContext;
            return _context.DeleteById(id);

        }
    }
}
