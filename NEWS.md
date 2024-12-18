# BridgeDbR 2.17.1

* Updated to BridgeDb 3.0.28
* Added CiTO annotation to the vignette (not visible in the HTML)
* Added session info to the vignette

# BridgeDbR 2.11.2

BUG FIXES

* Fixed build/test process by including a long-running example into the dontrun{} environment

# BridgeDbR 2.11.1

NEW FEATURES

* Migrated `NEWS` to `NEWS.md`
* Applied BioC code styling
* Added templates for issues and feature requests
* Added a method `exists(mapper, xref)` that checks if the xref is found in the mapping file

SIGNIFICANT USER-VISIBLE CHANGES

* `loadDatabase()` now reports an error if the given location does not exist

BUG FIXES

* Fixed backwards compatibility of map()
* Clarified in the vignette the output `getMatchingSources()`
* Fixed returning an empty data frame when no mappings are found for `map()`

# BridgeDbR 2.9.2

* Updated to BridgeDb 3.0.21

Older versions:

```
CHANGES IN VERSION 2.9.1
------------------------

NEW FEATURES

    o Updated to BridgeDb 3.0.19

CHANGES IN VERSION 2.7.5
------------------------

BUG FIXES

    o Fixed a method definition


CHANGES IN VERSION 2.7.4
------------------------

NEW FEATURES

    o improved code

CHANGES IN VERSION 2.7.3
------------------------

NEW FEATURES

    o Updated to BridgeDb 3.0.14
    o Support primary/secondary identifier annotation
    o Added mapping Bioregistry.io compact identifiers
    o Added getting a DataSource by their Bioregistry.io prefix

BUG FIXES

    o Fixed some metadata in the package Rmd

CHANGES IN VERSION 2.5.0
------------------------

NEW FEATURES

    o Updated to BridgeDb 3.0.13

BUG FIXES

    o Small typo fix in a code example in the Vignette

CHANGES IN VERSION 2.1.2
-------------------------

BUG FIXES

    o Fixed the link to the webpage to download mapping files

CHANGES IN VERSION 1.99.1
-------------------------

BUG FIXES

    o no more downloading of databases in the examples

CHANGES IN VERSION 1.99.0
-------------------------

BUG FIXES

    o Added missing NEWS section for 1.23.1
    o BridgeDb 3.0.0-SNAPSHOT (2020-10-18)

CHANGES IN VERSION 1.23.1
-------------------------

SIGNIFICANT USER-VISIBLE CHANGES

    o no longer supports 32bit on Windows

CHANGES IN VERSION 1.21.6
-------------------------

NEW FEATURES

    o adds a getProperties() method
    o adds a maps() method that can map multiple identifiers

SIGNIFICANT USER-LEVEL CHANGES

    o the map() method now returns a data frame

CHANGES IN VERSION 1.21.5
-------------------------

BUG FIXES

    o fixed links in the Vignette and some further clarification

CHANGES IN VERSION 1.21.4
-------------------------

BUG FIXES

    o updated the Apache Derby library to 10.5.3.0 (fixing compatibility with newer ID mapping databases)
NEW FEATURES

    o Updated to BridgeDb 2.3.0
    o replaced RCurl with curl to fix downloading on Windows

CHANGES IN VERSION 1.21.3
-------------------------

BUG FIXES

    o force RCurl to use TSL1.2
    o added clarification of external data sources used

CHANGES IN VERSION 1.21.2
-------------------------

BUG FIXES

    o updated URL of the /data/gene_database/ location to point directly to bridgedb.github.io
    o now uses the smaller Bs mapping database as test data in the example
    o updated the code for getDatabase() to allow downloading data from any location provided by /data/gene_database/

CHANGES IN VERSION 1.21.1
-------------------------

BUG FIXES

    o no longer tries to get Derby file names online

CHANGES IN VERSION 1.17.5
-------------------------

NEW FEATURES

    o added a link to the vignette to the Figshare Metabolics ID mapping
      database collection

CHANGES IN VERSION 1.17.4
-------------------------

BUG FIXES

    o added missing link to the Bioconductor webpage in the vignette

CHANGES IN VERSION 1.17.3
-------------------------

NEW FEATURES

    o added an attempt to have BioSchemas annotation in the vignette
    o now points to the issue tracker of the new GitHub code repository

CHANGES IN VERSION 1.17.2
-------------------------

NEW FEATURES

    o added getAttributes() that returns the attributes (properties) for the
      given identifier

CHANGES IN VERSION 1.17.1
-------------------------

NEW FEATURES

    o server location for getDatabase() can now be configured with the website
      parameter

BUG FIXES

    o Fixed the default database download server URL (now uses https)

CHANGES IN VERSION 1.15.1
-------------------------

NEW FEATURES

    o README now uses BiocManager for instructions how to install the package


CHANGES IN VERSION 1.15.1
-------------------------

NEW FEATURES

    o Updated to BridgeDb 2.3.0

CHANGES IN VERSION 1.13.6
-------------------------

NEW FEATURES

    o Uses BibTeX again (in the RMarkdown tutorial)
    o Added a section on metabolomics to the tutorial

CHANGES IN VERSION 1.13.5
-------------------------

NEW FEATURES

    o Added to the Metabolomics and Cheminformatics views

CHANGES IN VERSION 1.13.4
-------------------------

NEW FEATURES

    o Converted the vignette to RMarkdown

CHANGES IN VERSION 1.13.3
-------------------------

BUG FIXES

    o Fixed the URLs for GitHub and the issue tracker

CHANGES IN VERSION 1.13.2
-------------------------

NEW FEATURES

    o Restored the original README.md for visitors of GitHub particularly

CHANGES IN VERSION 1.13.1
-------------------------

NEW FEATURES

    o Added information on how to manually download
      mapping databases

CHANGES IN VERSION 1.11.5
-------------------------

NEW FEATURES

    o Added ORCID id for a few authors/maintainers

CHANGES IN VERSION 1.11.4
-------------------------

BUG FIXES

    o Updated to BridgeDb 2.2.2: fixes recognition of new
      HMDB identifiers (closes #1)

CHANGES IN VERSION 1.10.2
-------------------------

BUG FIXES

    o Fixed the NEWS for 1.10.1

CHANGES IN VERSION 1.10.1
-------------------------

NEW FEATURES

    o More unit tests

BUG FIXES

    o Updated to BridgeDb 2.2.0: fixes loading of mapping
      files with new data sources

CHANGES IN VERSION 1.9.3
------------------------

NEW FEATURES

    o adds a method to register a new DataSource
    o adds methods to see if a DataSource exists, based
      on the full name and system code

BUG FIXES

    o Updated file pattern for getBridgeNames()

CHANGES IN VERSION 1.7.2
------------------------

NEW FEATURES

    o Now has a test suite

SIGNIFICANT USER-LEVEL CHANGES

    o Depends on R 3.3

BUG FIXES

    o Bug fixes introduced in versions 1.3.2 and 1.3.3

CHANGES IN VERSION 1.3.3
------------------------

BUG FIXED

    o fixed returning of GO mappings (Lars Eijssen)

CHANGES IN VERSION 1.3.2
------------------------

BUG FIXED

    o fixed the getting for BridgeDb database names for recent download server
      updates
    o added better documentation for loadDatabase()

CHANGES IN VERSION 1.3.1
------------------------

SIGNIFICANT USER-VISIBLE CHANGES

    o Depend on R 3.2


CHANGES IN VERSION 1.3.0
------------------------

SIGNIFICANT USER-VISIBLE CHANGES

    o getOrganismCode() now throws an error when the given species was not found
    o map() can now also return all possible mappings
    o getBridgeNames() now also supports other locations and custom file name
      patterns

NEW FEATURES

    o adds unit testing (with testthat)
    o updated vignette for new user-visible changes
    o updated the BridgeDb libraries to version 2.1.0

BUG FIXES

    o added license infromation for Java libraries (Apache Derby and BridgeDb)
    o fixed a wrong descriptiong in the documentation of loadDatabse()
    o download of BridgeDb identifier mappings files is now forces as binary
      fixing the downloading on MS-Windows platforms
    o source code line length according to Bioconductor

CHANGES IN VERSION 0.99.1
-----------------------

SIGNIFICANT USER-VISIBLE CHANGES

    o No changes 

NEW FEATURES

    o New package

BUG FIXES

    o No changes classified as 'bug fixes' (package under active
    development)
```
