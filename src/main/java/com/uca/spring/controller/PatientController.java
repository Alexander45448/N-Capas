package com.uca.spring.controller;


import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.uca.spring.model.Patient;
import com.uca.spring.repository.PatientRepository;
import com.uca.spring.util.CboFilter;

@Controller
@RequestMapping("/")
public class PatientController {
	
	@Autowired
	PatientRepository patientRepository;
	
	 @RequestMapping("/UserIndex")
	   public ModelAndView UserIndex(HttpServletRequest request){
	       ModelAndView model = new ModelAndView();
	       model.setViewName("/UserScreens/PerfilUsuario.jsp");
	       return model;

	   }
	 
	   @RequestMapping("/userAppointments")
	   public ModelAndView userAppointments(HttpServletRequest request){
	       ModelAndView model = new ModelAndView();
	       model.setViewName("/UserScreens/AgendarCita1.jsp");
	       return model;

	   }
	   
	   @RequestMapping("/chooseUserAppointments")
	   public ModelAndView chooseUserAppointments(HttpServletRequest request){
	       ModelAndView model = new ModelAndView();
	       model.setViewName("/UserScreens/AgendarCita2.jsp");
	       return model;

	   }
	   
	   @RequestMapping("/checkUserAppointments")
	   public ModelAndView checkUserAppointments(HttpServletRequest request){
	       ModelAndView model = new ModelAndView();
	       model.setViewName("/UserScreens/CitasProgramadas.jsp");
	       return model;

	   }
	   
	   
		@RequestMapping("/checkUserMedicines")
		   public ModelAndView checkUserMedicines(HttpServletRequest request){
		       ModelAndView model = new ModelAndView();
		       model.setViewName("/UserScreens/Medicamentos.jsp");
		       return model;
		
		   }
		
		@RequestMapping("/appointmentDetails")
		   public ModelAndView appointmentDetails(HttpServletRequest request){
		       ModelAndView model = new ModelAndView();
		       model.setViewName("/UserScreens/DetalleCita.jsp");
		       return model;

		   }
		
		  @RequestMapping(value = {"/cbofilterPatient"}, method = RequestMethod.GET, produces = "application/json;charset=UTF-8")
		  public @ResponseBody
		  List<CboFilter> cbofilterPatient() {
		    List<Patient> patients = patientRepository.findAll();
		      List<CboFilter> response = new ArrayList<>();
		      for (int i = 0; i < patients.size(); i++) {
		          response.add(new CboFilter(patients.get(i).getDuiPatient().toString(), patients.get(i).getFullName()));
		      }
		      return response;
		  }
		


}
