package com.badlogic.gdx.maps.tiled;

import com.badlogic.gdx.utils.Array;
import java.util.Iterator;
/* loaded from: classes.dex */
public class TiledMapTileSets implements Iterable<TiledMapTileSet> {

    /* renamed from: a */
    public Array<TiledMapTileSet> f5314a = new Array<>();

    public void addTileSet(TiledMapTileSet tiledMapTileSet) {
        this.f5314a.add(tiledMapTileSet);
    }

    public TiledMapTileSet getTileSet(int i) {
        return this.f5314a.get(i);
    }

    @Override // java.lang.Iterable
    public Iterator<TiledMapTileSet> iterator() {
        return this.f5314a.iterator();
    }

    public void removeTileSet(int i) {
        this.f5314a.removeIndex(i);
    }

    public TiledMapTile getTile(int i) {
        for (int i2 = this.f5314a.size - 1; i2 >= 0; i2--) {
            TiledMapTile tile = this.f5314a.get(i2).getTile(i);
            if (tile != null) {
                return tile;
            }
        }
        return null;
    }

    public TiledMapTileSet getTileSet(String str) {
        Array.ArrayIterator<TiledMapTileSet> it = this.f5314a.iterator();
        while (it.hasNext()) {
            TiledMapTileSet next = it.next();
            if (str.equals(next.getName())) {
                return next;
            }
        }
        return null;
    }

    public void removeTileSet(TiledMapTileSet tiledMapTileSet) {
        this.f5314a.removeValue(tiledMapTileSet, true);
    }
}
