package com.badlogic.gdx.maps.tiled;

import com.badlogic.gdx.maps.MapProperties;
import com.badlogic.gdx.utils.IntMap;
import java.util.Iterator;
/* loaded from: classes.dex */
public class TiledMapTileSet implements Iterable<TiledMapTile> {

    /* renamed from: a */
    public String f5311a;

    /* renamed from: b */
    public IntMap<TiledMapTile> f5312b = new IntMap<>();

    /* renamed from: d */
    public MapProperties f5313d = new MapProperties();

    public String getName() {
        return this.f5311a;
    }

    public MapProperties getProperties() {
        return this.f5313d;
    }

    public TiledMapTile getTile(int i) {
        return this.f5312b.get(i);
    }

    @Override // java.lang.Iterable
    public Iterator<TiledMapTile> iterator() {
        return this.f5312b.values().iterator();
    }

    public void putTile(int i, TiledMapTile tiledMapTile) {
        this.f5312b.put(i, tiledMapTile);
    }

    public void removeTile(int i) {
        this.f5312b.remove(i);
    }

    public void setName(String str) {
        this.f5311a = str;
    }

    public int size() {
        return this.f5312b.size;
    }
}
