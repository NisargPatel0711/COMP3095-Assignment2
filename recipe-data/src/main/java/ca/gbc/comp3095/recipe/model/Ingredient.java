/**********************************************************************************
 * Project: Recipe Project
 * Assignment: Assignment 2
 * Author(s): Nisarg Patel
 *            Maitri Patel
 * Student ID: 101340403
 *             101308984
 * Date: 02 Dec
 * Description: This file creates ingredient table.
 *              This table is needed to add ingredient to recipe table.
 **********************************************************************************/
package ca.gbc.comp3095.recipe.model;

import javax.persistence.*;
import java.util.Objects;
import java.util.Set;

@Entity
public class Ingredient {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	@ManyToOne(fetch = FetchType.LAZY, optional = false)
	@JoinColumn(name = "recipe_id", nullable = false)
	private Recipe recipe;

	@OneToMany(mappedBy = "ingredient", fetch = FetchType.LAZY,
			cascade = CascadeType.ALL)
	private Set<Cart> cart;

	private String item;

	public Ingredient(int id, Recipe recipe, String item) {
		this.id = id;
		this.recipe = recipe;
		this.item = item;
	}

	public Ingredient(Recipe recipe, String item) {
		this.recipe = recipe;
		this.item = item;
	}

	public Ingredient() {
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Recipe getRecipe() {
		return recipe;
	}

	public void setRecipe(Recipe recipe) {
		this.recipe = recipe;
	}

	public String getItem() {
		return item;
	}

	public void setItem(String item) {
		this.item = item;
	}

	public Set<Cart> getCart() {
		return cart;
	}

	public void setCart(Set<Cart> cart) {
		this.cart = cart;
	}

	@Override
	public boolean equals(Object o) {
		if (this == o) return true;
		if (o == null || getClass() != o.getClass()) return false;
		Ingredient ingredient = (Ingredient) o;
		return Objects.equals(id, ingredient.id);
	}

	@Override
	public int hashCode() {
		return Objects.hash(id);
	}
}