#set text(
  size : 13pt
)

= Kern's Electronics Learning Portfolio

= Chapter 0: Minimal Pre-requisite Math Concepts

== 0.1) Purpose of this Portfolio

It would be impossible to discuss circuits without mentioning advanced math and physics. Yet these topics are difficult, even for students who had prior exposure before starting undergrad (after high school graduation). This leads to many who are interested in electronics and circuits to ignore the math and physics. That's a result of the theory being perceived as overwhelming.

So to make this as accessible as possible, this text will take a less rigorous approach to the math. The main goal of this project is to help you make something hands-on (whether it's simulations or physical circuits design) as soon as possible.

For example, I'll discuss the logic behind derivatives and integrals for polynomials instead of blindly giving formulas. I'll be introducing as black boxes that you can fully decipher when you're ready. By showing how they affect polynomials, you should be able to infer how they affect other functions. By simplifying the math, I hope to prevent those less customed to the more technical theory from running for the hills. 

My first goal is to make electrical engineering knowledge truly accessible. I found few resources that we both truly sequential and widely available at no cost. Theory and practice are not usually taught alongside each other due to time restriction. So my main aim is to bridge this gap and expose you to both theory and building as early as possible. Let's begin!

== 0.2) Derivatives as an Function Transformation Device

Imagine yourself as a king during the early Renaissance period. Your kingdom attracts all kind of scholars, many of which are alchemist. You gather them all and request something unheard of prior. A device that would break down your jewelry and crowns into the metals that they are made of. These being tin (least valuable), iron (second most valuable), and gold (most valuable).

After weeks, you were presented a box like device. Its behavior was an bit odd. It burned all the tin to ash,  turned the iron to tin, and the gold to iron. What would such a device look like in the mathematical world? Allow me to introduce the derivative. 


#figure(
  image("scr_s_desmos-graph_der_1.png", width: 70%),
  caption: [
    Image of graph before taking derivative
  ],
)

$
equation(
  f(x) = cases(
    1/2x^2   "between" 0 <= x <= 2,
    2 "between" 2 <= x <= 4,
    x-2   "between" 4 <= x <= 5,
    -x + 8 "between" 5 <= x<= 8,
  )
)
$

#figure(
  image("scr_s_desmos-graph_der_2.png", width: 70%),
  caption: [
    Image of graph after taking derivative
  ],
  
)

$
equation(
  f'(x)=(d/"dx")(f(x)) = cases(
    x   "between" 0 <= x <= 2,
    0 "between" 2 <= x <= 4,
    1   "between" 4 <= x <= 5,
    -1 "between" 5 <= x<= 8,
  )
)
$

On the coordinate plan, this translate into:
+ horizontal line (where y $!= 0$) --> 0
+ linear equation ($y = m x + b$) --> horizontal line (where y $!= 0$)
+ parabola ($y = "constant_1" * x^2 + b$) --> linear equation ($y = m x + b$)

To briefly explain the general idea, notice how the equations are becoming "less complex". By that, I mean that their exponent value is decreasing by 1.


By going from parabola to linear, we go from the format of $y =  x^2$ to the format of $y = x = x^1$. The exponent goes from 2 to 1.

By going from linear to horizontal ($y = "constant"$), we go from the format $y=x = x^1$ to the format $y = x^0= 1 ("an constant")$. The exponent goes from 1 to 0.

But why is the derivative of an constant a 0? Following the pattern above, we should be going from $y = x^0 = 1$ to $y = x^(-1) = 1^(-1) =1.$ That's not zero, you tell yourself. Well, the derivative doesn't just reduce the exponent. There's also an "hidden" constant multiplier, which is the original exponent value. Observe the following graphs below.

#grid(
  columns: 3,
  gutter: 1em,

  figure(
    image("sc_r_graph1.png", width: 100%),
    caption: [Shows $y = x^2 $]
  ),
  figure(
    image("sc_r_graph2.png", width: 100%),
    caption: [Shows $y = x^1 = x $]
  ),
  figure(
    image("sc_r_graph3.png", width: 100%),
    caption: [Shows $y = x^0 = 1$]
  ),
)

