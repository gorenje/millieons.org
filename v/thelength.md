#  The lengths to which one goes

If you took all the atoms a human consists of and line them up in a single stream of atoms, one after the other without a gap - how long would this stream of atoms be? How long would light take to traverse this stream?

[The average 70 kg (150 lb) adult human body contains approximately 7×10^27 atoms](https://en.wikipedia.org/wiki/Composition_of_the_human_body)

of that the top five (atomic percent) are:

- Hydrogen    62%
- Oxygen      24%
- Carbon      12%
- Nitrogen     1%
- Calcium    0.2%
- Phosphorus 0.2%

---> Total: 99.4%

The radius of those atoms are (from [wikipedia](https://en.wikipedia.org/wiki/Atomic_radius))

- Hydrogen    25 picometres
- Oxygen      60 picometres
- Carbon      70 picometres
- Nitrogen    65 picometres
- Calcium     180 picometres
- Phosphorus  100 picometres

where picometre are 1×10<sup>−12</sup> metres.

Since these atoms are stringed in a perfect row without overlap, we use the diameter of the atom instead of radius:

(2 x 25) x 10<sup>-12</sup> x 7 x 10<sup>27</sup> x 0.62 -- hydrogen  
(2 x 60) x 10<sup>-12</sup> x 7 x 10<sup>27</sup> x 0.24 -- plus oxygen  
(2 x 70) x 10<sup>-12</sup> x 7 x 10<sup>27</sup> x 0.12 -- plus carbon    
...etc

which becomes in Javascript:

50 * 10\*\*-12 * 7 * 10\*\*27 * 0.62  = 217,000,000,000,000,030  
120 * 10\*\*-12 * 7 * 10\*\*27 * 0.24 = 201,600,000,000,000,000  
140 * 10\*\*-12 * 7 * 10\*\*27 * 0.12 = 117,600,000,000,000,020  
...etc

For the missing 0.6% we take an average radius value of 150 picometres - the calculation for Javascript:

( 50 * 10\*\*-12 * 7 * 10\*\*27 * 0.62 ) +    
( 120 * 10\*\*-12 * 7 * 10\*\*27 * 0.24 ) +    
( 140 * 10\*\*-12 * 7 * 10\*\*27 * 0.12 ) +    
( 130 * 10\*\*-12 * 7 * 10\*\*27 * 0.01 ) +  
( 360 * 10\*\*-12 * 7 * 10\*\*27 * 0.002 ) +   
( 200 * 10\*\*-12 * 7 * 10\*\*27 * 0.002 ) +   
( 300 * 10\*\*-12 * 7 * 10\*\*27 * 0.006 )

Grand total of: 565,740,000,000,000,000 metres

How long does light take to travel that distance?

[One light year is](https://en.wikipedia.org/wiki/Light-year): 9,460,730,472,580,800 metres

Dividing the two:

565,740,000,000,000,000 / 9,460,730,472,580,800 = 59.8

So light would take 59.8 years to travel that distance. Which is about 6 years shorter than the universal life expectance of humans (if you take the average ages of all the people in wikipedia).

But that is a for a person weighing 70kg - your mileage might vary.
