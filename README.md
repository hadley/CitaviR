
# CitaviR

<!-- badges: start -->

<!-- badges: end -->

The reference management software [Citavi](https://www.citavi.com/de)
allows for [exports to
Excel](https://www1.citavi.com/sub/manual6/en/index.html?exporting_to_excel.html).
With a bit of effort (i.e. via customized [Citavi
Macros](https://www1.citavi.com/sub/manual6/en/index.html?add_on_display_macros.html))
it also allows for [imports from
Excel](https://github.com/Citavi/Macros/blob/master/CIM%20Import/CIM007%20Import%20arbitrary%20data%20from%20Microsoft%20Excel%20into%20custom%20fields%20of%20existing%20references%20by%20short%20title/readme.de.md).
`CitaviR` provides functionality for dealing with the data while it is
*outside* Citavi to get the most out of it.

## Installation

You can install the development version of `CitaviR` from GitHub:

``` r
devtools::install_github('SchmidtPaul/CitaviR')
```

## Example

This is a small example showing an entire work flow from start to
finish.

### Step 1: Export xslx from Citavi

In your Citavi project open the table view,

<img src="img/Citavi_Table.png" width="33%" />

make sure all relevant columns are selected (e.g. via making use of
Citavi’s [customizable selection
presets](https://www1.citavi.com/sub/manual6/en/index.html?referencegridformworkspaceeditor.html))
and export to an Excel file.

<img src="img/Citavi_TableToExcel.png" width="100%" />

## Step 2: Import xlsx to R

The Excel file exported above is available as an example dataset of
`CitaviR`. Furthermore, `read_Citavi_xlsx()` offers an import function
based on `readxl::read_xlsx()` with some functionality specifically for
xls/xlsx files created with Citavi via export to Excel.

``` r
library(CitaviR)

path <- example_xlsx('3dupsin5refs.xlsx') # replace with path to your xlsx file
read_Citavi_xlsx(path)
#> # A tibble: 5 x 19
#>   ID    `Short title` Title Year  Author Categories Groups Abstract `DOI name`
#>   <chr> <chr>         <chr> <chr> <chr>  <lgl>      <chr>  <chr>    <chr>     
#> 1 7e04~ Schmidt, Har~ Esti~ 2019  Schmi~ NA         Googl~ Broad-s~ <NA>      
#> 2 2481~ Schmidt, Har~ Heri~ 2019  Schmi~ NA         Googl~ In plan~ <NA>      
#> 3 db3a~ Schmidt, Har~ Heri~ 2019  Schmi~ NA         PubMed In plan~ <NA>      
#> 4 ba57~ Schmidt, Har~ Hrit~ 2019  Schmi~ NA         TypoDB In plan~ 10.1534/g~
#> 5 fa40~ Schmidt, Möh~ More~ 2018  Schmi~ NA         Googl~ Traditi~ <NA>      
#> # ... with 10 more variables: `PubMed ID` <chr>, `Online address` <chr>,
#> #   Periodical <chr>, Volume <chr>, Number <chr>, `Page range` <chr>,
#> #   Locations <chr>, has_attachment <lgl>, red_flag <lgl>, blue_circle <lgl>
```

## Step 3: Find duplicates

TO DO
