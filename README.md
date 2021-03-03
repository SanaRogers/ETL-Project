# ETL-Project (Extract, Transform, Load)

### Team Members
Sana Rogers
Ben Sosa
Asif Ali
Meredith Johnson

### Extract:
We sourced and extracted heterogenous data from kaggle on NBA players for Season 2017 - 2018.  We combined three databases that included the Players' respective Teams, PER (Player Efficiency Rating), Draft information and Salary.

### Transform:
We transformed the data by importing and cleaning this data in Pandas.  During this process, we dropped unnecessary columns and reset the index on some of the data.  After we were satisfied with the final data we wanted to use, we began the loading process.

### Load:
We linked to Postgres and continued to work there to merge the three tables together in a presentation format. Unfortunately, we ran into several errors as we built the tables:  First, we were unable to assign Primary Keys as this step resulted in errors we could not resolve.  Second, when we attempted to join the attributes, we received a multitude of errors - with hints indicating syntax and capitalization issues.  We worked as a team to resolve and consulted with our instructors and ultimately were successful in our attempt to load when we placed quotes around the capitalized table names.
Please reference our ERD.png image to visualize the linkage.

### Key Learnings
Our main issue stemmed from not cleaning and normalizing the data.  Our instructor explained to use that we would have been better off dropping duplicate attributes or otherwise combining two attributes to create a composite and unique attribute.  Unfortunately, we set up the schema prior and we would need to create new tables.  Also, if a player attribute changed, we would need to change it in all of our data sources.  In addition, because we have many to one relationships, normalizing our data would benefit from creating a composite key comprised of two attributes making a unique or primary key.