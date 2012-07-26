from matplotlib import pyplot
import random
 
X = range(0,10)
Y = [ random.random() for i in X ]
M = [ i*random.random() for i in X ]
A = [ i*0.5*random.random() for i in X ]
 
pyplot.plot( X, Y, '-' )
pyplot.plot( X, M, '-' )
pyplot.plot( X, A, '-' )
pyplot.title( 'Line Chart Example')
pyplot.xlabel( 'X Axis' )
pyplot.ylabel( 'Y Axis' )
pyplot.savefig( 'Simple.png' )
#pyplot.show()
pyplot.savefig('linechart.png')