#grid(
  columns: 3,
  gutter: 1em,

  figure(
    image("sc_r_graph1_der.png", width: 100%),
    caption: [Shows derivative of $y = x^2 $, which is $y = 2x^1 = 2x$]
  ),
  figure(
    image("sc_r_graph2_der.png", width: 100%),
    caption: [Shows derivative of $y = x^1 = x $, which is $y = 1x^0 = 1$]
  ),
  figure(
    image("sc_r_graph3_der.png", width: 100%),
    caption: [Shows derivative of $y = x^0 = 1$, which is $y = 0x^(-1) = 0 $]
  ),
)

If $y = x^2$, then its derivative is $(d/"dx")(y)=y' = 2x^1$.

If $y = x^1 = x$, then its derivative is $(d/"dx")(y)=y' = 1x^0 = 1(1) = 1$.

If $y = x^0 = 1$, then its derivative is $(d/"dx")(y)=y' = 0x^(-1)= 0$.

Notice how original exponent is moved in front of the number. The new exponent becomes the old exponent - 1. This is known as the power rule (for derivatives) and it helps find the derivative of any algebraic functions made of x (polynomials). The power rule can be described : $(d/"dx")(x^n) = n x^(n-1)$. 

But how do take the derivative of the function that's not made of x? What about for trig functions and log? The process of taking the derivates varies based on the type of function but an key aspect remains the same. The derivative and its relationship to rate of change.

== 0.3) Derivatives and Rate of Change

Recall these 2 earlier figures. What if I tell you there's an alternative method of going from one figure to the other? All by finding the original graph's slopes or rate of change. 

#grid(
  columns: 3,
  gutter: 1em,

  figure(
    image("scr_s_desmos-graph_der_1.png", width: 100%),
    caption: [Shows graph before derivative  ]
  ),
  figure(
    image("scr_s_desmos-graph_der_2.png", width: 100%),
    caption: [Shows graph after derivative ]
  ),
)

An object's slope describes how much it's rising vertically in comparison to how much its rising horizontally. It follows the form of : $"vertical rise" / "horizontal rise"$. To find vertical rise, we subtract the y values from 2 points. To find horizontal rise, we subtract the the x values from 2 points. 

This only applies if the slope is consistent throughout. For parabolas and more complex graphs, we have to do something else. But for now, let's focus on what slopes we can find through the approach above. 

Our second graph is from (2,2) to (4,2). If we assume the format of $(x_1,y_1)$ and $(x_2, y_2)$, we get $"slope" = (y_2 - y_1)/(x_2 - x_1) = (2-2)/(4-2) = 0$. If we assume the format of $(x_2,y_2)$ and $(x_1, y_1)$, we get $(y_1-y_2)/(x_1-x_2) = (2-2)/(2-4) = 0.$ This means that the slope between (2,2) and (4,2) is 0, therefore its derivative is also 0. 

Let's repeat this process with a slope that's not 0. 

Our third graph is from (4,2) to (5,3). If we assume the format of $(x_1,y_1)$ and $(x_2, y_2)$,we get $"slope" = (y_2 - y_1)/(x_2 - x_1) = (5-4)/(3-2) = (1)/(1) = 1.$ If we assume the other format of $(x_2,y_2)$ and $(x_1,y_1)$, we get $(y_1 - y_2)/(x_1 - x_2) = (4-5)/(2-3) $ = $(-1)/(-1) = 1.$ This means that the slope between the 2 points is 1, therefore its derivative is also 1.

Why did I use both "formats". It's simply to show that it doesn't matter which x or y coordinate you subtract first, as long as you remain consistent.

But what about graphs that are not linear? The graph from (0,0) to (2,2) is an parabola. We know that the graph between these 2 points is f(x) = $1/2x^2$. When x = 0, its y value is 0. When x = 1, its y value = $1/2(x)^2 = 1/2(1)^2 = 0.5$. When x = 2, its y value is $1/2(x)^2 = 1/2(2)^2 = 2$. 

