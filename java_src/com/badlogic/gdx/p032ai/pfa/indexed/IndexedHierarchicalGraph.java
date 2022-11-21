package com.badlogic.gdx.p032ai.pfa.indexed;

import com.badlogic.gdx.p032ai.pfa.HierarchicalGraph;
/* renamed from: com.badlogic.gdx.ai.pfa.indexed.IndexedHierarchicalGraph */
/* loaded from: classes.dex */
public abstract class IndexedHierarchicalGraph<N> implements IndexedGraph<N>, HierarchicalGraph<N> {

    /* renamed from: a */
    public int f3345a;

    /* renamed from: b */
    public int f3346b = 0;

    @Override // com.badlogic.gdx.p032ai.pfa.HierarchicalGraph
    public abstract N convertNodeBetweenLevels(int i, N n, int i2);

    @Override // com.badlogic.gdx.p032ai.pfa.HierarchicalGraph
    public int getLevelCount() {
        return this.f3345a;
    }

    @Override // com.badlogic.gdx.p032ai.pfa.HierarchicalGraph
    public void setLevel(int i) {
        this.f3346b = i;
    }

    public IndexedHierarchicalGraph(int i) {
        this.f3345a = i;
    }
}
