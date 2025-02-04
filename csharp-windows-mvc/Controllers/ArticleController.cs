using Microsoft.AspNetCore.Mvc;

namespace ArticleRegistrationApp.Controllers
{
  public class ArticleController : Controller
  {
    public IActionResult Index()
    {
      return View();
    }

    [HttpPost]
    public IActionResult RegisterArticle(string name, decimal amount, DateTime expirationDate, decimal price, string type, bool tax, string barcode)
    {
      // Process article registration logic here
      // In a real application, you would save this data to a database

      ViewBag.RegistrationSuccess = true; // Example to pass success status to the view
      return View("Index"); // Return to the registration form view
    }
  }
}