Using the input as our x values and the output as our y values, we can plot coordinate points. Those are (0,0), (1, 0.5), and (2,2). Let's find the slope between (0,0) and (1, 0.5) as well as the slope between (1, 0.5) and (2,2). Recall that the slope formula is either $"slope" = (y_1 - y_2)/ (x_1 - x_2)$ or $"slope" = (y_2 - y_1) / (x_2 - x_1)$. 

The slope between (0,0) and (1, 0.5) is $(0.5 - 0)/(1-0) = (0.5)/(1) = 0.5 $ or $(0 - 0.5)/(0 -1) = (-0.5)/ (-1) = 0.5$.

The slope between (1, 0.5) and (2,2) is $(2-0.5)/(2-1) = (1.5)/(1) = 1.5 $ or $(0.5 - 2)/(1-2) = (-1.5)/(-1) = 1.5.$

Notice how the slope between them is different. If it was an linear equation, the slope between every point would be identical. But for equations whose degree is greater than 1, the slope between each points can very. So we will have to estimate. 

As mentioned prior, the derivative decreases the degree of the function. So the derivative of the parabola we have between $0<= x <= 2$ is a linear equation that also exists within that range. So we need to find a $y = "constant" *x$. from (0,0) to (2,2).

We know that $y = m x +  c$, where m is the slope and c is the y intercept value. Our slope is between (0,0) and (2,2) is $(2-0)/(2-0)=(2)/2 =1.$ We can substitute our slope value with m, giving us $y = (1)x + c = x + c.$ We now need to find c by isolating it on one side of the equation. We can plug the points (0,0) or (2,2) into our x and y to find c. Lets show both scenarios.

If we use (2,2), x = 2 and y = 2. This means that $(y = x + c ) --> (2 = 2 + c) --> (c = 0)$.

If we use (0,0), x = 0 and y = 0. This means that $(y = x + c) --> (0 = 0 + c) --> (c = 0)$.

This means that derivative of $y = 1/2(x^2)$ which exist between $0<= x <= 2$ is y = x. We can confirm using the graph or the power rule.

To summarize, the derivative = rate of change = slope.

== 0.4) Integrals as  Function Transformation Devices
Let's return to the kingdom from 1.2, which you are the king of. Weeks after receiving the device, you grew dissatisfied. The original device seems to have demoted all that went inside of it. Gold was the most valuable, followed by iron, and ending with tin. Your tin was burned to ashes, your iron became tin, and your gold became iron. 

Your transformed metals were now cheaper than they were originally. You felt scammed as you lost all your gold through using the device. Angered, you gather all your experts under threat of exile. After weeks of work, you acquire a new box device. The box behaved in the following manner.

The ash remains ash, the tin became iron, and the iron transformed into gold. Yeah! You now have all the gold you lost. You've place a spec of gold and it's transformed into a more valuable gem. What does this process look like on a graph? 

#figure(
  image("integral_og_before.png", width: 95%),
  caption: [Shows the graph before the integral]
)

$
equation(
  f(x) = cases(
    -x   "between" -2 <= x <= 0,
    x  "between" 0 <= x <= 2,
    2   "between" 2 <= x <= 4,
    0 "between" 4 <= x<= 6,
  )
)
$

#figure(
  image("or_integral_after.png", width : 65%),
  caption: [Shows the graph after the integral]
  
)

$
equation(
  F = integral f(x) = cases(
    -1/2x^2 + C  "between" -2 <= x <= 0,
    1/2x^2 + C  "between" 0 <= x <= 2,
    2x + C  "between" 2 <= x <= 4,
    0 + C "between" 4 <= x<= 6,
  )
)
$

- $P_"red, bottom" = (-2,-2)$ 

- $P_"blue" = (0,0)$ 

- $P_"green" = (2,2)$

- $P_"purple" = (4,6)$

- $P_"black" = (4,0)$

- $P_"red, x-axis" = (6,0)$

On the coordinate plan, this translate into:
+ horizontal (where y = 0) --> 0
+ horizontal (where $y != 0 $) --> linear equation ($y = m x + b$)
+ linear equation ($y = m x + b$) --> parabola ($y = "constant" * x^2 + C$)

