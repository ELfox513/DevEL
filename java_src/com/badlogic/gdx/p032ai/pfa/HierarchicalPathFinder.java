package com.badlogic.gdx.p032ai.pfa;

import com.badlogic.gdx.p032ai.GdxAI;
import com.badlogic.gdx.p032ai.Logger;
import com.badlogic.gdx.utils.TimeUtils;
/* renamed from: com.badlogic.gdx.ai.pfa.HierarchicalPathFinder */
/* loaded from: classes.dex */
public class HierarchicalPathFinder<N> implements PathFinder<N> {
    public static boolean DEBUG = false;

    /* renamed from: a */
    public HierarchicalGraph<N> f3316a;

    /* renamed from: b */
    public PathFinder<N> f3317b;

    /* renamed from: c */
    public LevelPathFinderRequest<N> f3318c = null;

    /* renamed from: d */
    public PathFinderRequestControl<N> f3319d = null;

    /* renamed from: com.badlogic.gdx.ai.pfa.HierarchicalPathFinder$LevelPathFinderRequest */
    /* loaded from: classes.dex */
    public static class LevelPathFinderRequest<N> extends PathFinderRequest<N> {

        /* renamed from: a */
        public HierarchicalPathFinder<N> f3320a;

        /* renamed from: b */
        public PathFinderRequest<N> f3321b;

        /* renamed from: c */
        public int f3322c;

        /* renamed from: d */
        public int f3323d;

        @Override // com.badlogic.gdx.p032ai.pfa.PathFinderRequest
        public boolean initializeSearch(long j) {
            int i;
            int i2;
            N convertNodeBetweenLevels;
            this.executionFrames = 0;
            this.pathFound = false;
            this.status = 0;
            this.statusChanged = false;
            do {
                this.startNode = this.f3320a.f3316a.convertNodeBetweenLevels(0, this.f3321b.startNode, this.f3323d);
                N convertNodeBetweenLevels2 = this.f3320a.f3316a.convertNodeBetweenLevels(this.f3322c, this.endNode, this.f3323d);
                this.endNode = convertNodeBetweenLevels2;
                if (this.f3323d == 0 && (convertNodeBetweenLevels = this.f3320a.f3316a.convertNodeBetweenLevels(0, convertNodeBetweenLevels2, 1)) == this.f3320a.f3316a.convertNodeBetweenLevels(0, this.f3321b.endNode, 1) && convertNodeBetweenLevels == this.f3320a.f3316a.convertNodeBetweenLevels(0, this.f3321b.startNode, 1)) {
                    this.endNode = this.f3321b.endNode;
                }
                if (HierarchicalPathFinder.DEBUG) {
                    GdxAI.getLogger().debug("HierarchicalPathFinder", "LevelPathFinder initializeSearch");
                }
                i = this.f3323d;
                this.f3322c = i;
                i2 = i - 1;
                this.f3323d = i2;
                if (this.startNode == this.endNode) {
                    break;
                    break;
                }
                break;
            } while (i2 >= 0);
            this.f3320a.f3316a.setLevel(i);
            this.resultPath.clear();
            return true;
        }

        @Override // com.badlogic.gdx.p032ai.pfa.PathFinderRequest
        public boolean finalizeSearch(long j) {
            this.f3321b.pathFound = this.pathFound;
            if (this.pathFound) {
                this.endNode = this.resultPath.get(1);
            }
            if (HierarchicalPathFinder.DEBUG) {
                Logger logger = GdxAI.getLogger();
                logger.debug("HierarchicalPathFinder", "LevelPathFinder finalizeSearch; status: " + this.status);
            }
            return true;
        }

        @Override // com.badlogic.gdx.p032ai.pfa.PathFinderRequest
        public boolean search(PathFinder<N> pathFinder, long j) {
            if (HierarchicalPathFinder.DEBUG) {
                Logger logger = GdxAI.getLogger();
                logger.debug("HierarchicalPathFinder", "LevelPathFinder search; status: " + this.status);
            }
            return super.search(pathFinder, j);
        }
    }

    @Override // com.badlogic.gdx.p032ai.pfa.PathFinder
    public boolean searchConnectionPath(N n, N n2, Heuristic<N> heuristic, GraphPath<Connection<N>> graphPath) {
        N convertNodeBetweenLevels;
        if (n == n2) {
            return true;
        }
        int levelCount = this.f3316a.getLevelCount() - 1;
        N n3 = n2;
        int i = 0;
        while (levelCount >= 0) {
            N convertNodeBetweenLevels2 = this.f3316a.convertNodeBetweenLevels(0, n, levelCount);
            N convertNodeBetweenLevels3 = this.f3316a.convertNodeBetweenLevels(i, n3, levelCount);
            if (levelCount == 0 && (convertNodeBetweenLevels = this.f3316a.convertNodeBetweenLevels(0, convertNodeBetweenLevels3, 1)) == this.f3316a.convertNodeBetweenLevels(0, n2, 1) && convertNodeBetweenLevels == this.f3316a.convertNodeBetweenLevels(0, n, 1)) {
                n3 = n2;
            } else {
                n3 = convertNodeBetweenLevels3;
            }
            int i2 = levelCount - 1;
            if (convertNodeBetweenLevels2 != n3) {
                this.f3316a.setLevel(levelCount);
                graphPath.clear();
                if (!this.f3317b.searchConnectionPath(convertNodeBetweenLevels2, n3, heuristic, graphPath)) {
                    return false;
                }
                n3 = graphPath.get(0).getToNode();
            }
            i = levelCount;
            levelCount = i2;
        }
        return true;
    }

