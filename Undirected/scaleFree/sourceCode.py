import snap
import pandas as pd
# load data
edgeList = pd.read_csv('./BAedges.txt',header =None,sep=' ')
edgeList.columns = ['From','To']
edgeListNode = list(pd.concat([edgeList['From'],edgeList['To']],axis=0).unique())
# directed use G2
# G1 = snap.TUNGraph.New()
G2 = snap.TUNGraph.New()
for node in edgeListNode:
    G2.AddNode(node)
for i in range((len(edgeList))):
    G2.AddEdge(edgeList.loc[i,'From'],edgeList.loc[i,'To'])
#
def plot_all(Graph_name):
    # scc
    snap.PlotSccDistr(G2,Graph_name , "Directed graph - scc distribution")
    # wcc
    snap.PlotWccDistr(G2, Graph_name, "Directed graph - wcc distribution")
    # cluster cofficient
    snap.PlotClustCf(G2, Graph_name, "Directed graph - clustering coefficient")
    # in-degree
    snap.PlotInDegDistr(G2, Graph_name, "Directed graph - in-degree Distribution")
    # out-degree
    snap.PlotOutDegDistr(G2, Graph_name, "Directed graph - out-degree Distribution")
    # shortest path
    snap.PlotShortPathDistr(G2,Graph_name, "Directed graph - shortest path")
    # core nodes
    snap.PlotKCoreNodes(G2, Graph_name, "Directed graph - k-core nodes")

# betweeness
Nodes = snap.TIntFltH()
Edges = snap.TIntPrFltH()
snap.GetBetweennessCentr(G2, Nodes, Edges, 1.0)
node_pd = []
node_cen = []
for node in Nodes:
    # print "node: %d centrality: %f" % (node, Nodes[node])
    node_pd.append(node)
    node_cen.append(Nodes[node])
Betness = pd.concat([pd.Series(node_pd),pd.Series(node_cen)],axis=1)
Betness.columns = ['node','centrality']
Betness.to_csv('betness.csv',sep='\t')
plot_all('EUC')
# for edge in Edges:
#     print "edge: (%d, %d) centrality: %f" % (edge.GetVal1(), edge.GetVal2(), Edges[edge])