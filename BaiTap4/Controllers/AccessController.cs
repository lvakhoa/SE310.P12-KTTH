using BaiTap4.Models;
using Microsoft.AspNetCore.Mvc;

namespace BaiTap4.Controllers;

public class AccessController : Controller
{
    QlbanVaLiContext _db = new QlbanVaLiContext();

    [HttpGet]
    public IActionResult Login()
    {
        if (HttpContext.Session.GetString("UserName") == null)
        {
            return View();
        }
        else
        {
            return RedirectToAction("Index", "Home");
        }
    }

    [HttpPost]
    public IActionResult Login(TUser user)
    {
        if (HttpContext.Session.GetString("UserName") == null)
        {
            var list = _db.TUsers.ToList();
            var u = _db.TUsers.FirstOrDefault(x => x.Username.Equals(user.Username) && x.Password.Equals(user.Password));

            if (u != null)
            {
                HttpContext.Session.SetString("UserName", u.Username);
                return RedirectToAction("Index", "Home");
            }
        }

        return View();
    }
    
    public IActionResult Logout()
    {
        HttpContext.Session.Clear();
        HttpContext.Session.Remove("UserName");
        return RedirectToAction("Login", "Access");
    }
}