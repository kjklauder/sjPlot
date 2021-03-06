% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/tab_model.R
\name{tab_model}
\alias{tab_model}
\title{Print regression models to HTML table}
\usage{
tab_model(..., transform, show.intercept = TRUE, show.est = TRUE,
  show.ci = 0.95, show.hdi50 = TRUE, show.se = NULL, show.std = NULL,
  show.p = TRUE, show.stat = FALSE, show.header = FALSE,
  show.col.header = TRUE, show.zeroinf = TRUE, show.r2 = TRUE,
  show.icc = FALSE, show.re.var = FALSE, show.fstat = FALSE,
  show.aic = FALSE, show.aicc = FALSE, show.dev = FALSE, terms = NULL,
  rm.terms = NULL, group.terms = TRUE, order.terms = NULL, title = NULL,
  pred.labels = NULL, dv.labels = NULL, wrap.labels = 25,
  string.pred = "Predictors", string.std = "std. Beta", string.ci = "CI",
  string.se = "std. Error", string.p = "p",
  ci.hyphen = "&nbsp;&ndash;&nbsp;", minus.sign = "&#45;",
  separate.ci.col = TRUE, separate.se.col = TRUE, digits = 2,
  digits.p = 3, emph.p = TRUE, case = "parsed", auto.label = TRUE,
  bpe = "median")
}
\arguments{
\item{...}{One or more regression models, including glm's or mixed models.
May also be a \code{list} with fitted models. See 'Examples'.}

\item{transform}{A character vector, naming a function that will be applied
on estimates and confidence intervals. By default, \code{transform} will
automatically use \code{"exp"} as transformation for applicable classes of
regression models (e.g. logistic or poisson regression). Estimates of linear
models remain untransformed. Use \code{NULL} if you want the raw,
non-transformed estimates.}

\item{show.intercept}{Logical, if \code{TRUE}, the intercepts are printed.}

\item{show.est}{Logical, if \code{TRUE}, the estimates are printed.}

\item{show.ci}{Logical, if \code{TRUE}, the confidence interval
is printed to the table.}

\item{show.se}{Logical, if \code{TRUE}, the standard errors are also printed.}

\item{show.std}{Indicates whether standardized beta-coefficients should
also printed, and if yes, which type of standardization is done.
See 'Details'.}

\item{show.p}{Logical, adds asterisks that indicate the significance level of
estimates to the value labels.}

\item{show.zeroinf}{Logical, if \code{TRUE}, shows the zero-inflation part of
hurdle- or zero-inflated models.}

\item{terms}{Character vector with names of those terms (variables) that should
be printed in the table. All other terms are removed from the output. If
\code{NULL}, all terms are printed.}

\item{rm.terms}{Character vector with names that indicate which terms should
be removed from the output Counterpart to \code{terms}. \code{rm.terms =
"t_name"} would remove the term \emph{t_name}. Default is \code{NULL}, i.e.
all terms are used.}

\item{group.terms}{Logical, if \code{TRUE} (default), automatically groups table rows with
factor levels of same factor, i.e. predictors of type \code{\link{factor}} will
be grouped, if the factor has more than two levels. Grouping means that a separate headline
row is inserted to the table just before the predictor values.}

\item{order.terms}{Numeric vector, indicating in which order the coefficients
should be plotted. See examples in
\href{../doc/plot_model_estimates.html}{this package-vignette}.}

\item{title}{Character vector, used as plot title. By default,
\code{\link[sjlabelled]{get_dv_labels}} is called to retrieve the label of
the dependent variable, which will be used as title. Use \code{title = ""}
to remove title.}

\item{pred.labels}{Character vector with labels of predictor variables.
If not \code{NULL}, \code{pred.labels} will be used in the first
table column with the predictors' names. By default, if \code{auto.label = TRUE}
and \code{\link[sjlabelled]{get_term_labels}} is called to retrieve the labels
of the coefficients, which will be used as predictor labels.
If \code{pred.labels = ""} or \code{auto.label = FALSE}, the raw
variable names as used in the model formula are used as predictor
labels.  If \code{pred.labels} is a named vector, predictor labels (by
default, the names of the model's coefficients) will be matched with the
names of \code{pred.labels}. This ensures that labels always match the
related predictor in the table, no matter in which way the predictors
are sorted. See 'Examples'.}

\item{dv.labels}{Character vector with labels of dependent variables of all
fitted models. See 'Examples'.}

\item{wrap.labels}{Numeric, determines how many chars of the value, variable
or axis labels are displayed in one line and when a line break is inserted.}

\item{string.pred}{Character vector,used as headline for the predictor column.
Default is \code{"Predictors"}.}

\item{string.std}{Character vector, used for the column heading of standardized beta coefficients. Default is \code{"std. Beta"}.}

\item{string.ci}{Character vector, used for the column heading of confidence interval values. Default is \code{"CI"}.}

\item{string.se}{Character vector, used for the column heading of standard error values. Default is \code{"std. Error"}.}

\item{string.p}{Character vector, used for the column heading of p values. Default is \code{"p"}.}

\item{ci.hyphen}{Character vector, indicating the hyphen for confidence interval range.
May be an HTML entity. See 'Examples'.}

\item{minus.sign}{string, indicating the minus sign for negative numbers.
May be an HTML entity. See 'Examples'.}

\item{separate.ci.col}{Logical, if \code{TRUE}, the CI values are shown in
a separate table column.}

\item{separate.se.col}{Logical, if \code{TRUE}, the SE values are shown in
a separate table column.}

\item{digits}{Amount of decimals for estimates}

\item{digits.p}{Amount of decimals for p-values}

\item{emph.p}{Logical, if \code{TRUE}, significant p-values are shown bold faced.}

\item{case}{Desired target case. Labels will automatically converted into the
specified character case. See \code{\link[snakecase]{to_any_case}} for more
details on this argument.}

\item{auto.label}{Logical, if \code{TRUE} (the default), plot-labels are
based on value and variable labels, if the data is labelled. See
\code{\link[sjlabelled]{get_label}} and
\code{\link[sjlabelled]{get_term_labels}} for details. If \code{FALSE},
original variable names and value labels (factor levels) are used.}

\item{bpe}{For \strong{Stan}-models (fitted with the \pkg{rstanarm}- or
\pkg{brms}-package), the Bayesian point estimate is, by default, the median
of the posterior distribution. Use \code{bpe} to define other functions to
calculate the Bayesion point estimate. \code{bpe} needs to be a character
naming the specific function, which is passed to the \code{fun}-argument in
\code{\link[sjstats]{typical_value}}. So, \code{bpe = "mean"} would
calculate the mean value of the posterior distribution.}
}
\description{
\code{tab_model()} creates HTML tables from regression models.
}
