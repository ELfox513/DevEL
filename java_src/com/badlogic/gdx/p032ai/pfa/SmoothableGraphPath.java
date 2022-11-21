package com.badlogic.gdx.p032ai.pfa;

import com.badlogic.gdx.math.Vector;
/* renamed from: com.badlogic.gdx.ai.pfa.SmoothableGraphPath */
/* loaded from: classes.dex */
public interface SmoothableGraphPath<N, V extends Vector<V>> extends GraphPath<N> {
    V getNodePosition(int i);

    void swapNodes(int i, int i2);

    void truncatePath(int i);
}
