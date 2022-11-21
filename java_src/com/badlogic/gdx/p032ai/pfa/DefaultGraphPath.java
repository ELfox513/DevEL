package com.badlogic.gdx.p032ai.pfa;

import com.badlogic.gdx.utils.Array;
import java.util.Iterator;
/* renamed from: com.badlogic.gdx.ai.pfa.DefaultGraphPath */
/* loaded from: classes.dex */
public class DefaultGraphPath<N> implements GraphPath<N> {
    public final Array<N> nodes;

    public DefaultGraphPath() {
        this(new Array());
    }

    @Override // com.badlogic.gdx.p032ai.pfa.GraphPath
    public void add(N n) {
        this.nodes.add(n);
    }

    @Override // com.badlogic.gdx.p032ai.pfa.GraphPath
    public void clear() {
        this.nodes.clear();
    }

    @Override // com.badlogic.gdx.p032ai.pfa.GraphPath
    public N get(int i) {
        return this.nodes.get(i);
    }

    @Override // com.badlogic.gdx.p032ai.pfa.GraphPath
    public int getCount() {
        return this.nodes.size;
    }

    @Override // java.lang.Iterable
    public Iterator<N> iterator() {
        return this.nodes.iterator();
    }

    @Override // com.badlogic.gdx.p032ai.pfa.GraphPath
    public void reverse() {
        this.nodes.reverse();
    }

    public DefaultGraphPath(int i) {
        this(new Array(i));
    }

    public DefaultGraphPath(Array<N> array) {
        this.nodes = array;
    }
}
