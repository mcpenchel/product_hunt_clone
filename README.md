# Testing

# 2 types of testing strategies:
1 ) TDD (In an interview, do you code with TDD? Say yes!)
- Test-Driven Development (tests !!EVERYTHING!!)

2 ) BDD
- Behavior-Driven Development (tests !!USER STORIES!!)

# 2 types of tests:
1 ) Unit Test
- Testing one method, with all the different scenarios
of what arguments you send, what parameters you receive,
what should the method return.

- Ideally, this is for the MODEL layer!!!
- Never test a controller action with an unit test

2 ) Integration Test
- Test the flow of the application

- Test as if the machine was a real user, so the test will
open the browser, click on stuff, fill the inputs of a form,
check in the database if the product was created (for example)

