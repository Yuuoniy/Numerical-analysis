# coding: utf-8
import scipy.sparse as sparse
import scipy.sparse.linalg as sparse_alg
from scipy.sparse import csgraph
import numpy as np
from scipy.sparse import dok_matrix
from scipy.sparse import lil_matrix
import pickle as pickle

S = dok_matrix((75888, 75888), dtype=np.int8)
nodes = [x for x in range(0, 75888)]

out_degree = dict.fromkeys(nodes, 0)

#读取数据并存储
with open('soc-Epinions1.txt') as f:
    for line in f:
        odom = line.split()    
        out_degree[int(odom[0])] = out_degree.get(int(odom[0]))+1
        # in_degree[int(odom[1])] =  in_degree[int(odom[1])]+1
        S[int(odom[1]),int(odom[0])]=1


# 转化矩阵
matrix = lil_matrix(S)
#定义变量
damping_factor = 0.85  # 阻尼系数,即α
max_iterations = 100  # 最大迭代次数
min_delta = 0.00001 
graph_size = 75888
page_rank = dict.fromkeys(nodes, 1.0 / graph_size)
damping_value = (1.0 - damping_factor) / graph_size  # 公式中的(1−α)/N部分

for i in range(0,75888):
    if(out_degree[i]==0):
        out_degree[i] = 75888

flag = False
for i in range(max_iterations):
    change = 0  
    for node in nodes:
        rank = 0         
        for incident_page in matrix.getrow(node).nonzero()[1]:  # 遍历所有“入射”的页面                             
            rank += damping_factor * (page_rank[incident_page] / out_degree[incident_page])
        rank += damping_value
        change += abs(page_rank[node] - rank)  # 绝对值
        page_rank[node] = rank
    
    print("This is NO.%s iteration" % (i + 1))
    # print(page_rank,file=f)   
    if change < min_delta:
        flag = True
        break
if flag:
    print("finished in %s iterations!" % (i+1))
else:
    print("finished out of 100 iterations!")


with open('ranks.txt', 'wb') as f: 
    # print(page_rank)
    pickle.dump(page_rank,f)
