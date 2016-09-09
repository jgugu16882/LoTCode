﻿using PawChina.Model;
using System.Web.Mvc;
using System.Threading.Tasks;
using PawChina.IOC;
using PawChina.IBLL;
using System;

namespace PawChina.UI.Areas.PawRoot.Controllers
{
    public class DisPhotoController : AdminController<NoteDisPlayImg>
    {
        public static INoteDisPlayImgBLL NoteDisPlayImgBLL = Container.Resolve<INoteDisPlayImgBLL>();

        /// <summary>
        /// 列表页面
        /// </summary>
        /// <returns></returns>
        public override ActionResult Index()
        {
            return View();
        }

        /// <summary>
        /// 添加页面
        /// </summary>
        /// <returns></returns>
        public override ActionResult Add()
        {
            return View();
        }

        [HttpPost]
        public override async Task<JsonResult> Add(NoteDisPlayImg model)
        {
            AjaxOption<object> obj = new AjaxOption<object>();

            return Json(obj);
        }

        /// <summary>
        /// 编辑页面
        /// </summary>
        /// <returns></returns>
        public override async Task<ActionResult> Edit(int id = 0)
        {
            if (id <= 0)
            {
                return RedirectToAction("Add");
            }
            var model = await NoteDisPlayImgBLL.GetAsync(id);
            return View(model);
        }
        [HttpPost]
        public override async Task<JsonResult> Edit(NoteDisPlayImg model)
        {
            AjaxOption<object> obj = new AjaxOption<object>();

            return Json(obj);
        }

        /// <summary>
        /// 批量更新~恢复或者删除
        /// </summary>
        /// <param name="ids"></param>
        /// <param name="status"></param>
        /// <returns></returns>
        public override async Task<JsonResult> UpdateList(string ids, StatusEnum status)
        {
            AjaxOption<object> obj = new AjaxOption<object>();
            if (ids.IsNullOrWhiteSpace())
            {
                obj.Msg = "选中项不能为空";
                return Json(obj);
            }
            //int i = await NoteDisPlayImgBLL.ExecuteAsync("update NoteInfo set NDataStatus=@NDataStatus where NId in @NIds", new
            //{
            //    NDataStatus = status,
            //    NIds = ids.SplitToIntList()
            //});
            //obj.Status = true;
            //obj.Msg = string.Format("更新了 {0} 条数据", i);
            return Json(obj);
        }

        /// <summary>
        /// 查询笔记页面
        /// </summary>
        /// <param name="model"></param>
        /// <returns></returns>
        [HttpPost]
        public override async Task<ActionResult> Query(QueryModel model)
        {
            var obj = new AjaxOption<object>();
            if (model == null)
            {
                obj.Msg = "参数不能为空";
                return Json(obj);
            }
            //起始时间大于结束时间
            if (model.StartTime > model.EndTime)
            {
                obj.Msg = "请检查开始或结束时间！";
                return Json(obj);
            }
            return Content(await NoteDisPlayImgBLL.QueryAsync(model));
        }
    }
}