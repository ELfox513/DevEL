package com.badlogic.gdx.p032ai.pfa;

import com.badlogic.gdx.p032ai.msg.MessageDispatcher;
import com.badlogic.gdx.p032ai.msg.MessageManager;
import com.badlogic.gdx.p032ai.msg.Telegraph;
/* renamed from: com.badlogic.gdx.ai.pfa.PathFinderRequest */
/* loaded from: classes.dex */
public class PathFinderRequest<N> {
    public static final int SEARCH_DONE = 2;
    public static final int SEARCH_FINALIZED = 3;
    public static final int SEARCH_INITIALIZED = 1;
    public static final int SEARCH_NEW = 0;
    public Telegraph client;
    public MessageDispatcher dispatcher;
    public N endNode;
    public int executionFrames;
    public Heuristic<N> heuristic;
    public boolean pathFound;
    public int responseMessageCode;
    public GraphPath<N> resultPath;
    public N startNode;
    public int status;
    public boolean statusChanged;

    public PathFinderRequest() {
    }

    public boolean finalizeSearch(long j) {
        return true;
    }

    public boolean initializeSearch(long j) {
        return true;
    }

    public boolean search(PathFinder<N> pathFinder, long j) {
        return pathFinder.search(this, j);
    }

    public PathFinderRequest(N n, N n2, Heuristic<N> heuristic, GraphPath<N> graphPath) {
        this(n, n2, heuristic, graphPath, MessageManager.getInstance());
    }

    public void changeStatus(int i) {
        this.status = i;
        this.statusChanged = true;
    }

    public PathFinderRequest(N n, N n2, Heuristic<N> heuristic, GraphPath<N> graphPath, MessageDispatcher messageDispatcher) {
        this.startNode = n;
        this.endNode = n2;
        this.heuristic = heuristic;
        this.resultPath = graphPath;
        this.dispatcher = messageDispatcher;
        this.executionFrames = 0;
        this.pathFound = false;
        this.status = 0;
        this.statusChanged = false;
    }
}
