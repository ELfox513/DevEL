package com.badlogic.gdx.maps.tiled.renderers;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.OrthographicCamera;
import com.badlogic.gdx.graphics.g2d.Batch;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.graphics.g2d.TextureRegion;
import com.badlogic.gdx.maps.MapGroupLayer;
import com.badlogic.gdx.maps.MapLayer;
import com.badlogic.gdx.maps.MapLayers;
import com.badlogic.gdx.maps.MapObject;
import com.badlogic.gdx.maps.tiled.TiledMap;
import com.badlogic.gdx.maps.tiled.TiledMapImageLayer;
import com.badlogic.gdx.maps.tiled.TiledMapRenderer;
import com.badlogic.gdx.maps.tiled.TiledMapTileLayer;
import com.badlogic.gdx.maps.tiled.tiles.AnimatedTiledMapTile;
import com.badlogic.gdx.math.Matrix4;
import com.badlogic.gdx.math.Rectangle;
import com.badlogic.gdx.math.Vector3;
import com.badlogic.gdx.utils.Disposable;
import java.util.Iterator;
/* loaded from: classes.dex */
public abstract class BatchTiledMapRenderer implements TiledMapRenderer, Disposable {

    /* renamed from: a */
    public TiledMap f5318a;

    /* renamed from: b */
    public float f5319b;

    /* renamed from: d */
    public Batch f5320d;

    /* renamed from: k */
    public Rectangle f5321k;

    /* renamed from: p */
    public Rectangle f5322p;

    /* renamed from: q */
    public boolean f5323q;

    /* renamed from: r */
    public float[] f5324r;

    public BatchTiledMapRenderer(TiledMap tiledMap) {
        this(tiledMap, 1.0f);
    }

    /* renamed from: b */
    public void m23945b() {
        this.f5320d.end();
    }

    public Batch getBatch() {
        return this.f5320d;
    }

    public TiledMap getMap() {
        return this.f5318a;
    }

    public float getUnitScale() {
        return this.f5319b;
    }

    public Rectangle getViewBounds() {
        return this.f5321k;
    }

    @Override // com.badlogic.gdx.maps.MapRenderer
    public void render() {
        m23946a();
        Iterator<MapLayer> it = this.f5318a.getLayers().iterator();
        while (it.hasNext()) {
            m23944c(it.next());
        }
        m23945b();
    }

    @Override // com.badlogic.gdx.maps.tiled.TiledMapRenderer
    public void renderObject(MapObject mapObject) {
    }

    public void setMap(TiledMap tiledMap) {
        this.f5318a = tiledMap;
    }

    @Override // com.badlogic.gdx.maps.MapRenderer
    public void setView(OrthographicCamera orthographicCamera) {
        this.f5320d.setProjectionMatrix(orthographicCamera.combined);
        float f = orthographicCamera.viewportWidth;
        float f2 = orthographicCamera.zoom;
        float f3 = f * f2;
        float f4 = orthographicCamera.viewportHeight * f2;
        float abs = (Math.abs(orthographicCamera.f3888up.f5534y) * f3) + (Math.abs(orthographicCamera.f3888up.f5533x) * f4);
        float abs2 = (f4 * Math.abs(orthographicCamera.f3888up.f5534y)) + (f3 * Math.abs(orthographicCamera.f3888up.f5533x));
        Rectangle rectangle = this.f5321k;
        Vector3 vector3 = orthographicCamera.position;
        rectangle.set(vector3.f5533x - (abs / 2.0f), vector3.f5534y - (abs2 / 2.0f), abs, abs2);
    }

    public BatchTiledMapRenderer(TiledMap tiledMap, float f) {
        this.f5322p = new Rectangle();
        this.f5324r = new float[20];
        this.f5318a = tiledMap;
        this.f5319b = f;
        this.f5321k = new Rectangle();
        this.f5320d = new SpriteBatch();
        this.f5323q = true;
    }

    @Override // com.badlogic.gdx.utils.Disposable
    public void dispose() {
        if (this.f5323q) {
            this.f5320d.dispose();
        }
    }

