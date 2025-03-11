## Component value calculations for the 555 astable circuit

The formulas for our 555 astable circuit's timing are

time high $`t_1 = ln(2) * (R_1 + R_2) * C`$\
time low $`t_2 = ln(2) * R_1 * C`$\
period $`T = t_1 + t_2`$\
frequency $`f = \frac{1}{T}`$\
duty cycle $`D = \frac{t_1}{T}`$

Putting $`R_1`$ and $`R_2`$ in terms of $`f`$, $`D`$, and $`C`$ we get

$`R_1 = \frac{2D - 1}{ln(2) * f * C}`$\
$`R_2 = \frac{1 - D}{ln(2) * f * C}`$

We want a beep of $`1.5Hz`$ with a $`25\%`$ duty cycle. Since our buzzer will sound when the signal from the 555 is low, our circuit will need the opposite duty cycle. We choose a reasonably small standard value for $`C`$ to keep current/power low.

$`f = 1.5 Hz`$\
$`D = 100\% - 25\% = 75\%`$\
$`C = 47 nF`$

So

$`R_1 = \frac{2D - 1}{ln(2) * f * C} = \frac{2 * 75\% - 1}{ln(2) * 1.5 Hz * 47 nF} = 10.2319 M\Omega`$\
$`R_2 = \frac{1 - D}{ln(2) * f * C} = \frac{1 - 75\%}{ln(2) * 1.5 Hz * 47 nF} = 5.1159 M\Omega`$

Since there is no need for this timing to be exact, we choose the closest standard values for $`R_1`$ and $`R_2`$, giving us our component values of 

$`R_1 = 10 M\Omega`$\
$`R_2 = 5.1 M\Omega`$\
$`C = 47 nF`$

So our actual frequency and duty cycle will be

$`t_1 = ln(2) * (R_1 + R_2) * C = ln(2) * (10 M\Omega + 5.1 M\Omega) * 47 nF = 0.49 s`$\
$`t_2 = ln(2) * R_2 * C = ln(2) * 5.1 M\Omega * 47 nF = 0.17 s`$\
$`T = t_1 + t_2 = 0.49 s + 0.17 s = 0.66 s`$\
$`f = \frac{1}{T} = \frac{1}{0.66 s} = 1.52 Hz`$\
$`D = \frac{t_1}{T} = \frac{0.49 s}{0.66 s} = 74\%`$

Giving us a beep of $`1.52Hz`$ with a $`26\%`$ duty cycle. That is a $`0.17`$ second long beep every $`0.66`$ seconds. 
