.packageName <- "BridgeDbR"

require(rJava, quietly = TRUE)

.onLoad <- function(lib, pkg) {
    dlp <- Sys.getenv("DYLD_LIBRARY_PATH")
    if (Sys.info()["sysname"] == "Darwin") {
        Sys.setenv("DYLD_LIBRARY_PATH" = sub("/usr/X11R6/lib", "", dlp))
    }
    libJars <- c(
        "org.bridgedb.jar",
        "org.bridgedb.bio.jar",
        "org.bridgedb.rdb.jar",
        "derby-10.15.2.0.jar",
        "derbyclient-10.15.2.0.jar",
        "derbyshared-10.15.2.0.jar",
        "derbytools-10.15.2.0.jar"
    )
    .jpackage(pkg, jars = libJars)
    # make sure the biodatasources are instantiated
    .jcall("org/bridgedb/bio/DataSourceTxt", "V", "init")
}
