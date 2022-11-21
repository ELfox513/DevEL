package com.badlogic.gdx.p032ai.pfa.indexed;

import com.badlogic.gdx.p032ai.pfa.Graph;
/* renamed from: com.badlogic.gdx.ai.pfa.indexed.IndexedGraph */
/* loaded from: classes.dex */
public interface IndexedGraph<N> extends Graph<N> {
    int getIndex(N n);

    int getNodeCount();
}
