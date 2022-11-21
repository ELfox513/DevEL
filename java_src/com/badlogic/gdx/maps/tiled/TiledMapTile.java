package com.badlogic.gdx.maps.tiled;

import com.badlogic.gdx.graphics.g2d.TextureRegion;
import com.badlogic.gdx.maps.MapObjects;
import com.badlogic.gdx.maps.MapProperties;
/* loaded from: classes.dex */
public interface TiledMapTile {

    /* loaded from: classes.dex */
    public enum BlendMode {
        NONE,
        ALPHA
    }

    BlendMode getBlendMode();

    int getId();

    MapObjects getObjects();

    float getOffsetX();

    float getOffsetY();

    MapProperties getProperties();

    TextureRegion getTextureRegion();

    void setBlendMode(BlendMode blendMode);

    void setId(int i);

    void setOffsetX(float f);

    void setOffsetY(float f);

    void setTextureRegion(TextureRegion textureRegion);
}
