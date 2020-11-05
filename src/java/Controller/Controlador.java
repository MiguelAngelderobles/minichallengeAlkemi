/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Controller;

import Config.Conexion;
import Model.RegistroOperacion;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author miguel
 */
@Controller
public class Controlador {
    Conexion con = new Conexion();
    JdbcTemplate jdbcTemplate = new JdbcTemplate(con.Conectar());
    ModelAndView mav = new ModelAndView();
    int id;
    
    @RequestMapping("index.htm")
    public ModelAndView Listar(){
        String sql = "select * from registroOperacion ORDER BY Id DESC LIMIT 10"; //deca 10 + balance
        List datos = this.jdbcTemplate.queryForList(sql);
        mav.addObject("lista",datos);
        mav.setViewName("index");
        return mav;
    }

    @RequestMapping(value = "agregar.htm",method = RequestMethod.GET)
    public ModelAndView Agregar(){
        mav.addObject(new RegistroOperacion());
        mav.setViewName("agregar");
        return mav;
    }
    
    @RequestMapping(value = "agregar.htm",method = RequestMethod.POST)
    public ModelAndView Agregar(RegistroOperacion rO){
        String sql = "insert into registroOperacion(Concepto,Monto,Fecha,Tipo)values(?,?,?,?)";
        this.jdbcTemplate.update(sql,rO.getConcepto(),rO.getMonto(),rO.getFecha(),rO.getTipo());
        return new ModelAndView("redirect;/index.htm");
    }
    
    @RequestMapping(value="editar.htm",method = RequestMethod.GET)
    public ModelAndView Editar(HttpServletRequest request){
        id = Integer.parseInt(request.getParameter("id"));
        String sql="select * from registroOperacion where Id="+id;
        List datos = this.jdbcTemplate.queryForList(sql);
        mav.addObject("lista",datos);
        mav.setViewName("editar");
        return mav;
    }
    
    @RequestMapping(value="editar.htm",method =RequestMethod.POST)
    public ModelAndView Editar(RegistroOperacion rO){
        String sql = "update registroOperacion set Concepto=?,Monto=?,Fecha=? where Id=?";
        this.jdbcTemplate.update(sql,rO.getConcepto(),rO.getMonto(),rO.getFecha(),id);
        return new ModelAndView("redirect;/index.htm");
    }
    
    @RequestMapping("eliminar.htm")
    public ModelAndView Eliminar(HttpServletRequest request){
        id = Integer.parseInt(request.getParameter("id"));
        String sql="delete from registroOperacion where Id="+id;
        this.jdbcTemplate.update(sql);
        return new ModelAndView("redirect;/index.htm");
    }
    @RequestMapping("listaEgreso.htm")
    public ModelAndView ListarEgreso(HttpServletRequest request){
        String sql = "select * from registroOperacion where Tipo = 'egreso' " ; //deca 10 + balance
        List datos = this.jdbcTemplate.queryForList(sql);
        mav.addObject("lista",datos);
        mav.setViewName("index");
        return mav;
    }
     
    @RequestMapping("listaIngreso.htm")
    public ModelAndView ListarIngreso(HttpServletRequest request){
        String sql = "select * from registroOperacion where Tipo = 'ingreso' ";
        
        List datos = this.jdbcTemplate.queryForList(sql);
        mav.addObject("lista",datos);
        mav.setViewName("index");
        return mav;
    }
    @RequestMapping("balance.htm")
    public ModelAndView Balance(HttpServletRequest request){
        String sql = "select SUM(Monto) from registroOperacion where Tipo = 'ingreso' "; 
        String sql1 = "select SUM(Monto) from registroOperacion where Tipo = 'egreso' "; 
        List datos = this.jdbcTemplate.queryForList(sql,sql1);
        mav.addObject("lista",datos);
        mav.setViewName("index");
        return mav;
    }
    

}
