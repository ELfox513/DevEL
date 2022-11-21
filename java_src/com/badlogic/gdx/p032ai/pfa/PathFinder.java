package com.badlogic.gdx.p032ai.pfa;
/* renamed from: com.badlogic.gdx.ai.pfa.PathFinder */
/* loaded from: classes.dex */
public interface PathFinder<N> {
    boolean search(PathFinderRequest<N> pathFinderRequest, long j);

    boolean searchConnectionPath(N n, N n2, Heuristic<N> heuristic, GraphPath<Connection<N>> graphPath);

    boolean searchNodePath(N n, N n2, Heuristic<N> heuristic, GraphPath<N> graphPath);
}
