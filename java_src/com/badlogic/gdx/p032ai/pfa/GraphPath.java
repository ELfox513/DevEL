package com.badlogic.gdx.p032ai.pfa;
/* renamed from: com.badlogic.gdx.ai.pfa.GraphPath */
/* loaded from: classes.dex */
public interface GraphPath<N> extends Iterable<N> {
    void add(N n);

    void clear();

    N get(int i);

    int getCount();

    void reverse();
}
