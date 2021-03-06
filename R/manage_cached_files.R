
#' @title Manage Locally Cached BOM Files
#'
#' @description Manage cached \pkg{bomrang} satellite imagery files with
#' \pkg{hoardr}.
#'
#' @export
#' @name manage_cache
#'
#' @details The default cache directory is\cr
#' \code{file.path(rappdirs::user_cache_dir(), "R/bomrang")}, but you can
#' set your own path using \code{manage_cache$cache_path_set()}
#'
#' \code{manage_cache$cache_delete} only accepts one file name, while
#' \code{manage_cache$cache_delete_all} does not accept any names, but deletes
#' all files. For deleting many specific files, use\cr
#' \code{manage_cache$cache_delete} in an \code{\link[base]{lapply}} type call.
#'
#' @section Useful user functions:
#' \itemize{
#'  \item \code{manage_cache$cache_path_get()} - get cache path
#'  \item \code{manage_cache$cache_path_set()} - set cache path
#'  \item \code{manage_cache$list()} - returns a character vector of full
#'  path file names
#'  \item \code{manage_cache$files()} - returns file objects with metadata
#'  \item \code{manage_cache$details()} - returns files with details
#'  \item \code{manage_cache$delete()} - delete specific files
#'  \item \code{manage_cache$delete_all()} - delete all files, returns
#'  nothing
#' }
#'
#' @examples \dontrun{
#'
#' # list files in cache
#' 
#' imagery <- get_satellite_imagery(product_id = "IDE00425",
#'                                  scans = 1,
#'                                  cache = TRUE)
#' 
#' manage_cache$list()
#'
#' # delete certain database files
#' manage_cache$delete("file path")
#' manage_cache$list()
#'
#' # delete all files in cache
#' manage_cache$delete_all()
#' manage_cache$list()
#'
#' # set a different cache path from the default
#' manage_cache$cache_path_set("~/tmp")
#' }
NULL
