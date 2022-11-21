package com.badlogic.gdx.p032ai.pfa;

import com.badlogic.gdx.p032ai.msg.MessageDispatcher;
import com.badlogic.gdx.p032ai.msg.MessageManager;
import com.badlogic.gdx.p032ai.msg.Telegraph;
import com.badlogic.gdx.utils.TimeUtils;
/* renamed from: com.badlogic.gdx.ai.pfa.PathFinderRequestControl */
/* loaded from: classes.dex */
public class PathFinderRequestControl<N> {
    public static final boolean DEBUG = false;

    /* renamed from: a */
    public Telegraph f3328a;

    /* renamed from: b */
    public PathFinder<N> f3329b;

    /* renamed from: c */
    public long f3330c;

    /* renamed from: d */
    public long f3331d;

    /* renamed from: e */
    public long f3332e;

    public boolean execute(PathFinderRequest<N> pathFinderRequest) {
        pathFinderRequest.executionFrames++;
        do {
            if (pathFinderRequest.status == 0) {
                long nanoTime = TimeUtils.nanoTime();
                long j = this.f3331d - (nanoTime - this.f3330c);
                this.f3331d = j;
                if (j <= this.f3332e || !pathFinderRequest.initializeSearch(j)) {
                    return false;
                }
                pathFinderRequest.changeStatus(1);
                this.f3330c = nanoTime;
            }
            if (pathFinderRequest.status == 1) {
                long nanoTime2 = TimeUtils.nanoTime();
                long j2 = this.f3331d - (nanoTime2 - this.f3330c);
                this.f3331d = j2;
                if (j2 <= this.f3332e || !pathFinderRequest.search(this.f3329b, j2)) {
                    return false;
                }
                pathFinderRequest.changeStatus(2);
                this.f3330c = nanoTime2;
            }
            if (pathFinderRequest.status != 2) {
                break;
            }
            long nanoTime3 = TimeUtils.nanoTime();
            long j3 = this.f3331d - (nanoTime3 - this.f3330c);
            this.f3331d = j3;
            if (j3 <= this.f3332e || !pathFinderRequest.finalizeSearch(j3)) {
                return false;
            }
            pathFinderRequest.changeStatus(3);
            if (this.f3328a != null) {
                MessageDispatcher messageDispatcher = pathFinderRequest.dispatcher;
                if (messageDispatcher == null) {
                    messageDispatcher = MessageManager.getInstance();
                }
                messageDispatcher.dispatchMessage(this.f3328a, pathFinderRequest.client, pathFinderRequest.responseMessageCode, pathFinderRequest);
            }
            this.f3330c = nanoTime3;
            if (!pathFinderRequest.statusChanged) {
                break;
            }
        } while (pathFinderRequest.status == 0);
        return true;
    }
}
