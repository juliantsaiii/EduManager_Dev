using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Model;
using IBLL;
using BLL;
using System.Diagnostics;
using System.Runtime.Serialization.Json;
using System.Text;
using System.IO;
using Newtonsoft.Json.Linq;
using Newtonsoft.Json;



namespace Archive.Controllers
{
    public class ComPersonController : Controller
    {
        //
        // GET: /ComPerson/
        IHandleService handleservice = new HandleService(); 
        IResumeService resumeservice = new ResumeService();
        IAssessService assessservice = new AssessService();
        IRelationInfoService relationinfoservice = new RelationInfoService();
        IPersonService personservice = new PersonService();
        IFirstFormService firstformservice = new FirstFormService();
        IFourFormsService fourformservice = new FourFormsService();
        IAdjustService adjustservice = new AdjustService();
        IAccountInfoService accountinfoservice = new AccountInfoService();
        IBriberyService briberyservice = new BriberyService();
        ICaseInfoService caseinfoservice = new CasePersonService();
        IClueService clueinfoservice = new ClueService();
        ICrimeInfoService crimeinfoservice = new CrimeInfoService();
        IAssetCaseInfoService assetcaseservice = new AssetCaseInfoService();
        IClueLinkService cluelinkservice = new ClueLinkService();
     
        ITalkQueryService TalkQueryservice = new TalkQueryService();
        
