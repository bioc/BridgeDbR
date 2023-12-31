map <- function(mapper, source, identifier, target = NULL, compactIdentifier = NA) {
    if (!is.na(compactIdentifier)) {
        source <- gsub(":.*", "", compactIdentifier)
        identifier <- gsub(".*:", "", compactIdentifier)
        datasource <- getDataSource(prefix = source)
    } else {
        datasource <- getDataSource(code = source)
    }
    xref <- .jnew("org/bridgedb/Xref", identifier, datasource)
    if (!is.null(target)) {
        datatarget <- getDataSource(code = target)
        targets <- .jarray(c(datatarget), contents.class = "org/bridgedb/DataSource")
    } else {
        targets <- .jarray(list(), contents.class = "org/bridgedb/DataSource")
    }
    mappings <- mapper$mapID(xref, targets)
    if (mappings$size() == 0) {
        return(
            data.frame(
                source=character(), identifier=character(), target=character(),
                mapping=character(), isPrimary=character()
            )
        )
    }
    str <- strsplit(gsub(".*\\[|].*", "", mappings$toString()), ", ")
    targetcodes <- lapply(str, function(x) {
        gsub(":.*", "", x, )
    })
    mappings <- lapply(str, function(x) {
        gsub(":[^:]*$|^[^:]*:", "", x)
    })
    isPrimary <- lapply(str, function(x) {
        gsub(".*:", "", x)
    })
    data.frame(
        source = source,
        identifier = identifier,
        target = unlist(targetcodes, use.names = FALSE),
        mapping = unlist(mappings, use.names = FALSE),
        isPrimary = unlist(isPrimary, use.names = FALSE)
    )
}
