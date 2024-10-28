using BaiTap4.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;

namespace BaiTap4.Controllers;

public class DashboardController : Controller
{
    QlbanVaLiContext db = new QlbanVaLiContext();
    
    public IActionResult Index()
    {
        return View();
    }
    
    public IActionResult ProductTable()
    {
        var lstsanpham = db.TDanhMucSps.AsNoTracking().OrderBy(x => x.TenSp);
        return View(lstsanpham);
    }
}