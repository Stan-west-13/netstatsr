individual_net_construction <- function(list_of_records, network_of_words){
  return(lapply(list_of_records, AssocNetwork::child_acquisition_network, network_of_words))
}

graph_individual_networks <- function(network) {
  return(lapply(networl, igraph::graph_from_adjacency_matrix))
}


individual_netstats <- function(network_graph){
  netstats<- as.data.frame(lapply(network_graph, netStats_child_acq))
  netstats<- as.data.frame(t(netstats))
  netstats$nProduced <- nProduced$nProduced
  netstats$group <- "TD"
  netstats$subjectkey <- unique(TD$subjectkey)
  return(netstats)
}

