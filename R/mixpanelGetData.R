mixpanelGetData <- function(
  account,                  # Mixpanel account
  method="export/",         # Route on Mixpanel API.
  args,                     # Argument list, e.g. list(from_date=.., to_date=.., ...)
  validitySeconds=60,
  verbose=TRUE,
  fileName="",              # File name to persist data (defaults to './temp.txt'). If supplied, account$dataPath is used as path.
  data=FALSE,               # If FALSE, data is downloaded, but not returned as function argument.
  retryCount=0,             #  
  encoding="UTF-8"          # See fork https://github.com/jzking/RMixpanel. 
) {
  if(method == "export/") 
    endpoint = 'https://data.mixpanel.com/api/2.0'
  else 
    endpoint = 'https://mixpanel.com/api/2.0'

  headers = c('Authorization' = paste('Basic ', base64enc::base64encode(charToRaw(paste(account$apiSecret, ':', account$apiSecret, sep=''))), sep=''))
  
  url = paste(endpoint, "/", method, "?", sep="")
  for (name in names(args)) {
    arg = args[[name]]
    if (is.character(arg))
      arg = URLencode(arg, reserved=TRUE)
    url = paste(url, name, "=", arg, "&", sep="")
  }
  
  for (trial in 0:retryCount) {
    code = -1
    try({
      if (verbose) {
        urlAnonym <- url
        substr(urlAnonym, 15, 25) <- "XXXXXXXXXXX"
        cat("## Download ", urlAnonym, "... ", sep="")
      }
      res <- RCurl::getURL(url, httpheader=headers, .encoding=encoding) # See fork https://github.com/jzking/RMixpanel. 
      
      ## Create vector of events from \n-separated character scalar.
      if (verbose) {
        cat("parse data...\n")
      }
      res <- unlist(strsplit(res, "[\n\r]"))
      break
    }, silent=TRUE)
    
    cat("## !!! Retry... ", date(), "\n")
    Sys.sleep(2)
  }
  
  if (fileName != "") {
    dir.create(account$dataPath, recursive=TRUE, showWarnings=FALSE)
    if(method == "export/") 
      filePath = paste(account$dataPath, "/", fileName, args$from_date, ".txt", sep="") # Events of 1 day.
    else
      filePath = paste(account$dataPath, "/", fileName, ".txt", sep="")
    cat(res, file=filePath, sep="\n")
  }
  
  if (data) {
    return(res)
  }
}
