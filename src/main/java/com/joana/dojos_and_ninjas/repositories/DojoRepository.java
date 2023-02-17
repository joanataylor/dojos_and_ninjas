package com.joana.dojos_and_ninjas.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.joana.dojos_and_ninjas.models.Dojo;

@Repository
  public interface DojoRepository extends CrudRepository<Dojo, Long>{
    // this method retrieves all the items from the database - always override for iteration
  List<Dojo> findAll();
  }
  