Unlike in derivatives, the integrals lead to the functions becoming more "complex". Their exponents are now being increased by 1.

When integrating a horizontal line, we obtain an linear equation. We go from the format of $y = x^0$ to the format of $y = x^1$, increasing our exponents by 1. 

When integrating a linear equation, we obtain an parabola. We go from the format of $y = x^1 = x$ to the format of $y = x^2$.

Just like the derivative, taking the integral results in the resulting transformation being multiplied with a constant. With integrals, the constant is not the original exponent value. Instead it's the reciprocal of said exponent, 

#grid(
  columns: 3,
  gutter: 1em,

  figure(
    image("sc_r_graph1.png", width: 100%),
    caption: [Shows $y = x^2 $]
  ),
  figure(
    image("sc_r_graph2.png", width: 100%),
    caption: [Shows $y = x $]
  ),
  figure(
    image("sc_r_graph3.png", width: 100%),
    caption: [Shows $y = 1$]
  ),
)

#grid(
  columns: 3,
  gutter: 1em,

  figure(
    image("sc_r_graph1_integral.png", width: 100%),
    caption: [Shows integral of $(x^2)$, $y = 1/3x^3 + C $]
  ),
  figure(
    image("sc_r_graph1.png", width: 100%),
    caption: [Shows $integral(x)$, $y = 1/2 x^2 + C$ ]
  ),
  figure(
    image("sc_r_graph2.png", width: 100%),
    caption: [Shows $integral(1)$, $y = x + C$]
  ),
)

If $y = x^2$, then its integral is $integral(y) = F = (x^3)/3 + C = 1/3 x^3 + C.$

If $y = x$, then its integral is $integral (y) = F = (x^2)/2 + C = 1/2 x^2 + C$

If $y = 1$, then its integral is $integral (y) = F = x/1 + C = x + C$

The reciprocal of our exponent becomes a constant for the expression. The new exponent is now the old exponent + 1. This is also called the power rule and it works for functions composed of x (or polynomials). The power rule for derivative has a different formula than the power rule for integrals. The power rule (for integrals) is : $(x^(n+1))/(n+1)$.

So how do we take the integral of functions that are not polynomials? Once again,the methods change but a different concept remains consistent. The integral and its impact of area under a curve.

== 0.5) Integrals and Area Under a Curve

I haven't actually taken the integral of the graph between the ranges of values that it existed in. So let's start with our unmodified graph.

#figure(
  image("integral_og_before.png", width: 95%),
  caption: [Shows the graph before the integral]
)

$
equation(
  f(x) = cases(
    -x   "between" -2 <= x <= 0,
    x  "between" 0 <= x <= 2,
    2   "between" 2 <= x <= 4,
    0 "between" 4 <= x<= 6,
  )
)
$

When we are numerically solving a derivative, we just find the derivative at one point. We take the derivative of f(x) and then plug in that specific point as x.


Integrals are a bit different, requiring 2 points or locations on a graph. That's because we typically take the integral from $x_1$ to $x_2$. One of these points representing an starting point while the other is the end point. The larger value is the upper limit and is found at the top of the integral symbol. The smaller value is the lower limit is is found at the bottom of the integral symbol. 

So lets take the integral of f(x) between these following points:
+ From $x_1 = -2$ to $x_2 = 0$
+ From $x_1 = 0$ to $x_2 = 2$ 
+ From $x_1 = 2$ to $x_2 = 4$
+ From $x_1 = 4$ to $x_2 = 6$

These x values above will serve as our upper and lower limits. Our calculations will follow this format: $integral^(x_2)_(x_1) f(x).$ Using this, we obtain these values:

+ $integral^0_(-2)f(x)$ = $integral^0_(-2)(-x)$ = $-(1/2x^2)|^0_(-2)$ = $(-1/2)(x^2)|^0_(-2)$ = $(-1/2)(0^2-(-2)^2)$ = $(-1/2)(-4) = 2$

+ $integral^2_0 f(x)$ = $integral^2_0x$ = $(1/2x^2)|^2_0$ = $1/2(2^2-0) = (1/2)(4) = 2$

