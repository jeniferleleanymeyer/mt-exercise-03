#! /bin/env/python

import csv
import matplotlib.pyplot as plt

def main():
    results = []
    # read data
    with open('scripts/data/logging_00.csv', 'r') as infile_00:
        reader_00 = csv.reader(infile_00, delimiter=',')
        i = 0
        for row in reader_00:
            if i > 0:
                results.append([i, row[-1]])
            i += 1
    with open('scripts/data/logging_01.csv', 'r') as infile_01:
        reader_01 = csv.reader(infile_01, delimiter=',')
        i = 0
        for row in reader_01:
            if i > 0:
                results[i-1].append(row[-1])
            i += 1
    with open('scripts/data/logging_03.csv', 'r') as infile_03:
        reader_03 = csv.reader(infile_03, delimiter=',')
        i = 0
        for row in reader_03:
            if i > 0:
                results[i-1].append(row[-1])
            i += 1
    with open('scripts/data/logging_05.csv', 'r') as infile_05:
        reader_05 = csv.reader(infile_05, delimiter=',')
        i = 0
        for row in reader_05:
            if i > 0:
                results[i-1].append(row[-1])
            i += 1
    with open('scripts/data/logging_06.csv', 'r') as infile_06:
        reader_06 = csv.reader(infile_06, delimiter=',')
        i = 0
        for row in reader_06:
            if i > 0:
                results[i-1].append(row[-1])
            i += 1
    with open('scripts/data/logging_09.csv', 'r') as infile_09:
        reader_09 = csv.reader(infile_09, delimiter=',')
        i = 0
        for row in reader_09:
            if i > 0:
                results[i-1].append(row[-1])
            i += 1
    # create summary file
    header = ['valid. perplexity', 'dropout 0.0', 'dropout 0.1', 'dropout 0.3', 'dropout 0.5', 'dropout 0.6', 'dropout 0.9']
    with open('scripts/data/sum_table.csv', 'w', encoding='utf-8') as outfile:
        writer = csv.writer(outfile)
        writer.writerow(header)
        writer.writerows(results)
    # create plots
    x = []
    y_00 = []
    y_01 = []
    y_03 = []
    y_05 = []
    y_06 = []
    y_09 = []
    for i in range(len(results)-1):
        x.append(results[i][0])
        y_00.append(round(float(results[i][1]), 2))
        y_01.append(round(float(results[i][2]), 2))
        y_03.append(round(float(results[i][3]), 2))
        y_05.append(round(float(results[i][4]), 2))
        y_06.append(round(float(results[i][5]), 2))
        y_09.append(round(float(results[i][6]), 2))
    plt.plot(x, y_00, label='dropout 0.0')
    plt.plot(x, y_01, label='dropout 0.1')
    plt.plot(x, y_03, label='dropout 0.3')
    plt.plot(x, y_05, label='dropout 0.5')
    plt.plot(x, y_06, label='dropout 0.6')
    plt.plot(x, y_09, label='dropout 0.9')
    plt.title('line chart of different dropout values')
    plt.xlabel('epoch')
    plt.ylabel('valid. perplexity')
    plt.legend(loc='upper right')
    plt.savefig('scripts/data/line_chart.png')
    return

if __name__ == '__main__':
    main()