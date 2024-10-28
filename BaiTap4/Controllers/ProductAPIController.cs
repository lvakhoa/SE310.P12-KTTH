using BaiTap4.Models;
using BaiTap4.Models.ProductModels;
using Microsoft.AspNetCore.Mvc;

namespace BaiTap4.Controllers;

[ApiController]
[Route("api/[controller]")]
public class ProductAPIController : ControllerBase
{
    QlbanVaLiContext db = new QlbanVaLiContext();

    [HttpGet]
    public IEnumerable<Product> GetAllProducts()
    {
        var sanpham = (from p in db.TDanhMucSps
            select new Product
            {
                MaSp = p.MaSp,
                TenSp = p.TenSp,
                MaLoai = p.MaLoai,
                AnhDaiDien = p.AnhDaiDien,
                GiaNhoNhat = p.GiaNhoNhat
            }).ToList();
        return sanpham;
    }
    
    [HttpGet("{maloai}")]
    public IEnumerable<Product> GetAllProducts(string maloai)
    {
        var sanpham = (from p in db.TDanhMucSps
            where p.MaLoai == maloai
            select new Product
            {
                MaSp = p.MaSp,
                TenSp = p.TenSp,
                MaLoai = p.MaLoai,
                AnhDaiDien = p.AnhDaiDien,
                GiaNhoNhat = p.GiaNhoNhat
            }).ToList();
        return sanpham;
    }
}