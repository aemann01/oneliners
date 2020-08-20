import sys
import dendropy

tree = dendropy.Tree.get(path=sys.argv[1], schema="newick")

tree.reroot_at_midpoint(update_bipartitions=False)
tree.write(path="test.tre", schema="newick")