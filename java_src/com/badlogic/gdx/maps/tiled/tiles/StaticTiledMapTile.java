package com.badlogic.gdx.maps.tiled.tiles;

import com.badlogic.gdx.graphics.g2d.TextureRegion;
import com.badlogic.gdx.maps.MapObjects;
import com.badlogic.gdx.maps.MapProperties;
import com.badlogic.gdx.maps.tiled.TiledMapTile;
/* loaded from: classes.dex */
public class StaticTiledMapTile implements TiledMapTile {

    /* renamed from: a */
    public int f5360a;

    /* renamed from: b */
    public TiledMapTile.BlendMode f5361b = TiledMapTile.BlendMode.ALPHA;

    /* renamed from: c */
    public MapProperties f5362c;

    /* renamed from: d */
    public MapObjects f5363d;

    /* renamed from: e */
    public TextureRegion f5364e;

    /* renamed from: f */
    public float f5365f;

    /* renamed from: g */
    public float f5366g;

    public StaticTiledMapTile(TextureRegion textureRegion) {
        this.f5364e = textureRegion;
    }

    @Override // com.badlogic.gdx.maps.tiled.TiledMapTile
    public TiledMapTile.BlendMode getBlendMode() {
        return this.f5361b;
    }

    @Override // com.badlogic.gdx.maps.tiled.TiledMapTile
    public int getId() {
        return this.f5360a;
    }

    @Override // com.badlogic.gdx.maps.tiled.TiledMapTile
    public float getOffsetX() {
        return this.f5365f;
    }

    @Override // com.badlogic.gdx.maps.tiled.TiledMapTile
    public float getOffsetY() {
        return this.f5366g;
    }

    @Override // com.badlogic.gdx.maps.tiled.TiledMapTile
    public TextureRegion getTextureRegion() {
        return this.f5364e;
    }

    @Override // com.badlogic.gdx.maps.tiled.TiledMapTile
    public void setBlendMode(TiledMapTile.BlendMode blendMode) {
        this.f5361b = blendMode;
    }

    @Override // com.badlogic.gdx.maps.tiled.TiledMapTile
    public void setId(int i) {
        this.f5360a = i;
    }

    @Override // com.badlogic.gdx.maps.tiled.TiledMapTile
    public void setOffsetX(float f) {
        this.f5365f = f;
    }

    @Override // com.badlogic.gdx.maps.tiled.TiledMapTile
    public void setOffsetY(float f) {
        this.f5366g = f;
    }

    @Override // com.badlogic.gdx.maps.tiled.TiledMapTile
    public void setTextureRegion(TextureRegion textureRegion) {
        this.f5364e = textureRegion;
    }

    @Override // com.badlogic.gdx.maps.tiled.TiledMapTile
    public MapObjects getObjects() {
        if (this.f5363d == null) {
            this.f5363d = new MapObjects();
        }
        return this.f5363d;
    }

    @Override // com.badlogic.gdx.maps.tiled.TiledMapTile
    public MapProperties getProperties() {
        if (this.f5362c == null) {
            this.f5362c = new MapProperties();
        }
        return this.f5362c;
    }

    public StaticTiledMapTile(StaticTiledMapTile staticTiledMapTile) {
        if (staticTiledMapTile.f5362c != null) {
            getProperties().putAll(staticTiledMapTile.f5362c);
        }
        this.f5363d = staticTiledMapTile.f5363d;
        this.f5364e = staticTiledMapTile.f5364e;
        this.f5360a = staticTiledMapTile.f5360a;
    }
}
