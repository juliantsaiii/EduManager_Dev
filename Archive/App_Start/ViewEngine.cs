using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Archive.App_Start
{
    public class ViewEngine : RazorViewEngine
    {
        public ViewEngine()
        {
            ViewLocationFormats = new[]
        {
            "~/Views/{1}/{0}.cshtml",
            "~/Views/Shared/{0}.cshtml",
            "~/Views/Staff/{1}/{0}.cshtml",//UserInfo为Controllers控制器下的文件夹
            //可以一直往下添
        };
        }
    }
}
