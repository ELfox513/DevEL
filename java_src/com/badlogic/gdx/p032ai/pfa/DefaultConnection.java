package com.badlogic.gdx.p032ai.pfa;
/* renamed from: com.badlogic.gdx.ai.pfa.DefaultConnection */
/* loaded from: classes.dex */
public class DefaultConnection<N> implements Connection<N> {

    /* renamed from: a */
    public N f3314a;

    /* renamed from: b */
    public N f3315b;

    @Override // com.badlogic.gdx.p032ai.pfa.Connection
    public float getCost() {
        return 1.0f;
    }

    @Override // com.badlogic.gdx.p032ai.pfa.Connection
    public N getFromNode() {
        return this.f3314a;
    }

    @Override // com.badlogic.gdx.p032ai.pfa.Connection
    public N getToNode() {
        return this.f3315b;
    }

    public DefaultConnection(N n, N n2) {
        this.f3314a = n;
        this.f3315b = n2;
    }
}
