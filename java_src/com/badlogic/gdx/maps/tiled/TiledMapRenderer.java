package com.badlogic.gdx.maps.tiled;

import com.badlogic.gdx.maps.MapLayer;
import com.badlogic.gdx.maps.MapObject;
import com.badlogic.gdx.maps.MapRenderer;
/* loaded from: classes.dex */
public interface TiledMapRenderer extends MapRenderer {
    void renderImageLayer(TiledMapImageLayer tiledMapImageLayer);

    void renderObject(MapObject mapObject);

    void renderObjects(MapLayer mapLayer);

    void renderTileLayer(TiledMapTileLayer tiledMapTileLayer);
}
