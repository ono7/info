import csv

def csv_reader(csvfile):
    with open(csvfile) as f:
        reader = csv.reader(f)
        next(reader, None) # skip headers
        for row in reader:
            if len(row) > 0:
                yield row
