package com.badlogic.gdx.p032ai.pfa;

import com.badlogic.gdx.utils.Array;
/* renamed from: com.badlogic.gdx.ai.pfa.Graph */
/* loaded from: classes.dex */
public interface Graph<N> {
    Array<Connection<N>> getConnections(N n);
}
