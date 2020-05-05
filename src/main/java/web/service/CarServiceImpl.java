package web.service;

import org.springframework.stereotype.Service;
import web.model.Car;

import java.util.ArrayList;
import java.util.List;

@Service
public class CarServiceImpl implements CarService {

    @Override
    public List<Car> getCarList() {
        List <Car> carList = new ArrayList();
        carList.add(new Car("Volvo", 25_000, 70));
        carList.add(new Car("VW", 15_000, 60));
        carList.add(new Car("BMW", 45_000, 220));
        return carList;
    }
}
