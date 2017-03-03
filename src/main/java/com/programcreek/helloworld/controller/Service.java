package com.programcreek.helloworld.controller;

import java.util.ArrayList;
import java.util.List;

public class Service {

	public List<subRegions> getSubRegions(Integer regId)
	{
		
		List<subRegions> subRegs = createSubRegions();
		List<subRegions> finalSubRegs = new ArrayList<subRegions>();
		
		for(subRegions sub: subRegs)
		{
			if(sub.getrId() == regId)
			{
				finalSubRegs.add(sub);
			}
		}
		
		return finalSubRegs;
	}

	
	public List<Branches> getBranches(Integer regId)
	{
		
		List<Branches> subBranches = createBranches();
		List<Branches> finalBranches = new ArrayList<Branches>();
		
		for(Branches br: subBranches)
		{
			if(br.getRegId() == regId)
			{
				finalBranches.add(br);
			}
		}
		
		return finalBranches;
	}
	
	public List<Opps> getOpps(Integer brId)
	{
		
		List<Opps> subOpps = createOpps();
		List<Opps> finalsubOpps = new ArrayList<Opps>();
		
		for(Opps Opp: subOpps)
		{
			if(Opp.getBrId() == brId)
			{
				finalsubOpps.add(Opp);
			}
		}
		
		return finalsubOpps;
	}
	
	public List<subRegions> createSubRegions()
	{
		List<subRegions> subList = new ArrayList<subRegions>();
		
		subRegions subs = new subRegions();
		subRegions subs2 = new subRegions();
		subRegions subs3 = new subRegions();
		subRegions subs4 = new subRegions();
		
		subs.setrId(1);
		subs.setRegId(1);
		subs.setRegName("JCSS");
		subs.setRegForcast("Forecast");
		subs.setRegBranch("Go to Branch");
		subs.setRegStatus("In Progress");
		subs.setBranches(4);
		subs.setOpps(5);
		subs.setUpdated("2/8/2017");
		subs.setUpdatedBy("System");
		
		
		subs2.setrId(1);
		subs2.setRegId(2);
		subs2.setRegName("NA East");
		subs2.setRegForcast("Forecast");
		subs2.setRegBranch("Go to Branch");
		subs2.setRegStatus("System Submitted");
		subs2.setBranches(2);
		subs2.setOpps(1);
		subs2.setUpdated("1/1/2017");
		subs2.setUpdatedBy("System");
		
		subs3.setrId(2);
		subs3.setRegId(3);
		subs3.setRegName("NA HQ");
		subs3.setRegForcast("Forecast");
		subs3.setRegBranch("Go to Branch");
		subs3.setRegStatus("In Progress");
		subs3.setBranches(2);
		subs3.setOpps(2);
		subs3.setUpdated("13/1/2017");
		subs3.setUpdatedBy("System");
		
		subs4.setrId(3);
		subs4.setRegId(4);
		subs4.setRegName("NA North");
		subs4.setRegForcast("Forecast");
		subs4.setRegBranch("Go to Branch");
		subs4.setRegStatus("In Progress");
		subs4.setBranches(3);
		subs4.setOpps(3);
		subs4.setUpdated("24/1/2017");
		subs4.setUpdatedBy("System");
		
		
		subList.add(subs);
		subList.add(subs2);
		subList.add(subs3);
		subList.add(subs4);
		
		return subList; 
		
		
		
		
		
	}
	public List<Branches> createBranches()
	{
		List<Branches> brList = new ArrayList<Branches>();
		
		Branches brs = new Branches();
		Branches brs2 = new Branches();
		Branches brs3 = new Branches();
		Branches brs4 = new Branches();
		
		brs.setRegId(1);
		brs.setBrId(1);
		brs.setBrCode("0N66");
		brs.setBrName("Albany,NY-Burlington, VT");
		brs.setBrFcStatus("In Progress");
		brs.setBrOpps(5);
		brs.setFcAmt(432378);
		brs.setHFMPlan(1234);
		brs.setUpdated("2/2/2017");
		brs.setUpdatedBy("System");
		
		brs2.setRegId(2);
		brs2.setBrId(2);
		brs2.setBrCode("0N12");
		brs2.setBrName("Allentown, PA");
		brs2.setBrFcStatus("System Submitted");
		brs2.setBrOpps(23);
		brs2.setFcAmt(123);
		brs2.setHFMPlan(2000);
		brs2.setUpdated("1/1/2017");
		brs2.setUpdatedBy("System");
		
		
		brs3.setRegId(1);
		brs3.setBrId(3);
		brs3.setBrCode("0S22");
		brs3.setBrName("Boston, MA");
		brs3.setBrFcStatus("System Submitted");
		brs3.setBrOpps(44);
		brs3.setFcAmt(6666);
		brs3.setHFMPlan(2390);
		brs3.setUpdated("24/2/2017");
		brs3.setUpdatedBy("System");

		
		brs4.setRegId(1);
		brs4.setBrId(4);
		brs4.setBrCode("0F12");
		brs4.setBrName("East PA Market Team");
		brs4.setBrFcStatus("System Submitted");
		brs4.setBrOpps(1);
		brs4.setFcAmt(1223);
		brs4.setHFMPlan(6000);
		brs4.setUpdated("20/1/2017");
		brs4.setUpdatedBy("System");

		brList.add(brs);
		brList.add(brs2);
		brList.add(brs3);
		brList.add(brs4);
		
		return brList; 
		
		
		
		
		
	}
	
