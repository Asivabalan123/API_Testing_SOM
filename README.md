# API_Testing_SOM

A service object model is used to test the movies API. The SOM is used to define complex actions, it also helps take out the logic from other areas of the MVC files.s

Before using any service:
This project requires a number of gems to be installed, which are included in the gemfile for convenience. Please run 'bundle' and they will be installed for you.

You will also need an API key, which should not be shared online, and has therefore been hidden. You can get an API key by creating an account at https://postcodes.io/docs'.

Following this, please create a file named '.env' in the main project directory. This file should include your api key, in the format "OPENWEATHER_API_KEY=000000000", where 000000000 is replaced with your API key

This is a service object model (SOM) boiler plate. This file consisted of the layout to create a SOM using the tests and methods used to test the postcode API (http://postcodes.io/). A SOM is breaking API services down into objects to then create methods around the service. As this extracts the logic from our tests, which allows the SOM to be reusable and ma. A SOM makes code more reusable and maintainable.
