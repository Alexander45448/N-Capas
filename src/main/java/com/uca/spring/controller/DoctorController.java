package com.uca.spring.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import java.util.List;
import com.uca.spring.model.Medicine;
import com.uca.spring.repository.MedicineRepository;


@Controller
@RequestMapping("/")
public class DoctorController {
	
	@Autowired
	  MedicineRepository medicineRepository;
	
	   @RequestMapping("/DoctorIndex")
	   public ModelAndView DoctorIndex(HttpServletRequest request){
	       ModelAndView model = new ModelAndView();
	       model.setViewName("/DoctorScreens/PerfilDoctor.jsp");
	       return model;

	   }
	   
	   @RequestMapping("/ScheduleAppointments")
	   public ModelAndView ScheduleAppointments(HttpServletRequest request){
	       ModelAndView model = new ModelAndView();
	       model.setViewName("/DoctorScreens/CitasAgendadas.jsp");
	       return model;

	   }
	   
	   @RequestMapping("/PatientHistory")
	   public ModelAndView PatientHistory(HttpServletRequest request){
	       ModelAndView model = new ModelAndView();
	       model.setViewName("/DoctorScreens/HistorialPacientes.jsp");
	       return model;
	       }
	   
	   
	   @RequestMapping("/PatientDetails")
	   public ModelAndView PatientHistoryDetails(HttpServletRequest request){
	       ModelAndView model = new ModelAndView();
	       model.setViewName("/DoctorScreens/DetalleHistorialPacientes.jsp");
	       return model;}
	   
	   @RequestMapping("/PatientDetails2")
	   public ModelAndView PatientHistoryDetails2(HttpServletRequest request){
	       ModelAndView model = new ModelAndView();
	       model.setViewName("/DoctorScreens/DetalleHistorialPacientes2.jsp");
	       return model;}
	   
	   @RequestMapping("/prescibeMedicine1")
	   public ModelAndView prescribeMedicine1(HttpServletRequest request){
	       ModelAndView model = new ModelAndView();
	       model.setViewName("/DoctorScreens/RecetarMedicamento1.jsp");
	       return model;

	   }

	   @RequestMapping("/prescribeMedicine2")
	   public ModelAndView prescribeMedicine2(HttpServletRequest request){
	       ModelAndView model = new ModelAndView();
	       model.setViewName("/DoctorScreens/RecetarMedicamento2.jsp");
	       return model;

	   }
	   
	   @RequestMapping("/medicineRegister")
	   public ModelAndView medicineRegister(HttpServletRequest request){
	       ModelAndView model = new ModelAndView();
	       model.setViewName("/DoctorScreens/RegistroMedicamentos.jsp");
	       return model;

	   }
	   
	   @RequestMapping(value = "/recetarMedicina", method = {RequestMethod.GET,RequestMethod.POST,RequestMethod.PUT})
	   public @ResponseBody
	   String saveAgdReferido(@ModelAttribute("Medicine") @Validated Medicine medicine) {
	       medicineRepository.save(medicine);
	       return null;
	   }
	   
	   
	
	
}
