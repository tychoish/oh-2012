When I applied for the job at 10gen, as the first (and at the time
only) technical writer--I feel like everyone has one of these
stories--the title on the posting was "Documentation Engineer." To
which I laughed and said, "Sure, why not?"

Thankfully 10gen said something similar about me, and here we
are. Also thankfully, (and perhaps more importantly,) I was able to
convince them to put "Technical Writer" on my cards. In someways the
original title, "Documentation Engineer," has shaped the way that I
have approached the work at 10gen, and the documentation project that
we are undertaking. This session is about that project: developer
centered documentation, and building a documentation projects that
are:

- sustainable, 
- maintainable, 
- useful, and 
- innovative.

... insomuch as is possible given that MongoDB is *a database*. Which is
to say, databases are cool, and I'd love to talk to you all later
about various challenges and developments in the database space in the
last few years after the session, but at the end of the day databases
should fade into the background and let the application take over. In
light of that overriding fact, there's only so much exciting you can
pack in to the documentation for a database.

But we'll persevere.

When I arrived, 10gen suffered under what I've come to recognize as
"information debt:" they had a great product, a vibrant community, a
lot of great features, and documentation that was in trouble: 

- the style was inconsistent,
- it didn't track the released versions of the product very well, 
- there was no guiding organization.
  
Everyone was unhappy, no one had time to do anything about it, and
there wasn't an obvious place to start. This is a situation that's
pretty typical of projects in general, but particularly of tools aimed
at technical audiences. There are many of examples of this: 

- All OpenVPN documentation. 
  
- The documentation of all Nginx Modules. 

- Pretty much any APO reference that contain 100 entries that
  resemble:
  
  .. example::

     ``document.findOne(<query>)``

     ``findOne()`` returns one document matching the query
     passed as an argument to the method.

While I think the relative typicality of 10gen and MongoDB is open for
discussion in terms of open source projects, and developer-centered
projects, I think these kinds of problems are incredibly prevalent
across projects and documentation resources of all sizes and scopes. 

The bounds of the project laid out for me, when I started as
"Documentation Enginner," were thus to build something that was: 

- well organized and useful.
- open source. 
- maintainable moving forward.
  
In short, do better, and make sure we don't recapitulate the situation
that lead to the information debt in the first place. What we did may
be useuful in other circumstances *and* will form the basis of the
remainder of this session: 

1. Tools are incredibly important. Good tools make great things
   possible.

   - Documentation builds need to be efficient and local for testing
     and review. 
     
   - I've yet to hear a compelling argument for dynamically generated
     documentation.

   - MongoDB uses a nifty Sphinx/reStructured Text and make
     system. 

     Sphinx is great from the writer's prospective, great from an
     extensibility perspective, and makes it easy to maintain branches
     of the documentation to track sable release cycles.

   - Use tools that developers are familiar with like version control,
     bug tracking, and code review.

     In a lot of ways, this is the crux of this talk at least in terms
     of the title: Use the same processes and tools that you use for
     code review for documentation: version control (git), code
     reviews, pull requests/merge reviews, and bug reports.

     If nothing else: if you're a technical writer working on
     documentation for developers, think about using developer's tools
     to write documentation as a form of ethnography.

   - There's a lot that can be automated in documentation workflow:
     building, document validation/syntax checking, completeness
     testing, review notifications, link checking, and
     review/publication workflows merging.
     
     There's also a lot that can't be automated, or where automation
     can actually lead to poorer documentation outcomes. I'm thinking
     mostly about codebase documentation extraction.n

     - False sense of completion.
       
     - Tautological documentation. 

     - Poor cross referencing. 

   - For software projects these resemble decisions like "what build
     system should we use," and "what interoperability libraries
     should we use." 

2. Process is even more important. 

   - Documentation projects need to be able to be sure that all
     user-affecting changes are captured and delt with.

   - Content is reviewed and vetted for clarity and consistency.

   - Software projects use bug trackers and testing frameworks to
     automate some of this. Documentation can use bug trackers. The
     challenge is making bugs granular enough to be actionable.

3. Diffusion of responsibility is the greatest threat.

   - Every project needs to have someone be the go-to person for
     documentation issues. 
     
     Or as I like to say "word problems." While style guides and
     "meta" documentation help, the documentation is "functionally
     complete," you need a person, or a small dedicated team to own
     and maintain it. 
     
     New open source projects suffer from the same problem and
     concern. The successful ones have a very dedicated project leader
     and maybe several core contributors--one of whom should be a
     documentation guru--and not many more.

   - Make documentation accessible, but don't use a wiki that that no
     one will maintain. Wiki's are alluring and promise to democratize
     and distribute the onerous documentation workload, but too often
     "anyone can edit," means "everyone else should edit." And a
     million things become infinitely more appealing. 

   - In code this is "if it matters to you, change it yourself,"
     mentality.

In short: 

1. Choose good tools that make documentation easier to do well, but
   don't expect that tool will *do the work for you.* 
   
2. Make sure that your process is good and that no changes to the
   product *or* common problems occur without capturing that
   information.

3. Make sure that specific individuals have responsibility for
   documentation. This doesn't mean that documentation *labor* must be
   centralized, but organization of said probably ought to be.
   
   Again that is something we take for granted in code that we don't
   often take for granted in documentation. 
   
Questions?
