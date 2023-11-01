from django.core.management.base import BaseCommand
from app_data_off.views import drop_everythings, get_product_off

import psycopg2
import os


class Command(BaseCommand):
    help = 'create and load the database'

    def handle(self, *args, **options):
        conn = None

        # String connection to the database
        DATABASE_URL = os.environ.get('DATABASE_URL')
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

