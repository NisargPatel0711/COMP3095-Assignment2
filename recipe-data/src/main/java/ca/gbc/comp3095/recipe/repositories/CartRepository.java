/**********************************************************************************
 * Project: Recipe Project
 * Assignment: Assignment 2
 * Author(s): Nisarg Patel
 *            Maitri Patel
 * Student ID: 101340403
 *             101308984
 * Date: 02 Dec
 * Description: This java file is used to do crud functions in Cart table.
 **********************************************************************************/
package ca.gbc.comp3095.recipe.repositories;

import ca.gbc.comp3095.recipe.model.Cart;
import org.springframework.data.repository.CrudRepository;

public interface CartRepository extends CrudRepository<Cart, Long> {

	Cart findById(int id);
}
