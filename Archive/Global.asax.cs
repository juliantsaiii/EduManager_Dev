using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;

namespace Archive
{
    public class MvcApplication : System.Web.HttpApplication
    {
        protected void Application_Start()
        {
            AreaRegistration.RegisterAllAreas();
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            RegisterView();//注册视图访问规则
        }

            protected void RegisterView()
            {
                ViewEngines.Engines.Clear();//移除默认视图配置
                ViewEngines.Engines.Add(new Archive.App_Start.ViewEngine());//注册自己编写的视图格式
            }
        }
    }

