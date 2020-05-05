package web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import web.model.Car;
import web.service.CarService;

import java.util.List;

@Controller
@RequestMapping("/")
public class CarController {

    @Autowired
    CarService carService;

    @GetMapping("cars")
    public String getListCars(Model model) {
        List<Car> carList = carService.getCarList();
        model.addAttribute("carList", carList);
        return "cars";
    }


}
