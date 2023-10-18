""" Script to get data from OpenFoodFacts API and record in DB"""

import logging

from pprint import pprint
from django.db.utils import DataError, IntegrityError
from openfoodfacts import openfoodfacts
from app_data_off.models import Category, Product
from app_data_off.management.commands.constante import list_categories
from django.core.exceptions import ValidationError

# Configuration du logging
logging.basicConfig(level=logging.DEBUG)


def drop_everythings():
    """ Reinitialisation database"""
    Category.objects.all().delete()
    Product.objects.all().delete()


def get_product_off():
    """Get 7 categories from fr.OFF database. Categories number is limited voluntarily because Heroku limits the number of row up to 10000, max 1000 product by category."""

    logging.debug("Starting the get_product_off function...")

    for category in list_categories:  # Start of outer loop
        logging.debug(f"Processing category: {category}")

        cat_id = Category.objects.create(name=category)

        for product in openfoodfacts.products.get_all_by_category(category):  # Start of inner loop

            name = product.get("product_name", "Unknown Product")
            brand = product.get("brands", "Unknown Brand")

            nutrition_grade = product.get("nutrition_grades", None)
            url = product.get("url", None)
            image_front_url = product.get('image_front_url', None)
            image_nutrition_small_url = product.get("image_nutrition_small_url", None)
            store = product.get("stores", None)

            try:
                # Create and save an object in a single step
                Product.objects.create(name=name, brand=brand,
                                       store=store,
                                       nutrition_grade=nutrition_grade,
                                       url=url, image_front_url=image_front_url,
                                       image_nutrition_small_url=image_nutrition_small_url,
                                       category=cat_id)
                logging.info(f"Product {name} added successfully.")
            except KeyError as e:
                logging.error(f"KeyError for product {name}. Missing key: {e}. Skipping...")
            except DataError:
                logging.error(f"DataError for product {name}. Skipping...")
            except IntegrityError:
                logging.error(f"IntegrityError for product {name}. Skipping...")