        public JsonResult GetResumeList(Guid ID)
        {
            int pageIndex = Request["page"] == null ? 1 : int.Parse(Request["page"]);
            int pageSize = Request["rows"] == null ? 30 : int.Parse(Request["rows"]);
            string sort = Request["sort"];
            string direction = Request["order"];
            int total = 0;
            string sql;
            //Guid personid = new Guid();
            //if ((string)Request["ID"] != "")
            //{
            //    personid = new Guid((string)Request["ID"]);
            //}
            IEnumerable<Resume> temp = null;
            sql = "SELECT * FROM Resume where IsDeleted=0 and PersonID='" + ID + "'order by StartDate";
            temp = resumeservice.SqlQuery(sql);
            total = temp.Count();
            var resume = temp.Skip<Resume>((pageIndex - 1) * pageSize).Take<Resume>(pageSize);
            var data = new
            {
                total = total,
                rows = resume.ToList<Resume>()
            };

            return Json(data, JsonRequestBehavior.AllowGet);
        }
        public JsonResult GetRelationList(Guid ID)
        {
            int pageIndex = Request["page"] == null ? 1 : int.Parse(Request["page"]);
            int pageSize = Request["rows"] == null ? 30 : int.Parse(Request["rows"]);
            string sort = Request["sort"];
            string direction = Request["order"];
            int total = 0;
            string sql;
           
            IEnumerable<RelationInfo> temp = null;
            sql = "SELECT * FROM RelationInfo where IsDeleted=0 and PersonID='" + ID + "'";
            temp = relationinfoservice.SqlQuery(sql);
            total = temp.Count();
            var relationinfo = temp.Skip<RelationInfo>((pageIndex - 1) * pageSize).Take<RelationInfo>(pageSize);
            var data = new
            {
                total = total,
                rows = relationinfo.ToList<RelationInfo>()
            };

            return Json(data, JsonRequestBehavior.AllowGet);
        }
        public JsonResult GetTalkQueryList(Guid ID)
        {
            int pageIndex = Request["page"] == null ? 1 : int.Parse(Request["page"]);
            int pageSize = Request["rows"] == null ? 30 : int.Parse(Request["rows"]);
            string sort = Request["sort"];
            string direction = Request["order"];

            int total = 0;
            string sql;
            IEnumerable<TalkQuery> temp = null;

            sql = "SELECT * FROM TalkQuery where  IsDeleted=0  and PersonID = '" + ID + "'order by Timestamp desc ";
            temp = TalkQueryservice.SqlQuery(sql);
            total = temp.Count();
            var TalkQuery = temp.Skip<TalkQuery>((pageIndex - 1) * pageSize).Take<TalkQuery>(pageSize);
            var data = new
            {
                total = total,
                rows = TalkQuery.ToList<TalkQuery>()
            };

            return Json(data, JsonRequestBehavior.AllowGet);
        }
        public JsonResult GetFirstFormList(Guid ID)
        {
            int pageIndex = Request["page"] == null ? 1 : int.Parse(Request["page"]);
            int pageSize = Request["rows"] == null ? 30 : int.Parse(Request["rows"]);
            string sort = Request["sort"];
            string direction = Request["order"];
          
            int total = 0;
            string sql;
            IEnumerable<FirstForm> temp = null;

            sql = "SELECT * FROM FirstForm where  IsDeleted=0  and PersonID = '" + ID + "'order by HandleTime desc ";
            temp = firstformservice.SqlQuery(sql);
            total = temp.Count();
            var firstform = temp.Skip<FirstForm>((pageIndex - 1) * pageSize).Take<FirstForm>(pageSize);
            var data = new
            {
                total = total,
                rows = firstform.ToList<FirstForm>()
            };

            return Json(data, JsonRequestBehavior.AllowGet);
        }
        public JsonResult GetFourFormsList(Guid ID)//综合查询界面返回个人四种形态信息列表
        {
            int pageIndex = Request["page"] == null ? 1 : int.Parse(Request["page"]);
            int pageSize = Request["rows"] == null ? 30 : int.Parse(Request["rows"]);
            string sort = Request["sort"];
            string direction = Request["order"];
            int total = 0;
            string sql;
            IEnumerable<FourForms> temp = null;

            sql = "SELECT * FROM FourForms where  IsDeleted=0  and PersonID = '" + ID + "'order by Handle1Time desc ";
            temp = fourformservice.SqlQuery(sql);
            total = temp.Count();
            var a = temp.ToList<FourForms>();
            //var fourforms = temp.Skip<FourForms>((pageIndex - 1) * pageSize).Take<FourForms>(pageSize);
            //var data = new
            //{
            //    total = total,
            //    rows = fourforms.ToList<FourForms>()
            //};    
            List<FourFormsType> temp1 = new List<FourFormsType>();
            foreach (var b in a)
            {
                FourFormsType item = new FourFormsType();
                item.ID = b.ID;
                item.PersonID = b.PersonID;
                item.HandleDept = b.HandleDept;
                item.HandleStaff = b.HandleStaff;
                item.AcceptTime = b.AcceptTime;
                item.IsDeleted = b.IsDeleted;
                item.Timestamp = b.Timestamp;
                item.PersonLevel = b.PersonLevel;
                item.PersonUnit = b.PersonUnit;
                item.PersonName = b.PersonName;
                item.ClueSource = b.ClueSource;
                item.MainClue = b.MainClue;
                //获取最新处置时间
                string Handle1Time = b.Handle1Time == null ? "" : b.Handle1Time;
                string Handle2Time = b.Handle2Time == null ? "" : b.Handle2Time;
                string Handle3Time = b.Handle3Time == null ? "" : b.Handle3Time;
                string Handle4Time = b.Handle4Time == null ? "" : b.Handle4Time;
                string HandleType1First = b.HandleType1First == null ? "" : b.HandleType1First;
                string HandleType2First = b.HandleType2First == null ? "" : b.HandleType2First;
                string HandleType3First = b.HandleType3First == null ? "" : b.HandleType3First;
                string HandleType4First = b.HandleType4First == null ? "" : b.HandleType4First;
                //获取最新处置时间
                //b.Handle1Time.Equals(null)
                if (!Handle1Time.Equals(""))
                {
                    item.HandleTime = Handle1Time;
                }
                if (!Handle2Time.Equals(""))
                {
                    item.HandleTime = Handle2Time;
                }
                if (Handle3Time != "")
                {
                    item.HandleTime = Handle3Time;
                }
                if (!Handle4Time.Equals(""))
                {
                    item.HandleTime = Handle4Time;
                }
                //获取最新处置方式
                if (HandleType1First != "")
                {
                    item.HandleType = HandleType1First;
                }
                if (HandleType2First != "")
                {
                    item.HandleType = HandleType2First;
                }
                if (HandleType3First != "")
                {
                    item.HandleType = HandleType3First;
                }
                if (HandleType4First != "")
                {
                    item.HandleType = HandleType4First;
                }
                temp1.Add(item);

            }
            var temp2 = temp1.Skip<FourFormsType>((pageIndex - 1) * pageSize).Take<FourFormsType>(pageSize);
            var data = new
            {
                total = total,
                rows = temp2.ToList<FourFormsType>()
            };
            return Json(data, JsonRequestBehavior.AllowGet);
        }       
        public JsonResult GetAccountInfoList(Guid ID)
        {
            int pageIndex = Request["page"] == null ? 1 : int.Parse(Request["page"]);
            int pageSize = Request["rows"] == null ? 30 : int.Parse(Request["rows"]);
            string sort = Request["sort"];
            string direction = Request["order"];
           
            int total = 0;
            string sql;
            IEnumerable<AccountInfo> temp = null;
            sql = "SELECT * FROM AccountInfo where IsDeleted=0  and PersonID='" + ID + "' order by HandleTime desc ";
            temp = accountinfoservice.SqlQuery(sql);
            total = temp.Count();
            var accountinfo = temp.Skip<AccountInfo>((pageIndex - 1) * pageSize).Take<AccountInfo>(pageSize);
            var data = new
            {
                total = total,
                rows = accountinfo.ToList<AccountInfo>()
            };

            return Json(data, JsonRequestBehavior.AllowGet);
        }
        public JsonResult GetCaseInfoList(Guid ID)
        {
            int pageIndex = Request["page"] == null ? 1 : int.Parse(Request["page"]);
            int pageSize = Request["rows"] == null ? 30 : int.Parse(Request["rows"]);
            string sort = Request["sort"];
            string direction = Request["order"];
         
            int total = 0;
            string sql;
            IEnumerable<CaseInfo> temp = null;
            sql = "SELECT * FROM CaseInfo where  IsDeleted=0  and  PersonID='" + ID + "'order by FilingTime desc";
         
            temp = caseinfoservice.SqlQuery(sql);
            total = temp.Count();
            var a = temp.ToList<CaseInfo>();//重新整理，拼接字符串后用新的模型传输
            //var caseinfo = temp.Skip<CaseInfo>((pageIndex - 1) * pageSize).Take<CaseInfo>(pageSize);
            //var data = new
            //{
            //    total = total,
            //    rows = caseinfo.ToList<CaseInfo>()
            //};

            //return Json(data, JsonRequestBehavior.AllowGet);
            List<CasePartyandGovenPunish> temp1 = new List<CasePartyandGovenPunish>();
            foreach (var b in a)
            {
                CasePartyandGovenPunish item = new CasePartyandGovenPunish();
                item.ID = b.ID;
                item.PersonID = b.PersonID;
                item.HandleDept = b.HandleDept;
                item.HandleStaff = b.HandleStaff;
                item.FilingTime = b.FilingTime;
                item.PersonName = b.PersonName;
                item.PersonUnit = b.PersonUnit;
                item.PersonLevel = b.PersonLevel;
                item.PartyPunish = b.PartyPunish;
                item.GovenPunish = b.GovenPunish;
                item.ClosingTime = b.ClosingTime;
                item.CaseSource = b.CaseSource;
                string PartyPunish1 = b.PartyPunish == null ? "" : b.PartyPunish;
                string GovenPunish1 = b.GovenPunish == null ? "" : b.GovenPunish;
                if (GovenPunish1 == "" && PartyPunish1 == "")
                {
                    item.PartyandGovenPunish = "";
                }
                else if (PartyPunish1 != "" && GovenPunish1 == "")
                {
                    item.PartyandGovenPunish = b.PartyPunish;
                }
                else if (PartyPunish1 == "" && GovenPunish1 != "")
                {
                    item.PartyandGovenPunish = b.GovenPunish;
                }
                else
                {
                    item.PartyandGovenPunish = b.PartyPunish + "、" + b.GovenPunish;
                }
                temp1.Add(item);
            }
            var temp2 = temp1.Skip<CasePartyandGovenPunish>((pageIndex - 1) * pageSize).Take<CasePartyandGovenPunish>(pageSize);
            var data = new
            {
                total = total,
                rows = temp2.ToList<CasePartyandGovenPunish>()
            };
            return Json(data, JsonRequestBehavior.AllowGet);
        }
        public JsonResult GetAdjustInfoList(Guid ID)
        {
            int pageIndex = Request["page"] == null ? 1 : int.Parse(Request["page"]);
            int pageSize = Request["rows"] == null ? 30 : int.Parse(Request["rows"]);
            string sort = Request["sort"];
            string direction = Request["order"];
          
            int total = 0;
            string sql;
            IEnumerable<AdjustInfo> temp = null;

            sql = "SELECT * FROM AdjustInfo where  IsDeleted=0  and PersonID='" + ID + "'order by AdjustTime desc";
            temp = adjustservice.SqlQuery(sql);
            total = temp.Count();
            var adjustinfo = temp.Skip<AdjustInfo>((pageIndex - 1) * pageSize).Take<AdjustInfo>(pageSize);
            var data = new
            {
                total = total,
                rows = adjustinfo.ToList<AdjustInfo>()
            };

            return Json(data, JsonRequestBehavior.AllowGet);
        }
        public JsonResult GetCrimeInfoList(Guid ID)
        {
            int pageIndex = Request["page"] == null ? 1 : int.Parse(Request["page"]);
            int pageSize = Request["rows"] == null ? 30 : int.Parse(Request["rows"]);
            string sort = Request["sort"];
            string direction = Request["order"];
       
            int total = 0;
            string sql;
            IEnumerable<CrimeInfo> temp = null;

            sql = "SELECT * FROM CrimeInfo where  IsDeleted=0  and  PersonID='" + ID + "'order by ReportDate desc";
            temp = crimeinfoservice.SqlQuery(sql);
            total = temp.Count();
            var crimeinfo = temp.Skip<CrimeInfo>((pageIndex - 1) * pageSize).Take<CrimeInfo>(pageSize);
            var data = new
            {
                total = total,
                rows = crimeinfo.ToList<CrimeInfo>()
            };

            return Json(data, JsonRequestBehavior.AllowGet);
        }
        public JsonResult GetClueInfoList(Guid ID)
        {
            int pageIndex = Request["page"] == null ? 1 : int.Parse(Request["page"]);
            int pageSize = Request["rows"] == null ? 30 : int.Parse(Request["rows"]);
            string sort = Request["sort"];
            string direction = Request["order"];        
            int total = 0;
            string sql;
            IEnumerable<ClueInfo> temp = null;


            sql = "SELECT * FROM ClueInfo where  IsDeleted=0  and PersonID='" + ID + "'order by ClueDate desc";
            temp = clueinfoservice.SqlQuery(sql);
            total = temp.Count();
            var clueinfo = temp.Skip<ClueInfo>((pageIndex - 1) * pageSize).Take<ClueInfo>(pageSize);
            var data = new
            {
                total = total,
                rows = clueinfo.ToList<ClueInfo>()
            };

            return Json(data, JsonRequestBehavior.AllowGet);
        }
        public JsonResult GetClueLinkList(Guid ID)//综合查询里面获取问题线索列表
        {
            int pageIndex = Request["page"] == null ? 1 : int.Parse(Request["page"]);
            int pageSize = Request["rows"] == null ? 30 : int.Parse(Request["rows"]);
            string sort = Request["sort"];
            string direction = Request["order"];
            int total = 0;
            string sql;
            IEnumerable<ClueLink> temp = null;


            sql = "SELECT * FROM ClueLink where  IsDeleted=0  and PersonID='" + ID + "'order by ClueDate desc";
            temp = cluelinkservice.SqlQuery(sql);
            total = temp.Count();
            var clueinfo = temp.Skip<ClueLink>((pageIndex - 1) * pageSize).Take<ClueLink>(pageSize);
            var data = new
            {
                total = total,
                rows = clueinfo.ToList<ClueLink>()
            };

            return Json(data, JsonRequestBehavior.AllowGet);
        }
        /// <summary>
        /// /////////////////////////////////////////////////////////缺线索处置
        /// 
        public JsonResult GetHandleList(Guid ID)
        {
            int pageIndex = Request["page"] == null ? 1 : int.Parse(Request["page"]);
            int pageSize = Request["rows"] == null ? 30 : int.Parse(Request["rows"]);
            string sort = Request["sort"];
            string direction = Request["order"];
          
            int total = 0;
            string sql;
            IEnumerable<Handle> temp = null;

            sql = "SELECT * FROM Handle where  IsDeleted=0  and PersonID='" + ID + "'";
            temp = handleservice.SqlQuery(sql);
            total = temp.Count();
            var handle = temp.Skip<Handle>((pageIndex - 1) * pageSize).Take<Handle>(pageSize);
            var data = new
            {
                total = total,
                rows = handle.ToList<Handle>()
            };

            return Json(data, JsonRequestBehavior.AllowGet);
        }
        /// </summary>
        /// <returns></returns>
        /// 
        public JsonResult GetAssetList(Guid ID)
        {
            int pageIndex = Request["page"] == null ? 1 : int.Parse(Request["page"]);
            int pageSize = Request["rows"] == null ? 30 : int.Parse(Request["rows"]);
            string sort = Request["sort"];
            string direction = Request["order"];
           
            int total = 0;
            string sql;
            IEnumerable<AssetCaseInfo> temp = null;
            sql = "SELECT * FROM AssetCaseInfo where IsDeleted=0 and PersonID='" + ID + "' order by FormedDate desc";

            temp = assetcaseservice.SqlQuery(sql);
            total = temp.Count();
            var assetcaseinfo = temp.Skip<AssetCaseInfo>((pageIndex - 1) * pageSize).Take<AssetCaseInfo>(pageSize);
            var data = new
            {
                total = total,
                rows = assetcaseinfo.ToList<AssetCaseInfo>()
            };

            return Json(data, JsonRequestBehavior.AllowGet);
        }
        public JsonResult GetBriberyList(Guid ID) 
        {
            int pageIndex = Request["page"] == null ? 1 : int.Parse(Request["page"]);
            int pageSize = Request["rows"] == null ? 30 : int.Parse(Request["rows"]);
            string sort = Request["sort"];
            string direction = Request["order"];         
            int total = 0;
            string sql;
            IEnumerable<BriberyInfo> temp = null;

            sql = "SELECT * FROM BriberyInfo where  IsDeleted=0 and PersonID='" + ID + "' ";
            temp = briberyservice.SqlQuery(sql);
            total = temp.Count();
            var bribery = temp.Skip<BriberyInfo>((pageIndex - 1) * pageSize).Take<BriberyInfo>(pageSize);
            var data = new
            {
                total = total,
                rows = bribery.ToList<BriberyInfo>()
            };

            return Json(data, JsonRequestBehavior.AllowGet);
        }
      
        private T JsonDeserialize<T>(string jsonString)
        {
            DataContractJsonSerializer ser = new DataContractJsonSerializer(typeof(T));
            MemoryStream ms = new MemoryStream(Encoding.UTF8.GetBytes(jsonString));
            T obj = (T)ser.ReadObject(ms);
            return obj;
        }

	}
}