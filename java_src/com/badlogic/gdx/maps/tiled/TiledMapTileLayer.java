package com.badlogic.gdx.maps.tiled;

import com.badlogic.gdx.maps.MapLayer;
import java.lang.reflect.Array;
/* loaded from: classes.dex */
public class TiledMapTileLayer extends MapLayer {

    /* renamed from: l */
    public int f5302l;

    /* renamed from: m */
    public int f5303m;

    /* renamed from: n */
    public int f5304n;

    /* renamed from: o */
    public int f5305o;

    /* renamed from: p */
    public Cell[][] f5306p;

    /* loaded from: classes.dex */
    public static class Cell {
        public static final int ROTATE_0 = 0;
        public static final int ROTATE_180 = 2;
        public static final int ROTATE_270 = 3;
        public static final int ROTATE_90 = 1;

        /* renamed from: a */
        public TiledMapTile f5307a;

        /* renamed from: b */
        public boolean f5308b;

        /* renamed from: c */
        public boolean f5309c;

        /* renamed from: d */
        public int f5310d;

        public boolean getFlipHorizontally() {
            return this.f5308b;
        }

        public boolean getFlipVertically() {
            return this.f5309c;
        }

        public int getRotation() {
            return this.f5310d;
        }

        public TiledMapTile getTile() {
            return this.f5307a;
        }

        public Cell setFlipHorizontally(boolean z) {
            this.f5308b = z;
            return this;
        }

        public Cell setFlipVertically(boolean z) {
            this.f5309c = z;
            return this;
        }

        public Cell setRotation(int i) {
            this.f5310d = i;
            return this;
        }

        public Cell setTile(TiledMapTile tiledMapTile) {
            this.f5307a = tiledMapTile;
            return this;
        }
    }

    public Cell getCell(int i, int i2) {
        if (i < 0 || i >= this.f5302l || i2 < 0 || i2 >= this.f5303m) {
            return null;
        }
        return this.f5306p[i][i2];
    }

    public int getHeight() {
        return this.f5303m;
    }

    public int getTileHeight() {
        return this.f5305o;
    }

    public int getTileWidth() {
        return this.f5304n;
    }

    public int getWidth() {
        return this.f5302l;
    }

    public void setCell(int i, int i2, Cell cell) {
        if (i >= 0 && i < this.f5302l && i2 >= 0 && i2 < this.f5303m) {
            this.f5306p[i][i2] = cell;
        }
    }

    public TiledMapTileLayer(int i, int i2, int i3, int i4) {
        this.f5302l = i;
        this.f5303m = i2;
        this.f5304n = i3;
        this.f5305o = i4;
        this.f5306p = (Cell[][]) Array.newInstance(Cell.class, i, i2);
    }
}
