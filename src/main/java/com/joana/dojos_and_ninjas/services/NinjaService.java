package com.joana.dojos_and_ninjas.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.joana.dojos_and_ninjas.models.Ninja;

import com.joana.dojos_and_ninjas.repositories.NinjaRepository;

@Service
public class NinjaService {

@Autowired
  NinjaRepository ninjaRepository;

  public Ninja createNinja(Ninja ninja){
    return ninjaRepository.save(ninja);
  }

  public List<Ninja> allNinja(){
    return ninjaRepository.findAll();
  }

  
}