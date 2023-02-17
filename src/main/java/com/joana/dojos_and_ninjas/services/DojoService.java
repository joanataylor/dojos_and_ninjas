package com.joana.dojos_and_ninjas.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.joana.dojos_and_ninjas.models.Dojo;
import com.joana.dojos_and_ninjas.repositories.DojoRepository;

@Service
public class DojoService {
  @Autowired
    DojoRepository dojoRepository;
    

  public Dojo createDojo(Dojo dojo){
    return dojoRepository.save(dojo);
  }

  public List<Dojo> allDojos(){
    return dojoRepository.findAll();
  }

  public Dojo getDojo(Long id){
    Optional<Dojo> optionalDojo = dojoRepository.findById(id);
    if(optionalDojo.isPresent()){
      return optionalDojo.get();
    }else {
      return null;
    }
    
  }
  
}