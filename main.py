import csv
import matplotlib.pyplot
import numpy

data = open('data.tsv')
read_tsv = csv.reader(data, delimiter="\t")
parsed_tsv = list(read_tsv)
a = float(parsed_tsv[0][0])
b = float(parsed_tsv[0][1])
c = float(parsed_tsv[0][2])
d = float(parsed_tsv[0][3])

x = numpy.arange(-1.0, 1.0, 0.001)
y = numpy.power(d, (a * numpy.power(x, 2)) + (b * x) + c)

matplotlib.pyplot.xlabel(r'x', color='g')
matplotlib.pyplot.ylabel(r'y', color='g')
matplotlib.pyplot.title(r'$d^{ax^2+bx+c}$')
matplotlib.pyplot.plot(x, y, 'black')
matplotlib.pyplot.show()
