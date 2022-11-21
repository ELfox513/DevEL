package com.badlogic.gdx.p032ai.pfa;

import com.badlogic.gdx.math.Vector;
/* renamed from: com.badlogic.gdx.ai.pfa.PathSmootherRequest */
/* loaded from: classes.dex */
public class PathSmootherRequest<N, V extends Vector<V>> {
    public int inputIndex;
    public boolean isNew = true;
    public int outputIndex;
    public SmoothableGraphPath<N, V> path;

    public void refresh(SmoothableGraphPath<N, V> smoothableGraphPath) {
        this.path = smoothableGraphPath;
        this.isNew = true;
    }
}
