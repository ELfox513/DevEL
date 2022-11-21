package com.badlogic.gdx.maps.tiled;

import com.badlogic.gdx.maps.Map;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.Disposable;
/* loaded from: classes.dex */
public class TiledMap extends Map {

    /* renamed from: d */
    public TiledMapTileSets f5296d = new TiledMapTileSets();

    /* renamed from: k */
    public Array<? extends Disposable> f5297k;

    public TiledMapTileSets getTileSets() {
        return this.f5296d;
    }

    public void setOwnedResources(Array<? extends Disposable> array) {
        this.f5297k = array;
    }

    @Override // com.badlogic.gdx.maps.Map, com.badlogic.gdx.utils.Disposable
    public void dispose() {
        Array<? extends Disposable> array = this.f5297k;
        if (array != null) {
            Array.ArrayIterator<? extends Disposable> it = array.iterator();
            while (it.hasNext()) {
                it.next().dispose();
            }
        }
    }
}
