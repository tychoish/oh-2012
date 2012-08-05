Overview
--------

.. notslides:: 

   - Formative experiences.
   - Documentation is a necessary feature.
   - Good documentation tools matter.
   - Integrated processes limit "information debt."




History
-------

Linode Library
~~~~~~~~~~~~~~

The MongoDB Documentation Project
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Documentation as a Feature
--------------------------

Conceit
~~~~~~~

Software needs documentation in order to be useful. While
documentation requirements vary more than other components, you
wouldn't ship a release of a software without testing, without
providing interfaces for new features, without providing
diagnostics. 

.. pull-quote:: 
   
   If you're making software that you intend people to use, then it
   needs to have documentation. QED. 

   If you expect that people will use the functionality you provide,
   you must document it.
   
Obviously there are limitations: 

- Not all audiences care about all features. 
  
- Implementation details don't require documentation.

Always err on the side of overdocumenting.   

Documentation Tooling
---------------------

Tooling Suggestions
~~~~~~~~~~~~~~~~~~~

- Use tools that the developers know: git, text files, build systems.
  
- Develop good, clear organizational frameworks that simplify
  maintenance.

- Automate what you can and should, but not everything. Don't
  over think the problem.

Pain Points
~~~~~~~~~~~

- Tautological documentation in documentation generators.
  
- "The test cases should have all the examples you need."

- More tooling than substance. 

Information Debt
----------------

Like "Technical Debt," information debt is what happens when you defer
maintence on documentation, and 
