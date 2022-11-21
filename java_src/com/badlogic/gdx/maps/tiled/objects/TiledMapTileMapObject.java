package com.badlogic.gdx.maps.tiled.objects;

import com.badlogic.gdx.graphics.g2d.TextureRegion;
import com.badlogic.gdx.maps.objects.TextureMapObject;
import com.badlogic.gdx.maps.tiled.TiledMapTile;
/* loaded from: classes.dex */
public class TiledMapTileMapObject extends TextureMapObject {

    /* renamed from: n */
    public boolean f5315n;

    /* renamed from: o */
    public boolean f5316o;

    /* renamed from: p */
    public TiledMapTile f5317p;

    public TiledMapTile getTile() {
        return this.f5317p;
    }

    public boolean isFlipHorizontally() {
        return this.f5315n;
    }

    public boolean isFlipVertically() {
        return this.f5316o;
    }

    public void setFlipHorizontally(boolean z) {
        this.f5315n = z;
    }

    public void setFlipVertically(boolean z) {
        this.f5316o = z;
    }

    public void setTile(TiledMapTile tiledMapTile) {
        this.f5317p = tiledMapTile;
    }

    public TiledMapTileMapObject(TiledMapTile tiledMapTile, boolean z, boolean z2) {
        this.f5315n = z;
        this.f5316o = z2;
        this.f5317p = tiledMapTile;
        TextureRegion textureRegion = new TextureRegion(tiledMapTile.getTextureRegion());
        textureRegion.flip(z, z2);
        setTextureRegion(textureRegion);
    }
}
