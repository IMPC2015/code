from scipy import stats

#Test for enrichment of HGMD genes between EG vs. NEG
stats.fisher_exact([[1235,3229-1235],[1167,4757-1167]])

#Test for enrichment of HGMD genes between EG vs. All
stats.fisher_exact([[1235,3229-1235],[3302,19568-3302]])

#Test for enrichment of HGMD genes between NEG vs. All
stats.fisher_exact([[1167,4757-1167],[3302,19568-3302]])
