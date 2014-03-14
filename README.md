Decorators

Q) What are decorators ? A design pattern ?

Ans) Decorator is a design pattern that is used to extend the functionality of specific object by wrapping it, without effecting other instances of that object. In general, Decorator pattern is an example of Open-Close Principle (class is closed for modifications but available for extensions).

Ans) A class that surrounds a given class, adds new capabilities to it, and passes all the unchanged methods to the underlying class.

Ans) More Basic answer: A decorator is an object that encloses a component object.

Note: Generally, decorators return decorated object which can be decorated again using other decorators.
A comman example is pizza. Where pizza bread is component and others as decorators.

------------------------
Implementations in Ruby
Four comman implementations in ruby (There are others too)
1) Module + Extend + Super decorator
2) Plain Old Ruby Object decorator
3) Class + Method Missing decorator
4) SimpleDelegator + Super + Getobj decorator

------------------------
1) Module + Extend + Super decorator

This consists of Module, Super and Extend
- module_super_extend.rb

The benefits of this implementation are:
- it delegates through all decorators
- it has all of the original interface because it is the original object

The drawbacks of this implementation are:
- can not use the same decorator more than once on the same object
- difficult to tell which decorator added the functionality

------------------------
2) Plain Old Ruby Object decorator (PORO)
- poro.rb

The benefits of this implementation are:
- can be wrapped infinitely using Ruby instantiation
- delegates through all decorators
- can use same decorator more than once on component

The drawbacks of this implementation are:
- cannot transparently use component's original interface

Coz of this drawback we cannot actually call it as decorator as it is not returning decorated object, called as transparent interface

------------------------
3) Method Missing decorator
- method_missing_decorator.rb

The benefits of this implementation are:
- can be wrapped infinitely using Ruby instantiation
- delegates through all decorators
- can use the same decorator more than once on the same component
- transparently uses component's original interface

The drawbacks of this implementation are:
- uses method_missing
- the class of the decorated object is the decorator

------------------------

4) SimpleDelegator + Super + Getobj decorator
- delegator_decorator.rb

The benefits of this implementation are:
- can be wrapped infinitely using Ruby instantiation
- delegates through all decorators
- can use same decorator more than once on component
- transparently uses component's original interface
- class is the component

The drawbacks of this implementation are:
- it redefines class

------------------------
SimpleDelegator method has been vastly used and we will go forward with that.

------------------------
A very simple decorator
Example: author_decorator

In this example, decorator adds new capabilites arround our author object by wrapping one new and one overridden method.

Note: That overridden method has super which called our author object's age method.

------------------------
But what about Rails helpers and its context.
Let's have our motivation here as cleaning up our Rails helpers. And local rails helpers often need to be defined in terms of other Rails helpers.
Which aren't available in the decorator.

So what, we include ActionView::Helpers::TagHelper in your decorator.

But wait, how are we gonna access local request context, like: url_for, current_user etc.

Draper - is a popular rails Decorator gem, whose power is precisely in letting your decorators use Rails helpers from the current context, using the h accessor.
Like: h.content_tag, or even h.url_for whatever or h.whatever_path(id).

Coming back to our helper problem.
We can use view context in decorator.
Example: BaseDecorator

------------------------
We can decorate object in controller (authors controller) or in helper (application helper)

------------------------

Finally, go through Draper.
------------------------

Few links that helped me,

http://robots.thoughtbot.com/evaluating-alternative-decorator-implementations-in
http://bibwild.wordpress.com/2012/12/19/the-simplest-rails-decorator-implementation-that-just-might-work
http://mikepackdev.com/blog_posts/31-exhibit-vs-presenter
http://www.youtube.com/watch?v=VC5z8nadnQE
https://gist.github.com/jrochkind/4342817
https://gist.github.com/jrochkind/4342928
https://github.com/drapergem/draper