    @Override // com.badlogic.gdx.p032ai.pfa.PathFinder
    public boolean searchNodePath(N n, N n2, Heuristic<N> heuristic, GraphPath<N> graphPath) {
        N convertNodeBetweenLevels;
        if (n == n2) {
            return true;
        }
        int levelCount = this.f3316a.getLevelCount() - 1;
        N n3 = n2;
        int i = 0;
        while (levelCount >= 0) {
            N convertNodeBetweenLevels2 = this.f3316a.convertNodeBetweenLevels(0, n, levelCount);
            N convertNodeBetweenLevels3 = this.f3316a.convertNodeBetweenLevels(i, n3, levelCount);
            if (levelCount == 0 && (convertNodeBetweenLevels = this.f3316a.convertNodeBetweenLevels(0, convertNodeBetweenLevels3, 1)) == this.f3316a.convertNodeBetweenLevels(0, n2, 1) && convertNodeBetweenLevels == this.f3316a.convertNodeBetweenLevels(0, n, 1)) {
                n3 = n2;
            } else {
                n3 = convertNodeBetweenLevels3;
            }
            int i2 = levelCount - 1;
            if (convertNodeBetweenLevels2 != n3) {
                this.f3316a.setLevel(levelCount);
                graphPath.clear();
                if (!this.f3317b.searchNodePath(convertNodeBetweenLevels2, n3, heuristic, graphPath)) {
                    return false;
                }
                n3 = graphPath.get(1);
            }
            i = levelCount;
            levelCount = i2;
        }
        return true;
    }

    @Override // com.badlogic.gdx.p032ai.pfa.PathFinder
    public boolean search(PathFinderRequest<N> pathFinderRequest, long j) {
        LevelPathFinderRequest<N> levelPathFinderRequest;
        if (DEBUG) {
            Logger logger = GdxAI.getLogger();
            logger.debug("HierarchicalPathFinder", "Enter interruptible HPF; request.status = " + pathFinderRequest.status);
        }
        if (this.f3318c == null) {
            this.f3318c = new LevelPathFinderRequest<>();
            this.f3319d = new PathFinderRequestControl<>();
        }
        if (pathFinderRequest.statusChanged) {
            if (DEBUG) {
                GdxAI.getLogger().debug("HierarchicalPathFinder", "-- statusChanged");
            }
            if (pathFinderRequest.startNode == pathFinderRequest.endNode) {
                return true;
            }
            this.f3319d.f3330c = TimeUtils.nanoTime();
            PathFinderRequestControl<N> pathFinderRequestControl = this.f3319d;
            pathFinderRequestControl.f3331d = j;
            pathFinderRequestControl.f3332e = 100L;
            pathFinderRequestControl.f3328a = null;
            pathFinderRequestControl.f3329b = this.f3317b;
            LevelPathFinderRequest<N> levelPathFinderRequest2 = this.f3318c;
            levelPathFinderRequest2.f3320a = this;
            levelPathFinderRequest2.f3321b = pathFinderRequest;
            levelPathFinderRequest2.status = 0;
            levelPathFinderRequest2.statusChanged = true;
            levelPathFinderRequest2.heuristic = pathFinderRequest.heuristic;
            levelPathFinderRequest2.resultPath = pathFinderRequest.resultPath;
            levelPathFinderRequest2.startNode = pathFinderRequest.startNode;
            levelPathFinderRequest2.endNode = pathFinderRequest.endNode;
            levelPathFinderRequest2.f3322c = 0;
            levelPathFinderRequest2.f3323d = this.f3316a.getLevelCount() - 1;
        }
        do {
            LevelPathFinderRequest<N> levelPathFinderRequest3 = this.f3318c;
            if (levelPathFinderRequest3.f3323d >= 0) {
                if (!this.f3319d.execute(levelPathFinderRequest3)) {
                    return false;
                }
                levelPathFinderRequest = this.f3318c;
                levelPathFinderRequest.executionFrames = 0;
                levelPathFinderRequest.status = 0;
                levelPathFinderRequest.statusChanged = true;
            } else {
                if (DEBUG) {
                    GdxAI.getLogger().debug("HierarchicalPathFinder", "-- before exit");
                }
                return true;
            }
        } while (levelPathFinderRequest.pathFound);
        return true;
    }

    public HierarchicalPathFinder(HierarchicalGraph<N> hierarchicalGraph, PathFinder<N> pathFinder) {
        this.f3316a = hierarchicalGraph;
        this.f3317b = pathFinder;
    }
}
