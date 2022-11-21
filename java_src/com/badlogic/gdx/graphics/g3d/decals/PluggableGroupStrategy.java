package com.badlogic.gdx.graphics.g3d.decals;

import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.IntMap;
/* loaded from: classes.dex */
public abstract class PluggableGroupStrategy implements GroupStrategy {

    /* renamed from: a */
    public IntMap<GroupPlug> f4451a = new IntMap<>();

    @Override // com.badlogic.gdx.graphics.g3d.decals.GroupStrategy
    public void afterGroup(int i) {
        this.f4451a.get(i).afterGroup();
    }

    @Override // com.badlogic.gdx.graphics.g3d.decals.GroupStrategy
    public void beforeGroup(int i, Array<Decal> array) {
        this.f4451a.get(i).beforeGroup(array);
    }

    public void plugIn(GroupPlug groupPlug, int i) {
        this.f4451a.put(i, groupPlug);
    }

    public GroupPlug unPlug(int i) {
        return this.f4451a.remove(i);
    }
}
