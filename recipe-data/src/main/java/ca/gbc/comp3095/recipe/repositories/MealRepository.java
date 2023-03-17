/**********************************************************************************
 * Project: Recipe Project
 * Assignment: Assignment 2
 * Author(s): Nisarg Patel
 *            Maitri Patel
 * Student ID: 101340403
 *             101308984
 * Date: 02 Dec
 * Description: This java file is used to do crud functions in meal table.
 **********************************************************************************/
package ca.gbc.comp3095.recipe.repositories;

import ca.gbc.comp3095.recipe.model.Meal;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface MealRepository extends CrudRepository<Meal, Long> {
	@Query("SELECT m FROM Meal m")
	List<Meal> findAll();

	Meal findById(int parseInt);
}