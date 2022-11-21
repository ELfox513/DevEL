package com.badlogic.gdx.maps.tiled.tiles;

import com.badlogic.gdx.graphics.g2d.TextureRegion;
import com.badlogic.gdx.maps.MapObjects;
import com.badlogic.gdx.maps.MapProperties;
import com.badlogic.gdx.maps.tiled.TiledMapTile;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.GdxRuntimeException;
import com.badlogic.gdx.utils.IntArray;
import com.badlogic.gdx.utils.TimeUtils;
/* loaded from: classes.dex */
public class AnimatedTiledMapTile implements TiledMapTile {

    /* renamed from: h */
    public static long f5351h;

    /* renamed from: i */
    public static final long f5352i = TimeUtils.millis();

    /* renamed from: a */
    public int f5353a;

    /* renamed from: b */
    public TiledMapTile.BlendMode f5354b;

    /* renamed from: c */
    public MapProperties f5355c;

    /* renamed from: d */
    public MapObjects f5356d;

    /* renamed from: e */
    public StaticTiledMapTile[] f5357e;

    /* renamed from: f */
    public int[] f5358f;

    /* renamed from: g */
    public int f5359g;

    public AnimatedTiledMapTile(float f, Array<StaticTiledMapTile> array) {
        this.f5354b = TiledMapTile.BlendMode.ALPHA;
        int i = array.size;
        this.f5357e = new StaticTiledMapTile[i];
        int i2 = (int) (f * 1000.0f);
        this.f5359g = i * i2;
        this.f5358f = new int[i];
        for (int i3 = 0; i3 < array.size; i3++) {
            this.f5357e[i3] = array.get(i3);
            this.f5358f[i3] = i2;
        }
    }

    public static void updateAnimationBaseTime() {
        f5351h = TimeUtils.millis() - f5352i;
    }

    public int[] getAnimationIntervals() {
        return this.f5358f;
    }

    @Override // com.badlogic.gdx.maps.tiled.TiledMapTile
    public TiledMapTile.BlendMode getBlendMode() {
        return this.f5354b;
    }

    public TiledMapTile getCurrentFrame() {
        return this.f5357e[getCurrentFrameIndex()];
    }

    public StaticTiledMapTile[] getFrameTiles() {
        return this.f5357e;
    }

    @Override // com.badlogic.gdx.maps.tiled.TiledMapTile
    public int getId() {
        return this.f5353a;
    }

    @Override // com.badlogic.gdx.maps.tiled.TiledMapTile
    public float getOffsetX() {
        return getCurrentFrame().getOffsetX();
    }

    @Override // com.badlogic.gdx.maps.tiled.TiledMapTile
    public float getOffsetY() {
        return getCurrentFrame().getOffsetY();
    }

    @Override // com.badlogic.gdx.maps.tiled.TiledMapTile
    public TextureRegion getTextureRegion() {
        return getCurrentFrame().getTextureRegion();
    }

    public void setAnimationIntervals(int[] iArr) {
        if (iArr.length == this.f5358f.length) {
            this.f5358f = iArr;
            this.f5359g = 0;
            for (int i : iArr) {
                this.f5359g += i;
            }
            return;
        }
        throw new GdxRuntimeException("Cannot set " + iArr.length + " frame intervals. The given int[] must have a size of " + this.f5358f.length + ".");
    }

    @Override // com.badlogic.gdx.maps.tiled.TiledMapTile
    public void setBlendMode(TiledMapTile.BlendMode blendMode) {
        this.f5354b = blendMode;
    }

    @Override // com.badlogic.gdx.maps.tiled.TiledMapTile
    public void setId(int i) {
        this.f5353a = i;
    }

    @Override // com.badlogic.gdx.maps.tiled.TiledMapTile
    public void setOffsetX(float f) {
        throw new GdxRuntimeException("Cannot set offset of AnimatedTiledMapTile.");
    }

    @Override // com.badlogic.gdx.maps.tiled.TiledMapTile
    public void setOffsetY(float f) {
        throw new GdxRuntimeException("Cannot set offset of AnimatedTiledMapTile.");
    }

    @Override // com.badlogic.gdx.maps.tiled.TiledMapTile
    public void setTextureRegion(TextureRegion textureRegion) {
        throw new GdxRuntimeException("Cannot set the texture region of AnimatedTiledMapTile.");
    }

    public int getCurrentFrameIndex() {
        int i = (int) (f5351h % this.f5359g);
        int i2 = 0;
        while (true) {
            int[] iArr = this.f5358f;
            if (i2 < iArr.length) {
                int i3 = iArr[i2];
                if (i <= i3) {
                    return i2;
                }
                i -= i3;
                i2++;
            } else {
                throw new GdxRuntimeException("Could not determine current animation frame in AnimatedTiledMapTile.  This should never happen.");
            }
        }
    }

    @Override // com.badlogic.gdx.maps.tiled.TiledMapTile
    public MapObjects getObjects() {
        if (this.f5356d == null) {
            this.f5356d = new MapObjects();
        }
        return this.f5356d;
    }

    @Override // com.badlogic.gdx.maps.tiled.TiledMapTile
    public MapProperties getProperties() {
        if (this.f5355c == null) {
            this.f5355c = new MapProperties();
        }
        return this.f5355c;
    }

    public AnimatedTiledMapTile(IntArray intArray, Array<StaticTiledMapTile> array) {
        this.f5354b = TiledMapTile.BlendMode.ALPHA;
        this.f5357e = new StaticTiledMapTile[array.size];
        this.f5358f = intArray.toArray();
        this.f5359g = 0;
        for (int i = 0; i < intArray.size; i++) {
            this.f5357e[i] = array.get(i);
            this.f5359g += intArray.get(i);
        }
    }
}
