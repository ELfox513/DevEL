package com.badlogic.gdx.p032ai.pfa;

import com.badlogic.gdx.p032ai.msg.Telegram;
import com.badlogic.gdx.p032ai.msg.Telegraph;
import com.badlogic.gdx.p032ai.sched.Schedulable;
import com.badlogic.gdx.p032ai.utils.CircularBuffer;
import com.badlogic.gdx.utils.TimeUtils;
/* renamed from: com.badlogic.gdx.ai.pfa.PathFinderQueue */
/* loaded from: classes.dex */
public class PathFinderQueue<N> implements Schedulable, Telegraph {
    public static final long TIME_TOLERANCE = 100;

    /* renamed from: b */
    public PathFinder<N> f3325b;

    /* renamed from: a */
    public CircularBuffer<PathFinderRequest<N>> f3324a = new CircularBuffer<>(16);

    /* renamed from: c */
    public PathFinderRequest<N> f3326c = null;

    /* renamed from: d */
    public PathFinderRequestControl<N> f3327d = new PathFinderRequestControl<>();

    public int size() {
        return this.f3324a.size();
    }

    @Override // com.badlogic.gdx.p032ai.msg.Telegraph
    public boolean handleMessage(Telegram telegram) {
        PathFinderRequest<N> pathFinderRequest = (PathFinderRequest) telegram.extraInfo;
        pathFinderRequest.client = telegram.sender;
        pathFinderRequest.status = 0;
        pathFinderRequest.statusChanged = true;
        pathFinderRequest.executionFrames = 0;
        this.f3324a.store(pathFinderRequest);
        return true;
    }

    @Override // com.badlogic.gdx.p032ai.sched.Schedulable
    public void run(long j) {
        this.f3327d.f3330c = TimeUtils.nanoTime();
        PathFinderRequestControl<N> pathFinderRequestControl = this.f3327d;
        pathFinderRequestControl.f3331d = j;
        pathFinderRequestControl.f3332e = 100L;
        pathFinderRequestControl.f3329b = this.f3325b;
        pathFinderRequestControl.f3328a = this;
        if (this.f3326c == null) {
            this.f3326c = this.f3324a.read();
        }
        while (true) {
            PathFinderRequest<N> pathFinderRequest = this.f3326c;
            if (pathFinderRequest == null || !this.f3327d.execute(pathFinderRequest)) {
                return;
            }
            this.f3326c = this.f3324a.read();
        }
    }

    public PathFinderQueue(PathFinder<N> pathFinder) {
        this.f3325b = pathFinder;
    }
}
