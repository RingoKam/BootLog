using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace BootLog.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }

        public ActionResult Mock1()
        {
            ViewBag.lorem =
                "Lorem ipsum dolor sit amet, harum labore ex est, at mei fugit referrentur consectetuer. Pro te elitr utamur legendos. Prima vituperatoribus id duo. Quo ei augue ocurreret splendide, an sea magna postea mentitum, inimicus contentiones eam ex. Cum facer sanctus ponderum et, ut docendi iudicabit has. Eu qui nibh utroque, ne nec duis labitur. Ei odio scriptorem vis, usu tempor pericula iudicabit cu, vel ut iudico dicunt. An nec maiorum fastidii appareat, id cum feugiat convenire. Duo ei porro facilisi indoctum. Ius liber possit epicurei ea. In wisi movet libris cum, unum magna euripidis pri no, id nemore temporibus vel. Equidem deserunt et eum, his et sint legimus. Ex qui dissentiunt conclusionemque, ne meis idque est. Posidonium necessitatibus mei eu, animal antiopam ea sed, no per veri nusquam offendit. Nam alii quidam accusam ad, nam id suscipit gloriatur interesset, ad eum aliquip detraxit. Graece audire cu has, eos corpora deleniti repudiandae et, mutat mediocritatem ex vel. Ut cum consul vivendum. Est ei atqui congue. Accusamus accommodare at est. Eam ne viderer maluisset, qui harum aliquip pertinax ne. Te malis ullum sea. Pri in equidem philosophia, in vim velit facilisis evertitur, eum eu vero nobis. Recusabo temporibus no has, eum enim eligendi noluisse ex. Mel imperdiet quaerendum at, nisl detracto eam ex, wisi ceteros no eam.";
            return View();
        }

        public ActionResult Mock2()
        {
            ViewBag.lorem =
                "Lorem ipsum dolor sit amet, harum labore ex est, at mei fugit referrentur consectetuer. Pro te elitr utamur legendos. Prima vituperatoribus id duo. Quo ei augue ocurreret splendide, an sea magna postea mentitum, inimicus contentiones eam ex. Cum facer sanctus ponderum et, ut docendi iudicabit has. Eu qui nibh utroque, ne nec duis labitur. Ei odio scriptorem vis, usu tempor pericula iudicabit cu, vel ut iudico dicunt. An nec maiorum fastidii appareat, id cum feugiat convenire. Duo ei porro facilisi indoctum. Ius liber possit epicurei ea. In wisi movet libris cum, unum magna euripidis pri no, id nemore temporibus vel. Equidem deserunt et eum, his et sint legimus. Ex qui dissentiunt conclusionemque, ne meis idque est. Posidonium necessitatibus mei eu, animal antiopam ea sed, no per veri nusquam offendit. Nam alii quidam accusam ad, nam id suscipit gloriatur interesset, ad eum aliquip detraxit. Graece audire cu has, eos corpora deleniti repudiandae et, mutat mediocritatem ex vel. Ut cum consul vivendum. Est ei atqui congue. Accusamus accommodare at est. Eam ne viderer maluisset, qui harum aliquip pertinax ne. Te malis ullum sea. Pri in equidem philosophia, in vim velit facilisis evertitur, eum eu vero nobis. Recusabo temporibus no has, eum enim eligendi noluisse ex. Mel imperdiet quaerendum at, nisl detracto eam ex, wisi ceteros no eam.";
            return View();
        }
    }
}