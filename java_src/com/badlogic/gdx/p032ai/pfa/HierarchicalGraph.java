package com.badlogic.gdx.p032ai.pfa;
/* renamed from: com.badlogic.gdx.ai.pfa.HierarchicalGraph */
/* loaded from: classes.dex */
public interface HierarchicalGraph<N> extends Graph<N> {
    N convertNodeBetweenLevels(int i, N n, int i2);

    int getLevelCount();

    void setLevel(int i);
}
