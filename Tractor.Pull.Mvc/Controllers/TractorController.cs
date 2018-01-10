using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Tractor.Pull.Domain;
using Tractor.Pull.Mvc.Models;
using Tractor.Pull.Repository;

namespace Tractor.Pull.Mvc.Controllers
{
    public class TractorController : Controller
    {
        // GET: Tractor
        public ActionResult Index()
        {
            using (var dbContext = new TractorContext())
            {
                return View(TractorViewModel.Translate(new TractorRepository(dbContext).GetTractors()));
            }
                
        }
    }
}