+ $integral^4_2 f(x)$ = $integral^4_2 2$ = $(2x)|^4_2$ = 2(4-2) = 2(2) = 4

+ $integral^6_4 f(x)$ = $integral^6_4 0$ = 0

To summarize our calculations:

- The integral of -x from 0 to -2  is 2.

- The integral of x from 2 to 0 is 2.

- The integral of 2 from 4 to 2 is 4.

- The integral of 0 from any range will always be 0. 

This means that the integral of the entire graph is the sum of the integrals from the various ranges.If F = $integral(f(x))$, then $F_"total"$ = $F_1$ + $F_2$ + $F_3$ + $F_4$. This would mean that our collective integral is 2 + 2 + 4 + 0 = 8.

Now, let's find the areas beneath the lines. How exactly? By using area formulas for the shapes formed on the graph. To be more precise, we will divide our graphs into equal "pieces" with identical width. We then find the areas of these shapes which exist across the subsections. 

The smaller these subsections, the more accurate our area becomes. For our example, that won't be necessary as our graph is "simple". If our graph had parabolas and more complex shapes, that process would have been more crucial. 

Let's divide our graph at the origin and at any x value where x is a multiple of  +2 or -2. This creates 4 pieces with each having a width of 2. Within the context of our unmodified (input) graph, our function never exceeds the y value of 2. If our graph has any vertical length, its 2. Else, it's simply zero.

From x = -2 to x = 0, we have a triangle with a base of 2 and a height of 2. This means our area should be $1/2(2)(2) = (4)(1/2) = 2$.

From x = 0 to x = 2,we have another triangle with a height and base of 2. So our area is $1/2(2)(2) = (4)(1/2) = 2$

From x = 2 to x = 4, we have a square with the width and height of 2. Our area is merely 2(2) = 4.

Our last shape doesn't have any height.Area formulas are typically a bunch of variables and maybe constants being multiplied together. Since one of the values being multiplied is 0, the entire product becomes 0.

You can also view the last shape as a "rectangle" with 0 height, leading to the same result. 

To summarize, integral = area under shape formed by the function.

== 0.6) Integrals and Derivatives as Inverses

Let's revisit our graph after the derivative from section 1.3).

#figure(
  image("scr_s_desmos-graph_der_2.png", width: 70%),
  caption: [
    Graph before integral (this is the result of derivative from 1.2 and 1.3. I'll return to this )
  ],
  
)

$
equation(
  f(x) = cases(
    x   "between" 0 <= x <= 2,
    0 "between" 2 <= x <= 4,
    1   "between" 4 <= x <= 5,
    -1 "between" 5 <= x<= 8,
  )
)
$

Let's take the integral of it. Remember the following "rules" introduced when we first started discussing integrals and return to the kingdom.

- horizontal line ($y = 0$) --> zero
- horizontal line ($y != 0$) --> linear equation ($y = m x + b$)
- linear equation ($y = m x + b$) --> parabola ($y = "constant" * x^2 + b$)

To be more concrete, I will be taking the integral through area under curve and the power rule. This is to show multiple perspective which would all lead to the same answers.

+ $integral^2_0(x) = 1/2(x^2)|^2_0 = 1/2(2^2-0) = 1/2(4) = 2$

+ $integral^4_2(0) = 0$

+ $integral^5_4(1) = (x)|^5_4 = (5 - 4) = 1 $

+ $integral^8_5(-1) = (-x)|^8_5 = -1(x)|^8_5 = -1 (8 - 5) =-1(3) = -3$

Let's take the areas from the following points:
- x = 0 to x = 2 
- x = 2 to x = 4
- x = 4 to x = 5 
- x = 5 to x = 8

+ Our area from the first range is $1/2(2)(2) = 1/2(4) = 2.$
+ Our area from the second range is 2(0) = 0.
+ Our area from the third range is (1)(1) = 1.
+ Our area from the fourth range is (1)(3) = 3. Since its below $y =0,$ our integral is negative. So the integral calculated through area is -3. 

