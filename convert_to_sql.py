import csv

# Fichier CSV source
CSV_FILE = "data.csv"
# Fichier SQL de sortie
OUTPUT_SQL_FILE = "insert_data.sql"

def create_table():
    query = """
    DROP TABLE IF EXISTS tv_show_data;

    CREATE TABLE tv_show_data (
        id SERIAL PRIMARY KEY,
        tmdb_id INT NOT NULL,
        title VARCHAR(255) NOT NULL,
        intro_start_at TIME NOT NULL,
        intro_end_at TIME NOT NULL,
        outro_start_at TIME,
        outro_end_at TIME,
	CONSTRAINT title_format_check CHECK (title ~ '^[a-z0-9_]+_S\\d{2}_E\\d{2,3}$')
    );
    """
    return query

def generate_insert_sql(csv_file, output_file):
    with open(csv_file, newline='', encoding='utf-8') as csvfile, open(output_file, "w", encoding="utf-8") as sqlfile:
        sqlfile.write("-- SQL Script to insert data into tv_show_data table\n\n"+create_table()+"\n\n")

        reader = csv.DictReader(csvfile, delimiter=';')
        
        for row in reader:
            sql = f"""
            INSERT INTO tv_show_data (tmdb_id, title, intro_start_at, intro_end_at, outro_start_at, outro_end_at)
            VALUES ({row["tmdb_id"]}, '{row["title"]}', '{row["intro_start_at"]}', '{row["intro_end_at"]}',
                    {f"'{row['outro_start_at']}'" if row["outro_start_at"] != "null" else "NULL"},
                    {f"'{row['outro_end_at']}'" if row["outro_end_at"] != "null" else "NULL"});
            """
            sqlfile.write(sql.strip() + "\n")

        print(f"SQL script generated in {output_file}")

if __name__ == "__main__":
    generate_insert_sql(CSV_FILE, OUTPUT_SQL_FILE)
