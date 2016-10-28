package com.fh.controller.user.userinfo;

import java.io.PrintWriter;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.session.Session;
import org.apache.shiro.subject.Subject;

import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.fh.controller.base.BaseController;
import com.fh.entity.Page;
import com.fh.util.AppUtil;
import com.fh.util.ObjectExcelView;
import com.fh.util.Const;
import com.fh.util.PageData;
import com.fh.util.Tools;
import com.fh.util.Jurisdiction;
import com.fh.service.user.userinfo.UserInfoService;

/** 
 * 类名称：UserInfoController
 * 创建人：FH 
 * 创建时间：2016-10-28
 */
@Controller
@RequestMapping(value="/userinfo")
public class UserInfoController extends BaseController {
	
	String menuUrl = "userinfo/list.do"; //菜单地址(权限用)
	@Resource(name="userinfoService")
	private UserInfoService userinfoService;
	
	/**
	 * 新增
	 */
	@RequestMapping(value="/save")
	public ModelAndView save() throws Exception{
		logBefore(logger, "新增UserInfo");
		if(!Jurisdiction.buttonJurisdiction(menuUrl, "add")){return null;} //校验权限
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		pd.put("USERINFO_ID", this.get32UUID());	//主键
		pd.put("CREATEDATETIME", Tools.date2Str(new Date()));	//创建时间
		pd.put("UPDATEDATETIME", Tools.date2Str(new Date()));	//修改时间
		pd.put("CREATEUSER", "");	//创建人
		pd.put("UPDATEUSER", "");	//修改人
		pd.put("USERID", "");	//用户ID
		pd.put("UID", "");	//UID
		pd.put("GOOGLECHECKCODE", "");	//谷歌验证码
		pd.put("EMAILSTATUS", "");	//邮箱激活状态
		pd.put("UUID", "");	//UUID
		pd.put("MOBILESTATUS", "");	//手机激活状态
		pd.put("ISCARDSUBMIT", "");	//证件是否提交
		pd.put("ISCARDAUDIT", "");	//证件是否审核
		pd.put("RECOMMENDEDUID", "");	//推荐人UID
		userinfoService.save(pd);
		mv.addObject("msg","success");
		mv.setViewName("save_result");
		return mv;
	}
	
	/**
	 * 删除
	 */
	@RequestMapping(value="/delete")
	public void delete(PrintWriter out){
		logBefore(logger, "删除UserInfo");
		if(!Jurisdiction.buttonJurisdiction(menuUrl, "del")){return;} //校验权限
		PageData pd = new PageData();
		try{
			pd = this.getPageData();
			userinfoService.delete(pd);
			out.write("success");
			out.close();
		} catch(Exception e){
			logger.error(e.toString(), e);
		}
		
	}
	
	/**
	 * 修改
	 */
	@RequestMapping(value="/edit")
	public ModelAndView edit() throws Exception{
		logBefore(logger, "修改UserInfo");
		if(!Jurisdiction.buttonJurisdiction(menuUrl, "edit")){return null;} //校验权限
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		userinfoService.edit(pd);
		mv.addObject("msg","success");
		mv.setViewName("save_result");
		return mv;
	}
	
	/**
	 * 列表
	 */
	@RequestMapping(value="/list")
	public ModelAndView list(Page page){
		logBefore(logger, "列表UserInfo");
		//if(!Jurisdiction.buttonJurisdiction(menuUrl, "cha")){return null;} //校验权限
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		try{
			pd = this.getPageData();
			page.setPd(pd);
			List<PageData>	varList = userinfoService.list(page);	//列出UserInfo列表
			mv.setViewName("user/userinfo/userinfo_list");
			mv.addObject("varList", varList);
			mv.addObject("pd", pd);
			mv.addObject(Const.SESSION_QX,this.getHC());	//按钮权限
		} catch(Exception e){
			logger.error(e.toString(), e);
		}
		return mv;
	}
	
	/**
	 * 去新增页面
	 */
	@RequestMapping(value="/goAdd")
	public ModelAndView goAdd(){
		logBefore(logger, "去新增UserInfo页面");
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		try {
			mv.setViewName("user/userinfo/userinfo_edit");
			mv.addObject("msg", "save");
			mv.addObject("pd", pd);
		} catch (Exception e) {
			logger.error(e.toString(), e);
		}						
		return mv;
	}	
	
	/**
	 * 去修改页面
	 */
	@RequestMapping(value="/goEdit")
	public ModelAndView goEdit(){
		logBefore(logger, "去修改UserInfo页面");
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		try {
			pd = userinfoService.findById(pd);	//根据ID读取
			mv.setViewName("user/userinfo/userinfo_edit");
			mv.addObject("msg", "edit");
			mv.addObject("pd", pd);
		} catch (Exception e) {
			logger.error(e.toString(), e);
		}						
		return mv;
	}	
	
