package com.badlogic.gdx.p032ai.pfa.indexed;

import com.badlogic.gdx.p032ai.pfa.Connection;
import com.badlogic.gdx.p032ai.pfa.GraphPath;
import com.badlogic.gdx.p032ai.pfa.Heuristic;
import com.badlogic.gdx.p032ai.pfa.PathFinder;
import com.badlogic.gdx.p032ai.pfa.PathFinderRequest;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.BinaryHeap;
import com.badlogic.gdx.utils.TimeUtils;
/* renamed from: com.badlogic.gdx.ai.pfa.indexed.IndexedAStarPathFinder */
/* loaded from: classes.dex */
public class IndexedAStarPathFinder<N> implements PathFinder<N> {

    /* renamed from: a */
    public IndexedGraph<N> f3335a;

    /* renamed from: b */
    public NodeRecord<N>[] f3336b;

    /* renamed from: c */
    public BinaryHeap<NodeRecord<N>> f3337c;

    /* renamed from: d */
    public NodeRecord<N> f3338d;

    /* renamed from: e */
    public int f3339e;
    public Metrics metrics;

    /* renamed from: com.badlogic.gdx.ai.pfa.indexed.IndexedAStarPathFinder$Metrics */
    /* loaded from: classes.dex */
    public static class Metrics {
        public int openListAdditions;
        public int openListPeak;
        public int visitedNodes;

        public void reset() {
            this.visitedNodes = 0;
            this.openListAdditions = 0;
            this.openListPeak = 0;
        }
    }

    /* renamed from: com.badlogic.gdx.ai.pfa.indexed.IndexedAStarPathFinder$NodeRecord */
    /* loaded from: classes.dex */
    public static class NodeRecord<N> extends BinaryHeap.Node {

        /* renamed from: c */
        public N f3340c;

        /* renamed from: d */
        public Connection<N> f3341d;

        /* renamed from: e */
        public float f3342e;

        /* renamed from: f */
        public int f3343f;

        /* renamed from: g */
        public int f3344g;

        public NodeRecord() {
            super(0.0f);
        }

        public float getEstimatedTotalCost() {
            return getValue();
        }
    }

    public IndexedAStarPathFinder(IndexedGraph<N> indexedGraph) {
        this(indexedGraph, false);
    }

    public IndexedAStarPathFinder(IndexedGraph<N> indexedGraph, boolean z) {
        this.f3335a = indexedGraph;
        this.f3336b = new NodeRecord[indexedGraph.getNodeCount()];
        this.f3337c = new BinaryHeap<>();
        if (z) {
            this.metrics = new Metrics();
        }
    }

    /* renamed from: a */
    public void m24384a(NodeRecord<N> nodeRecord, float f) {
        this.f3337c.add(nodeRecord, f);
        nodeRecord.f3343f = 1;
        Metrics metrics = this.metrics;
        if (metrics != null) {
            metrics.openListAdditions++;
            metrics.openListPeak = Math.max(metrics.openListPeak, this.f3337c.size);
        }
    }

    /* renamed from: b */
    public void m24383b(N n, GraphPath<Connection<N>> graphPath) {
        while (true) {
            NodeRecord<N> nodeRecord = this.f3338d;
            if (nodeRecord.f3340c != n) {
                graphPath.add(nodeRecord.f3341d);
                this.f3338d = this.f3336b[this.f3335a.getIndex(this.f3338d.f3341d.getFromNode())];
            } else {
                graphPath.reverse();
                return;
            }
        }
    }

    /* renamed from: c */
    public void m24382c(N n, GraphPath<N> graphPath) {
        while (true) {
            NodeRecord<N> nodeRecord = this.f3338d;
            if (nodeRecord.f3341d != null) {
                graphPath.add(nodeRecord.f3340c);
                this.f3338d = this.f3336b[this.f3335a.getIndex(this.f3338d.f3341d.getFromNode())];
            } else {
                graphPath.add(n);
                graphPath.reverse();
                return;
            }
        }
    }

    /* renamed from: d */
    public NodeRecord<N> m24381d(N n) {
        int index = this.f3335a.getIndex(n);
        NodeRecord<N>[] nodeRecordArr = this.f3336b;
        NodeRecord<N> nodeRecord = nodeRecordArr[index];
        if (nodeRecord != null) {
            int i = nodeRecord.f3344g;
            int i2 = this.f3339e;
            if (i != i2) {
                nodeRecord.f3343f = 0;
                nodeRecord.f3344g = i2;
            }
            return nodeRecord;
        }
        NodeRecord<N> nodeRecord2 = new NodeRecord<>();
        nodeRecordArr[index] = nodeRecord2;
        nodeRecord2.f3340c = n;
        nodeRecord2.f3344g = this.f3339e;
        return nodeRecord2;
    }