Within our context, the definite integral (integral with values plugged in) will be less useful than our indefinite integral (integral without values plugged in). 

Don't worry, we already have indefinite integral if we stop right before we plug in the x_1 and x_2 values in our example above. 

+ $integral^2_0(x) = 1/2x^2+ C$

+ $integral^4_2(0) = 0 + C$  --> $integral^2_0((d/"dx")(2))$ = 2 + c (both are equal since $((d/"dx")(2)$ = 0)
+ $integral^5_4(1) = x + C$

+





#figure(
  image("scr_s_desmos-graph_der_1.png", width: 70%),
  caption: [
    Graph after integral (this was our graph from 1.2 and 1.3 before the derivative)
  ],
)

$
equation(
  F(x)= integral_(x_1)^(x_2)  f'(x) = cases(
    1/2x^2 + c   "between" 0 <= x <= 2,
    2 + c "between" 2 <= x <= 4,
    x + c   "between" 4 <= x <= 5,
    -x + c "between" 5 <= x<= 8,
  )
)
$

Taking the integral of a derivative graph results in our original graph. Taking the derivative of a integral also results in our original graph .

As an exercise, you could try this with graphs in a similar manner as I have done for this section.

This shows that derivatives and integrals can cancel each other, as if they are inverses. That;s because they are and this relationship is called the "Fundamental Theorem of Calculus". 

To avoid a common trap, let me be more precise on how I define this type of inverse.

== 0.65) Inverse Relationship and the 3 Forms of Water
If you have been in a kitchen (or are still alive), you encountered water. In many instances, a pot of water is placed on a stove before its heated. Let that unaltered liquid water to be f(x). f(x) is our original function before its transformed in any way.

When you apply heat to the pot, it begins to evaporate . After a while, all the water will become steam. Let the steam aftermath of boiling the liquid water (f(x)) be f'(x). f'(x) is the derivative of f(x), an modification of f(x) (our original, unaltered function.). In this context, the derivative would be the process of adding heat. This is the mean from which we go from f(x) --> f'(x), where $f'(x)= (d/"dx")(f(x)).$

After evaporating all the pot's content, you refill the pot with liquid water (f(x), the original, unchanged function.) Instead of boiling, you place the water in your freezer. After a while, the water will solidify and become ice. Let the solid ice aftermath of freezing the liquid water f(x) be F(x). F(x) is the integral of f(x), an modification of f(x) (the original function). In this context, the integral would be the process of removing heat (through freezing). This is how we go from f(x) --> F(x), where $F(x) = integral(f(x))$.

With all of these "rules" in mind, here's how the derivative and integral cancel each other.

In scenario 1, we take the derivative of an integral. This would look like $(d)/("dx")(integral()) $ or f'(F(x)). Recall these 2 rules. Taking the derivative means adding heat within our construct. And F(x) is the aftermath of integration which is ice. So taking the derivative of an integral would be like boiling ice cubes, That would result in the unaltered liquid water.

In scenario 2, we take the integral of an derivative. This would look like $integral(d/"dx") $ or $F(f'(x))$. Recall these 2 rules. Taking the integral means 
removing heat within our construct. And f'(x) is the  aftermath of derivation which is steam. So taking the integral would be the equivalent of cooling steam. This would result in the unaltered liquid water. (Fun fact: gaseous water cooling down is how rain is created).

So what's the purpose of this exercise? It's to show that the inverse I'm talking about isn't an additive inverse. Like what happens when you add + 1 and -1, resulting in 0. The kind of inverse we're talking about returns something previously modified into its original state. 

== 0.7) Why Learn Integrals and Derivatives?

Why did I spent so much talking about 2 fundamental calculus topics? How is this strange math relevant to electronics, or even the outside world? Well, various phenomenon in physics are described through the lens of the integral and derivative.

These problems below showcase occurrences that can be described through derivatives and integrals. This is meant to be a teaser, so I wont go into much detail about what each variable mean.

=== Problem 1:

The relationship between current (I) and charge (Q) is defined as $I = (d/"dt")(Q)$. A capacitor on a breadboard is storing some charge. It's charge can be represented as the following : 

