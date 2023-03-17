/**********************************************************************************
 * Project: Recipe Project
 * Assignment: Assignment 2
 * Author(s): Nisarg Patel
 *            Maitri Patel
 * Student ID: 101340403
 *             101308984
 * Date: 02 Dec
 * Description: This java file is used to return our data from table.
 **********************************************************************************/
package ca.gbc.comp3095.recipe.services;

import ca.gbc.comp3095.recipe.model.Recipe;
import ca.gbc.comp3095.recipe.repositories.RecipeRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ViewService {
	@Autowired
	private RecipeRepository recipeRepository;

	public List<Recipe> findAll() {
		return recipeRepository.findAll();
	}
}
