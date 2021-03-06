% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/gather-spc.R
\name{gather_spc}
\alias{gather_spc}
\title{Gather spectra of different types from nested list of spectral data
into a tibble object}
\usage{
gather_spc(data = data, spc_types = c("spc", "spc_nocomp", "sc_sm",
"sc_rf", "ig_sm", "ig_rf"))
}
\arguments{
\item{data}{list with file name (`file_id`) elements that contain spectum
types, corresponding x unit type values and metadata; The `data` list
is commonly the output after reading binary OPUS files with
\code{simplerspec::read_opus_univ()}.}

\item{spc_types}{Character vector with the spectum types to be extracted
and gathered into list columns. The spectrum type names need to match exactly
the standardised spectrum type names, which are also names of the second list
hierarchy elements of `data`. These values are allowed: `"spc"`: final
spectrum after atmospheric compensation if performed, otherwise spectrum
after ratioing sample and reference single channel reflectance -- referred to
as `AB` in Bruker OPUS software; `"spc_nocomp"`: Spectrum prior to
atmospheric compensation if performed; `"sc_sm"`: Single channel reflectance
spectrum of the sample; `"sc_rf"`: Single channel reflectance spectrum of
the reference (background spectrum); `"ig_sm"`: Interferogram of the sample;
`"ig_rf"`: Interferogram of the reference. Default is only extracting final
spectra, `spc_types = c("spc")`}
}
\value{
Spectra related spectral data transformed into (list-)columns
of object of class tibble.
}
\description{
Gather specta, spectrometer metadata, measurment id's,
x unit values from list into a tibble, one row per spectrum replicate
measurement. Spectra, x values and metadata are stored in list-columns.
A tibble is an extende data frame and each spectrum can contain complex data
and metadata that are in a rectangular data structure. List-columns is tidy
data structure concept that can be combined with functional programming
frameworks provided by e.g. the purrr package.
}
