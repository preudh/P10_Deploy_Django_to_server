from django.core.management.base import BaseCommand
from app_data_off.views import drop_everythings, get_product_off

import dj_database_url
import psycopg2
import os


#
# class Command(BaseCommand):
#     help = 'create and load the database'
#
#     def handle(self, *args, **options):
#         # self.debug('message')  # ligne supprimée
#         conn = None  # Cette ligne reste inchangée car elle initialise `conn` à None
#
#         try:
#             # Configure database connection using Heroku DATABASE_URL
#             DATABASE_URL = os.environ.get('DATABASE_URL')
#             # conn = psycopg2.connect(DATABASE_URL, sslmode='require')
#             conn = psycopg2.connect('DATABASE_URL')
#             # create a cursor to perform database operations
#             cursor = conn.cursor()
#             # Print PostgreSQL Connection properties
#             print(conn.get_dsn_parameters(), "\n")
#             # Execute a query, Print PostgreSQL version, Query the database and obtain data as Python objects
#             cursor.execute("SELECT version();")
#             # display the PostgreSQL database server version
#             record = cursor.fetchone()
#             print("You are connected to - ", record, "\n")
#             drop_everythings()
#             print("Reinitialisation of purbeurre database")
#             get_product_off()
#             print("get products from the n categories OFF database")
#             # Make the changes to the database persistent
#             conn.commit()
#             # Close communication with the database
#             cursor.close()
#         except (Exception, psycopg2.DatabaseError) as error:
#             print("Error while connecting to PostgreSQL", error)
#
#         finally:
#             if conn is not None:
#                 conn.close()
#                 print('Database connection closed.')

class Command(BaseCommand):
    help = 'create and load the database'

    def handle(self, *args, **options):
        conn = None

        # Chaîne de connexion mise en dur :
        DATABASE_URL = "postgres://postgres:postgres@pgdb:5432/postgres"

        try:
            conn = psycopg2.connect(DATABASE_URL)

            cursor = conn.cursor()
            print(conn.get_dsn_parameters(), "\n")
            cursor.execute("SELECT version();")
            record = cursor.fetchone()
            print("You are connected to - ", record, "\n")
            drop_everythings()
            print("Reinitialisation of purbeurre database")
            get_product_off()
            print("get products from the n categories OFF database")
            conn.commit()
            cursor.close()
        except (Exception, psycopg2.DatabaseError) as error:
            print("Error while connecting to PostgreSQL", error)

        finally:
            if conn is not None:
                conn.close()
                print('Database connection closed.')