	/**
	 * 批量删除
	 */
	@RequestMapping(value="/deleteAll")
	@ResponseBody
	public Object deleteAll() {
		logBefore(logger, "批量删除UserInfo");
		if(!Jurisdiction.buttonJurisdiction(menuUrl, "dell")){return null;} //校验权限
		PageData pd = new PageData();		
		Map<String,Object> map = new HashMap<String,Object>();
		try {
			pd = this.getPageData();
			List<PageData> pdList = new ArrayList<PageData>();
			String DATA_IDS = pd.getString("DATA_IDS");
			if(null != DATA_IDS && !"".equals(DATA_IDS)){
				String ArrayDATA_IDS[] = DATA_IDS.split(",");
				userinfoService.deleteAll(ArrayDATA_IDS);
				pd.put("msg", "ok");
			}else{
				pd.put("msg", "no");
			}
			pdList.add(pd);
			map.put("list", pdList);
		} catch (Exception e) {
			logger.error(e.toString(), e);
		} finally {
			logAfter(logger);
		}
		return AppUtil.returnObject(pd, map);
	}
	
	/*
	 * 导出到excel
	 * @return
	 */
	@RequestMapping(value="/excel")
	public ModelAndView exportExcel(){
		logBefore(logger, "导出UserInfo到excel");
		if(!Jurisdiction.buttonJurisdiction(menuUrl, "cha")){return null;}
		ModelAndView mv = new ModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		try{
			Map<String,Object> dataMap = new HashMap<String,Object>();
			List<String> titles = new ArrayList<String>();
			titles.add("创建时间");	//1
			titles.add("修改时间");	//2
			titles.add("创建人");	//3
			titles.add("修改人");	//4
			titles.add("用户ID");	//5
			titles.add("手机");	//6
			titles.add("邮箱");	//7
			titles.add("总资产");	//8
			titles.add("地区");	//9
			titles.add("真实姓名");	//10
			titles.add("证件类型");	//11
			titles.add("证件号码");	//12
			titles.add("昵称");	//13
			titles.add("UID");	//14
			titles.add("谷歌验证码");	//15
			titles.add("交易密码");	//16
			titles.add("邮箱激活状态");	//17
			titles.add("UUID");	//18
			titles.add("手机激活状态");	//19
			titles.add("证件是否提交");	//20
			titles.add("证件是否审核");	//21
			titles.add("推荐人UID");	//22
			titles.add("会员等级");	//23
			titles.add("商家号");	//24
			titles.add("提现状态");	//25
			titles.add("提币状态");	//26
			dataMap.put("titles", titles);
			List<PageData> varOList = userinfoService.listAll(pd);
			List<PageData> varList = new ArrayList<PageData>();
			for(int i=0;i<varOList.size();i++){
				PageData vpd = new PageData();
				vpd.put("var1", varOList.get(i).getString("CREATEDATETIME"));	//1
				vpd.put("var2", varOList.get(i).getString("UPDATEDATETIME"));	//2
				vpd.put("var3", varOList.get(i).getString("CREATEUSER"));	//3
				vpd.put("var4", varOList.get(i).getString("UPDATEUSER"));	//4
				vpd.put("var5", varOList.get(i).getString("USERID"));	//5
				vpd.put("var6", varOList.get(i).getString("MOBILE"));	//6
				vpd.put("var7", varOList.get(i).getString("EMAIL"));	//7
				vpd.put("var8", varOList.get(i).get("TOTALMONEY").toString());	//8
				vpd.put("var9", varOList.get(i).getString("LOCATION"));	//9
				vpd.put("var10", varOList.get(i).getString("REALNAME"));	//10
				vpd.put("var11", varOList.get(i).getString("CARDTYPE"));	//11
				vpd.put("var12", varOList.get(i).getString("CARDNUMBER"));	//12
				vpd.put("var13", varOList.get(i).getString("NICKNAME"));	//13
				vpd.put("var14", varOList.get(i).get("UID").toString());	//14
				vpd.put("var15", varOList.get(i).getString("GOOGLECHECKCODE"));	//15
				vpd.put("var16", varOList.get(i).getString("TRADEPASSWORD"));	//16
				vpd.put("var17", varOList.get(i).getString("EMAILSTATUS"));	//17
				vpd.put("var18", varOList.get(i).getString("UUID"));	//18
				vpd.put("var19", varOList.get(i).getString("MOBILESTATUS"));	//19
				vpd.put("var20", varOList.get(i).getString("ISCARDSUBMIT"));	//20
				vpd.put("var21", varOList.get(i).getString("ISCARDAUDIT"));	//21
				vpd.put("var22", varOList.get(i).getString("RECOMMENDEDUID"));	//22
				vpd.put("var23", varOList.get(i).get("MEMBERLEVEL").toString());	//23
				vpd.put("var24", varOList.get(i).getString("MERCHANTSID"));	//24
				vpd.put("var25", varOList.get(i).getString("WITHDRAWALSTATUS"));	//25
				vpd.put("var26", varOList.get(i).getString("MENTIONMONEYSTATUS"));	//26
				varList.add(vpd);
			}
			dataMap.put("varList", varList);
			ObjectExcelView erv = new ObjectExcelView();
			mv = new ModelAndView(erv,dataMap);
		} catch(Exception e){
			logger.error(e.toString(), e);
		}
		return mv;
	}
	
	/* ===============================权限================================== */
	public Map<String, String> getHC(){
		Subject currentUser = SecurityUtils.getSubject();  //shiro管理的session
		Session session = currentUser.getSession();
		return (Map<String, String>)session.getAttribute(Const.SESSION_QX);
	}
	/* ===============================权限================================== */
	
	@InitBinder
	public void initBinder(WebDataBinder binder){
		DateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		binder.registerCustomEditor(Date.class, new CustomDateEditor(format,true));
	}
}