    /* renamed from: e */
    public void m24380e(N n, N n2, Heuristic<N> heuristic) {
        Metrics metrics = this.metrics;
        if (metrics != null) {
            metrics.reset();
        }
        int i = this.f3339e + 1;
        this.f3339e = i;
        if (i < 0) {
            this.f3339e = 1;
        }
        this.f3337c.clear();
        NodeRecord<N> m24381d = m24381d(n);
        m24381d.f3340c = n;
        m24381d.f3341d = null;
        m24381d.f3342e = 0.0f;
        m24384a(m24381d, heuristic.estimate(n, n2));
        this.f3338d = null;
    }

    /* renamed from: g */
    public void m24378g(N n, Heuristic<N> heuristic) {
        float estimate;
        float estimatedTotalCost;
        float f;
        Array<Connection<N>> connections = this.f3335a.getConnections(this.f3338d.f3340c);
        for (int i = 0; i < connections.size; i++) {
            Metrics metrics = this.metrics;
            if (metrics != null) {
                metrics.visitedNodes++;
            }
            Connection<N> connection = connections.get(i);
            N toNode = connection.getToNode();
            float cost = this.f3338d.f3342e + connection.getCost();
            NodeRecord<N> m24381d = m24381d(toNode);
            int i2 = m24381d.f3343f;
            if (i2 == 2) {
                if (m24381d.f3342e > cost) {
                    estimatedTotalCost = m24381d.getEstimatedTotalCost();
                    f = m24381d.f3342e;
                    estimate = estimatedTotalCost - f;
                }
            } else if (i2 == 1) {
                if (m24381d.f3342e > cost) {
                    this.f3337c.remove(m24381d);
                    estimatedTotalCost = m24381d.getEstimatedTotalCost();
                    f = m24381d.f3342e;
                    estimate = estimatedTotalCost - f;
                }
            } else {
                estimate = heuristic.estimate(toNode, n);
            }
            m24381d.f3342e = cost;
            m24381d.f3341d = connection;
            m24384a(m24381d, cost + estimate);
        }
    }

    /* renamed from: f */
    public boolean m24379f(N n, N n2, Heuristic<N> heuristic) {
        m24380e(n, n2, heuristic);
        do {
            NodeRecord<N> pop = this.f3337c.pop();
            this.f3338d = pop;
            pop.f3343f = 2;
            if (pop.f3340c == n2) {
                return true;
            }
            m24378g(n2, heuristic);
        } while (this.f3337c.size > 0);
        return false;
    }

    @Override // com.badlogic.gdx.p032ai.pfa.PathFinder
    public boolean search(PathFinderRequest<N> pathFinderRequest, long j) {
        long nanoTime = TimeUtils.nanoTime();
        if (pathFinderRequest.statusChanged) {
            m24380e(pathFinderRequest.startNode, pathFinderRequest.endNode, pathFinderRequest.heuristic);
            pathFinderRequest.statusChanged = false;
        }
        while (true) {
            long nanoTime2 = TimeUtils.nanoTime();
            j -= nanoTime2 - nanoTime;
            if (j <= 100) {
                return false;
            }
            NodeRecord<N> pop = this.f3337c.pop();
            this.f3338d = pop;
            pop.f3343f = 2;
            N n = pop.f3340c;
            N n2 = pathFinderRequest.endNode;
            if (n == n2) {
                pathFinderRequest.pathFound = true;
                m24382c(pathFinderRequest.startNode, pathFinderRequest.resultPath);
                return true;
            }
            m24378g(n2, pathFinderRequest.heuristic);
            if (this.f3337c.size <= 0) {
                pathFinderRequest.pathFound = false;
                return true;
            }
            nanoTime = nanoTime2;
        }
    }

    @Override // com.badlogic.gdx.p032ai.pfa.PathFinder
    public boolean searchConnectionPath(N n, N n2, Heuristic<N> heuristic, GraphPath<Connection<N>> graphPath) {
        boolean m24379f = m24379f(n, n2, heuristic);
        if (m24379f) {
            m24383b(n, graphPath);
        }
        return m24379f;
    }

    @Override // com.badlogic.gdx.p032ai.pfa.PathFinder
    public boolean searchNodePath(N n, N n2, Heuristic<N> heuristic, GraphPath<N> graphPath) {
        boolean m24379f = m24379f(n, n2, heuristic);
        if (m24379f) {
            m24382c(n, graphPath);
        }
        return m24379f;
    }
}
