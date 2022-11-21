package com.badlogic.gdx.maps;

import com.badlogic.gdx.utils.Disposable;
/* loaded from: classes.dex */
public class Map implements Disposable {

    /* renamed from: a */
    public MapLayers f5245a = new MapLayers();

    /* renamed from: b */
    public MapProperties f5246b = new MapProperties();

    @Override // com.badlogic.gdx.utils.Disposable
    public void dispose() {
    }

    public MapLayers getLayers() {
        return this.f5245a;
    }

    public MapProperties getProperties() {
        return this.f5246b;
    }
}