#figure(
  image("0_example1_before.png", width: 70%),
  caption: [
    Graph of our charge Q
  ],
)

$
equation(
  q(t)= cases(
    t   "between" 0 <= t <= 2,
    2  "between" 2 <= t <= 4,
    -t + 6 "between" 4 <= t <= 6,
  )
)
$

Find the current i(t). 

== Solution 1: Slope method and power rule (for derivatives)

Recall that the slope formula is either $(y_2 - y_1)/(x_2 - x_1)$ or $(y_1 - y_2)/(x_1 - x_2)$. 

+ $(2 - 0)/(2 - 0) = (2)/(2) = 1$

+ $(2-2)/(4-2) = (0)/2 = 0$

+ $(0-2)/(6-4) = (-2)/(2) = -1$

Now let's just "confirm" this with the power rule.

+ $(d/"dt")(t^1) = 1 t^0 = 1 $

+ $(d/"dt")(2) = 0$

+ $(d/"dt")(-t^1 + 6) = (-d/"dt")(-t^1)+ (d/"dt")(6) = (-1t^0) + (0) = -1$

Using our solution above, i(t) can be described as:

$
equation(
  i(t)= (d/"dt")(q) = cases(
    1   "between" 0 <= t <= 2,
    0  "between" 2 <= t <= 4,
    -1 "between" 4 <= t <= 6,
  )
)
$

== Problem 2:

As mentioned above, $I = (d/"dt")(Q)$. To calculate Q, we simply integrate both sides of the equation. This results in $Q = integral(I) + C.$ We're assuming no initial conditions, so $Q = integral(I)$.


Given this current i(t):

#figure(
  image("0_example2_before.png", width: 70%),
  caption: [
    Graph of our  current I
  ],
)

$
equation(
  i(t)= cases(
    -t + 4   "between" 0 <= t <= 2,
    2  "between" 2 <= t <= 4,
    -t + 6 "between" 4 <= t <= 6,
  )
)
$

Find the charge q(t) and calculate the amount of it produced during each interval 

== Solution 2: Area method and power rule (for integrals)

Let's break the graph into 3 segments: 
- from x = 0 to x = 2
- from x = 2 to x = 4
- from x = 4 to x = 6

Each segment has a width of 2. Using this, we can calculate the areas of our basic shapes.

+ From the first range, we have a triangle placed on top of a square. The triangle has an base and height of 2, leading to $"area" = (1/2)(2)(2)= (1/2)(4) = 2$. 
 - With an length and width of 2, the square's area is $(2)(2) = 4$. To find total area, we add the area of the triangle and the square. Our total area is $2 + 4 = 6.$

+ From the second range, we have a square with the base and height of 2. This means our area is $2(2) = 4$

+ By having a base and height of 2, our triangle has an area of $(1/2)(2)(2) = (1/2)(4) = (2)$.

Let's now use the power rule to make sure our calculations are accurate.

+ $integral^2_0(-t + 4 ) = integral^2_0(-t) +integral^2_0(4) = 
(-1/2)(t^2)|^2_0 + (4)(t)|^2_0 = (-1/2)(2^2-0) + (4) (2 - 0) = (-1/2)(4) + (8) = (-2) + (8) = 6$

+ $integral^4_2(2) = (2)(x)|^2_0 = 2 (2 - 0) = 2(2) = 4$

+ $integral^6_4(-t +6) = integral^6_4(-t) + integral^6_4(6) = (-1/2)(t^2)|^6_4 + 6(t)|^6_4 = (-1/2)(6^2-4^2)+ 6(6-4) = (-1/2)(20) + (6)(2) = -(10) + (12) = 2.$

$
equation(
  q(t)= cases(
    -1/2t^2 + 4t + C   "between" 0 <= t <= 2,
    2t + C  "between" 2 <= t <= 4,
    -1/2t^2 + 6t + C "between" 4 <= t <= 6,
  )
)
$

From 0 to 2, we produce 6 Coulomb (C).

From 2 to 4, we produce 4 Coulomb (C).

From 4 to 6, we produce 2 Coulomb (C).