    @Override // com.badlogic.gdx.maps.tiled.TiledMapRenderer
    public void renderImageLayer(TiledMapImageLayer tiledMapImageLayer) {
        Color color = this.f5320d.getColor();
        float floatBits = Color.toFloatBits(color.f3892r, color.f3891g, color.f3890b, color.f3889a * tiledMapImageLayer.getOpacity());
        float[] fArr = this.f5324r;
        TextureRegion textureRegion = tiledMapImageLayer.getTextureRegion();
        if (textureRegion == null) {
            return;
        }
        float x = tiledMapImageLayer.getX();
        float y = tiledMapImageLayer.getY();
        float f = this.f5319b;
        float f2 = x * f;
        float f3 = y * f;
        float regionWidth = (textureRegion.getRegionWidth() * this.f5319b) + f2;
        float regionHeight = (textureRegion.getRegionHeight() * this.f5319b) + f3;
        this.f5322p.set(f2, f3, regionWidth - f2, regionHeight - f3);
        if (this.f5321k.contains(this.f5322p) || this.f5321k.overlaps(this.f5322p)) {
            float u = textureRegion.getU();
            float v2 = textureRegion.getV2();
            float u2 = textureRegion.getU2();
            float v = textureRegion.getV();
            fArr[0] = f2;
            fArr[1] = f3;
            fArr[2] = floatBits;
            fArr[3] = u;
            fArr[4] = v2;
            fArr[5] = f2;
            fArr[6] = regionHeight;
            fArr[7] = floatBits;
            fArr[8] = u;
            fArr[9] = v;
            fArr[10] = regionWidth;
            fArr[11] = regionHeight;
            fArr[12] = floatBits;
            fArr[13] = u2;
            fArr[14] = v;
            fArr[15] = regionWidth;
            fArr[16] = f3;
            fArr[17] = floatBits;
            fArr[18] = u2;
            fArr[19] = v2;
            this.f5320d.draw(textureRegion.getTexture(), fArr, 0, 20);
        }
    }

    /* renamed from: a */
    public void m23946a() {
        AnimatedTiledMapTile.updateAnimationBaseTime();
        this.f5320d.begin();
    }

    /* renamed from: c */
    public void m23944c(MapLayer mapLayer) {
        if (!mapLayer.isVisible()) {
            return;
        }
        if (mapLayer instanceof MapGroupLayer) {
            MapLayers layers = ((MapGroupLayer) mapLayer).getLayers();
            for (int i = 0; i < layers.size(); i++) {
                MapLayer mapLayer2 = layers.get(i);
                if (mapLayer2.isVisible()) {
                    m23944c(mapLayer2);
                }
            }
        } else if (mapLayer instanceof TiledMapTileLayer) {
            renderTileLayer((TiledMapTileLayer) mapLayer);
        } else if (mapLayer instanceof TiledMapImageLayer) {
            renderImageLayer((TiledMapImageLayer) mapLayer);
        } else {
            renderObjects(mapLayer);
        }
    }

    @Override // com.badlogic.gdx.maps.tiled.TiledMapRenderer
    public void renderObjects(MapLayer mapLayer) {
        Iterator<MapObject> it = mapLayer.getObjects().iterator();
        while (it.hasNext()) {
            renderObject(it.next());
        }
    }

    @Override // com.badlogic.gdx.maps.MapRenderer
    public void render(int[] iArr) {
        m23946a();
        for (int i : iArr) {
            m23944c(this.f5318a.getLayers().get(i));
        }
        m23945b();
    }

    @Override // com.badlogic.gdx.maps.MapRenderer
    public void setView(Matrix4 matrix4, float f, float f2, float f3, float f4) {
        this.f5320d.setProjectionMatrix(matrix4);
        this.f5321k.set(f, f2, f3, f4);
    }

    public BatchTiledMapRenderer(TiledMap tiledMap, Batch batch) {
        this(tiledMap, 1.0f, batch);
    }

    public BatchTiledMapRenderer(TiledMap tiledMap, float f, Batch batch) {
        this.f5322p = new Rectangle();
        this.f5324r = new float[20];
        this.f5318a = tiledMap;
        this.f5319b = f;
        this.f5321k = new Rectangle();
        this.f5320d = batch;
        this.f5323q = false;
    }
}
