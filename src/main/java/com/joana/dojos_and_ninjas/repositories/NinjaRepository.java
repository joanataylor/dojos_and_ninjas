package com.joana.dojos_and_ninjas.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.joana.dojos_and_ninjas.models.Ninja;


@Repository
public interface NinjaRepository extends CrudRepository<Ninja, Long>{
  List<Ninja> findAll();
}