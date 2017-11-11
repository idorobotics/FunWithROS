#!/usr/bin/env python

import matplotlib.pyplot as plt
import numpy as np

x = np.arange(10)

x1 = np.array([10.0,50.0,200.0,500.0,1000.0,2000.0,5000.0,10000.0,20000.0])
y1 = np.array([10.0,50.0,199.9,499.97,1000.0,1999.9,4998.5,9992.9,19876.6])
plt.subplot(2,2,1)
plt.plot(x1, abs(x1-y1))
plt.xlabel('True')
plt.ylabel('abs(True - Mesured)')
plt.title('Diff. between true and measured frequencies (Combination 1)')


x2 = np.array([10.0,50.0,200.0,500.0,1000.0,2000.0,3000.0])
y2 = np.array([10.0,49.9,200,499.9,999.9,1999.9,2994.2])
plt.subplot(2,2,2)
plt.plot(x2, abs(x2-y2))
plt.xlabel('True')
plt.ylabel('abs(True - Mesured)')
plt.title('Diff. between true and measured frequencies (Combination 2)')


x3 = np.array([10.0,50.0,200.0,500.0,1000.0,1200.0,1500.0,2000.0,5000.0])
y3 = np.array([10.0,49.9,200.0,499.8,996.9,1195.13,1489.2,1956.2,4690.2])
plt.subplot(2,2,3)
plt.plot(x3, abs(x3-y3))
plt.xlabel('True')
plt.ylabel('abs(True - Mesured)')
plt.title('Diff. between true and measured frequencies (Combination 3)')


x4 = np.array([10.0, 50.0, 200.0,500.0,800.0,850.0,900.0,1000.0,1200.0,1500.0])
y4 = np.array([10.0,49.9,199.9,499.7,799.5,848.8,898.5,997.2,1196.6,1477.9])
np.sort(x4)
np.sort(y4)
plt.subplot(2,2,4)
plt.plot(x4, abs(x4-y4))
plt.xlabel('True')
plt.ylabel('abs(True - Mesured)')
plt.title('Diff. between true and measured frequencies (Combination 4)')
plt.show()