	public List<Opps> createOpps()
	{
		List<Opps> brList = new ArrayList<Opps>();
		
		Opps opps = new Opps();
		Opps opps2 = new Opps();
		Opps opps3 = new Opps();
		Opps opps4 = new Opps();
		
		opps.setOppsId(1);
		opps.setBrId(1);
		opps.setOppsName("Kingston Ph. II Upgrades - Units Vents");
		opps.setAccName("Kingston City School District ");
		opps.setPlanDt("2/28/2017");
		opps.setEstAmt("2,410,000");
		opps.setBranch("(0N66) Albany,NY-Burlington, VT");
		opps.setContType("Plan and Spec - Construction");
		opps.setLeadRep("Potasiewicz, Kendra");
		opps.setVm("K12 Schools");
		
		opps2.setOppsId(2);
		opps2.setBrId(1);
		opps2.setOppsName("Bassett Cobleskill - Controls Upgrades");
		opps2.setAccName("Bassett Hospital Of Schoharie Co. ");
		opps2.setPlanDt("2/20/2017");
		opps2.setEstAmt("40,000");
		opps2.setBranch("(0N66) Albany,NY-Burlington, VT");
		opps2.setContType("Plan and Spec - Retrofit");
		opps2.setLeadRep("Potasiewicz, Kendra");
		opps2.setVm("Health Care");
		
		opps3.setOppsId(3);
		opps3.setBrId(2);
		opps3.setOppsName("NY Forensics Vibration Analysis PSA");
		opps3.setAccName("NYS Office of General Services ");
		opps3.setPlanDt("2/28/2017");
		opps3.setEstAmt("4,230,000");
		opps3.setBranch("(0N66) Albany,NY-Burlington, VT");
		opps3.setContType("Scheduled Service - New - (PSA)");
		opps3.setLeadRep("Account, House");
		opps3.setVm("Higher Education");
		
		opps4.setOppsId(4);
		opps4.setBrId(2);
		opps4.setOppsName("Water Heater Replacement");
		opps4.setAccName("Robinson Terrace");
		opps4.setPlanDt("3/2/2017");
		opps4.setEstAmt("20,000");
		opps4.setBranch("(0N66) Albany,NY-Burlington, VT");
		opps4.setContType("Owner Direct - Prime Retrofit");
		opps4.setLeadRep("Conerty (Inactive), Mark");
		opps4.setVm("Other State Government");
		
		brList.add(opps);
		brList.add(opps2);
		brList.add(opps3);
		brList.add(opps4);
		
		return brList; 
		
		
		
		
		
	}

	
}
