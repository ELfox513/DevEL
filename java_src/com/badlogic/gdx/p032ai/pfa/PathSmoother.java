package com.badlogic.gdx.p032ai.pfa;

import com.badlogic.gdx.math.Vector;
import com.badlogic.gdx.p032ai.utils.Ray;
import com.badlogic.gdx.p032ai.utils.RaycastCollisionDetector;
import com.badlogic.gdx.utils.TimeUtils;
/* renamed from: com.badlogic.gdx.ai.pfa.PathSmoother */
/* loaded from: classes.dex */
public class PathSmoother<N, V extends Vector<V>> {

    /* renamed from: a */
    public RaycastCollisionDetector<V> f3333a;

    /* renamed from: b */
    public Ray<V> f3334b;

    public int smoothPath(SmoothableGraphPath<N, V> smoothableGraphPath) {
        int count = smoothableGraphPath.getCount();
        int i = 2;
        if (count <= 2) {
            return 0;
        }
        if (this.f3334b == null) {
            V nodePosition = smoothableGraphPath.getNodePosition(0);
            this.f3334b = new Ray<>(nodePosition.cpy(), nodePosition.cpy());
        }
        int i2 = 1;
        while (i < count) {
            this.f3334b.start.set(smoothableGraphPath.getNodePosition(i2 - 1));
            this.f3334b.end.set(smoothableGraphPath.getNodePosition(i));
            if (this.f3333a.collides(this.f3334b)) {
                smoothableGraphPath.swapNodes(i2, i - 1);
                i2++;
            }
            i++;
        }
        smoothableGraphPath.swapNodes(i2, i - 1);
        smoothableGraphPath.truncatePath(i2 + 1);
        return (i - i2) - 1;
    }

    public PathSmoother(RaycastCollisionDetector<V> raycastCollisionDetector) {
        this.f3333a = raycastCollisionDetector;
    }

    public boolean smoothPath(PathSmootherRequest<N, V> pathSmootherRequest, long j) {
        long nanoTime = TimeUtils.nanoTime();
        SmoothableGraphPath<N, V> smoothableGraphPath = pathSmootherRequest.path;
        int count = smoothableGraphPath.getCount();
        if (count <= 2) {
            return true;
        }
        if (pathSmootherRequest.isNew) {
            pathSmootherRequest.isNew = false;
            if (this.f3334b == null) {
                V nodePosition = pathSmootherRequest.path.getNodePosition(0);
                this.f3334b = new Ray<>(nodePosition.cpy(), nodePosition.cpy());
            }
            pathSmootherRequest.outputIndex = 1;
            pathSmootherRequest.inputIndex = 2;
        }
        while (true) {
            int i = pathSmootherRequest.inputIndex;
            if (i < count) {
                long nanoTime2 = TimeUtils.nanoTime();
                j -= nanoTime2 - nanoTime;
                if (j <= 100) {
                    return false;
                }
                this.f3334b.start.set(smoothableGraphPath.getNodePosition(pathSmootherRequest.outputIndex - 1));
                this.f3334b.end.set(smoothableGraphPath.getNodePosition(pathSmootherRequest.inputIndex));
                if (this.f3333a.collides(this.f3334b)) {
                    smoothableGraphPath.swapNodes(pathSmootherRequest.outputIndex, pathSmootherRequest.inputIndex - 1);
                    pathSmootherRequest.outputIndex++;
                }
                pathSmootherRequest.inputIndex++;
                nanoTime = nanoTime2;
            } else {
                smoothableGraphPath.swapNodes(pathSmootherRequest.outputIndex, i - 1);
                smoothableGraphPath.truncatePath(pathSmootherRequest.outputIndex + 1);
                return true;
            }
        }
    }
}
