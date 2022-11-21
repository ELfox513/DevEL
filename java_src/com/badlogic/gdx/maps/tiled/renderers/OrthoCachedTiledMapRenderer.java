package com.badlogic.gdx.maps.tiled.renderers;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.GL20;
import com.badlogic.gdx.graphics.Texture;
import com.badlogic.gdx.graphics.g2d.SpriteCache;
import com.badlogic.gdx.graphics.g2d.TextureRegion;
import com.badlogic.gdx.maps.MapLayer;
import com.badlogic.gdx.maps.MapLayers;
import com.badlogic.gdx.maps.MapObject;
import com.badlogic.gdx.maps.tiled.TiledMap;
import com.badlogic.gdx.maps.tiled.TiledMapImageLayer;
import com.badlogic.gdx.maps.tiled.TiledMapRenderer;
import com.badlogic.gdx.maps.tiled.TiledMapTile;
import com.badlogic.gdx.maps.tiled.TiledMapTileLayer;
import com.badlogic.gdx.math.Rectangle;
import com.badlogic.gdx.utils.Disposable;
import java.util.Iterator;
/* loaded from: classes.dex */
public class OrthoCachedTiledMapRenderer implements TiledMapRenderer, Disposable {

    /* renamed from: A */
    public boolean f5335A;

    /* renamed from: a */
    public final TiledMap f5336a;

    /* renamed from: b */
    public final SpriteCache f5337b;

    /* renamed from: d */
    public final float[] f5338d;

    /* renamed from: k */
    public boolean f5339k;

    /* renamed from: p */
    public float f5340p;

    /* renamed from: q */
    public final Rectangle f5341q;

    /* renamed from: r */
    public final Rectangle f5342r;

    /* renamed from: s */
    public float f5343s;

    /* renamed from: t */
    public float f5344t;

    /* renamed from: u */
    public float f5345u;

    /* renamed from: v */
    public boolean f5346v;

    /* renamed from: w */
    public int f5347w;

    /* renamed from: x */
    public boolean f5348x;

    /* renamed from: y */
    public boolean f5349y;

    /* renamed from: z */
    public boolean f5350z;

    public OrthoCachedTiledMapRenderer(TiledMap tiledMap) {
        this(tiledMap, 1.0f, 2000);
    }

    @Override // com.badlogic.gdx.utils.Disposable
    public void dispose() {
        this.f5337b.dispose();
    }

    public SpriteCache getSpriteCache() {
        return this.f5337b;
    }

    public void invalidateCache() {
        this.f5346v = false;
    }

    public boolean isCached() {
        return this.f5346v;
    }

    @Override // com.badlogic.gdx.maps.MapRenderer
    public void render() {
        if (!this.f5346v) {
            this.f5346v = true;
            this.f5347w = 0;
            this.f5337b.clear();
            Rectangle rectangle = this.f5341q;
            float f = rectangle.width;
            float f2 = this.f5343s;
            float f3 = f * f2;
            float f4 = rectangle.height;
            float f5 = f2 * f4;
            Rectangle rectangle2 = this.f5342r;
            rectangle2.f5523x = rectangle.f5523x - f3;
            rectangle2.f5524y = rectangle.f5524y - f5;
            rectangle2.width = f + (f3 * 2.0f);
            rectangle2.height = f4 + (f5 * 2.0f);
            Iterator<MapLayer> it = this.f5336a.getLayers().iterator();
            while (it.hasNext()) {
                MapLayer next = it.next();
                this.f5337b.beginCache();
                if (next instanceof TiledMapTileLayer) {
                    renderTileLayer((TiledMapTileLayer) next);
                } else if (next instanceof TiledMapImageLayer) {
                    renderImageLayer((TiledMapImageLayer) next);
                }
                this.f5337b.endCache();
            }
        }
        if (this.f5339k) {
            Gdx.f3119gl.glEnable(GL20.GL_BLEND);
            Gdx.f3119gl.glBlendFunc(GL20.GL_SRC_ALPHA, GL20.GL_ONE_MINUS_SRC_ALPHA);
        }
        this.f5337b.begin();
        MapLayers layers = this.f5336a.getLayers();
        int count = layers.getCount();
        for (int i = 0; i < count; i++) {
            MapLayer mapLayer = layers.get(i);
            if (mapLayer.isVisible()) {
                this.f5337b.draw(i);
                renderObjects(mapLayer);
            }
        }
        this.f5337b.end();
        if (this.f5339k) {
            Gdx.f3119gl.glDisable(GL20.GL_BLEND);
        }
    }

    @Override // com.badlogic.gdx.maps.tiled.TiledMapRenderer
    public void renderObject(MapObject mapObject) {
    }

    public void setBlending(boolean z) {
        this.f5339k = z;
    }

    public void setOverCache(float f) {
        this.f5343s = f;
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x006e, code lost:
        if (r1 <= ((r7.f5523x + r7.width) + 1.0E-5f)) goto L16;
     */
    @Override // com.badlogic.gdx.maps.MapRenderer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void setView(com.badlogic.gdx.graphics.OrthographicCamera r7) {
        /*
            r6 = this;
            com.badlogic.gdx.graphics.g2d.SpriteCache r0 = r6.f5337b
            com.badlogic.gdx.math.Matrix4 r1 = r7.combined
            r0.setProjectionMatrix(r1)
            float r0 = r7.viewportWidth
            float r1 = r7.zoom
            float r0 = r0 * r1
            float r2 = r6.f5344t
            r3 = 1073741824(0x40000000, float:2.0)
            float r2 = r2 * r3
            float r4 = r6.f5340p
            float r2 = r2 * r4
            float r0 = r0 + r2
            float r2 = r7.viewportHeight
            float r2 = r2 * r1
            float r1 = r6.f5345u
            float r1 = r1 * r3
            float r1 = r1 * r4
            float r2 = r2 + r1
            com.badlogic.gdx.math.Rectangle r1 = r6.f5341q
            com.badlogic.gdx.math.Vector3 r7 = r7.position
            float r4 = r7.f5533x
            float r5 = r0 / r3
            float r4 = r4 - r5
            float r7 = r7.f5534y
            float r3 = r2 / r3
            float r7 = r7 - r3
            r1.set(r4, r7, r0, r2)
            boolean r7 = r6.f5350z
            r0 = 925353388(0x3727c5ac, float:1.0E-5)
            if (r7 == 0) goto L48
            com.badlogic.gdx.math.Rectangle r7 = r6.f5341q
            float r7 = r7.f5523x
            com.badlogic.gdx.math.Rectangle r1 = r6.f5342r
            float r1 = r1.f5523x
            float r1 = r1 - r0
            int r7 = (r7 > r1 ? 1 : (r7 == r1 ? 0 : -1))
            if (r7 < 0) goto L87
        L48:
            boolean r7 = r6.f5335A
            if (r7 == 0) goto L59
            com.badlogic.gdx.math.Rectangle r7 = r6.f5341q
            float r7 = r7.f5524y
            com.badlogic.gdx.math.Rectangle r1 = r6.f5342r
            float r1 = r1.f5524y
            float r1 = r1 - r0
            int r7 = (r7 > r1 ? 1 : (r7 == r1 ? 0 : -1))
            if (r7 < 0) goto L87
        L59:
            boolean r7 = r6.f5349y
            if (r7 == 0) goto L70
            com.badlogic.gdx.math.Rectangle r7 = r6.f5341q
            float r1 = r7.f5523x
            float r7 = r7.width
            float r1 = r1 + r7
            com.badlogic.gdx.math.Rectangle r7 = r6.f5342r
            float r2 = r7.f5523x
            float r7 = r7.width
            float r2 = r2 + r7
            float r2 = r2 + r0
            int r7 = (r1 > r2 ? 1 : (r1 == r2 ? 0 : -1))
            if (r7 > 0) goto L87
        L70:
            boolean r7 = r6.f5348x
            if (r7 == 0) goto L8a
            com.badlogic.gdx.math.Rectangle r7 = r6.f5341q
            float r1 = r7.f5524y
            float r7 = r7.height
            float r1 = r1 + r7
            com.badlogic.gdx.math.Rectangle r7 = r6.f5342r
            float r2 = r7.f5524y
            float r7 = r7.height
            float r2 = r2 + r7
            float r2 = r2 + r0
            int r7 = (r1 > r2 ? 1 : (r1 == r2 ? 0 : -1))
            if (r7 <= 0) goto L8a
        L87:
            r7 = 0
            r6.f5346v = r7
        L8a:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.badlogic.gdx.maps.tiled.renderers.OrthoCachedTiledMapRenderer.setView(com.badlogic.gdx.graphics.OrthographicCamera):void");
    }

    public OrthoCachedTiledMapRenderer(TiledMap tiledMap, float f) {
        this(tiledMap, f, 2000);
    }

    @Override // com.badlogic.gdx.maps.tiled.TiledMapRenderer
    public void renderTileLayer(TiledMapTileLayer tiledMapTileLayer) {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        TiledMapTile tile;
        int i;
        float f;
        float f2;
        float f3;
        float f4;
        int i2;
        int i3;
        float floatBits = Color.toFloatBits(1.0f, 1.0f, 1.0f, tiledMapTileLayer.getOpacity());
        int width = tiledMapTileLayer.getWidth();
        int height = tiledMapTileLayer.getHeight();
        float tileWidth = tiledMapTileLayer.getTileWidth() * this.f5340p;
        float tileHeight = tiledMapTileLayer.getTileHeight() * this.f5340p;
        float renderOffsetX = tiledMapTileLayer.getRenderOffsetX() * this.f5340p;
        float f5 = (-tiledMapTileLayer.getRenderOffsetY()) * this.f5340p;
        int max = Math.max(0, (int) ((this.f5342r.f5523x - renderOffsetX) / tileWidth));
        Rectangle rectangle = this.f5342r;
        int min = Math.min(width, (int) ((((rectangle.f5523x + rectangle.width) + tileWidth) - renderOffsetX) / tileWidth));
        int max2 = Math.max(0, (int) ((this.f5342r.f5524y - f5) / tileHeight));
        Rectangle rectangle2 = this.f5342r;
        int min2 = Math.min(height, (int) ((((rectangle2.f5524y + rectangle2.height) + tileHeight) - f5) / tileHeight));
        int i4 = 1;
        if (min2 < height) {
            z = true;
        } else {
            z = false;
        }
        this.f5348x = z;
        if (min < width) {
            z2 = true;
        } else {
            z2 = false;
        }
        this.f5349y = z2;
        if (max > 0) {
            z3 = true;
        } else {
            z3 = false;
        }
        this.f5350z = z3;
        if (max2 > 0) {
            z4 = true;
        } else {
            z4 = false;
        }
        this.f5335A = z4;
        float[] fArr = this.f5338d;
        while (min2 >= max2) {
            int i5 = max;
            while (i5 < min) {
                TiledMapTileLayer.Cell cell = tiledMapTileLayer.getCell(i5, min2);
                if (cell == null || (tile = cell.getTile()) == null) {
                    f = tileWidth;
                    f2 = tileHeight;
                    f3 = renderOffsetX;
                    f4 = f5;
                    i = max;
                    i2 = min;
                    i3 = max2;
                } else {
                    this.f5347w += i4;
                    boolean flipHorizontally = cell.getFlipHorizontally();
                    boolean flipVertically = cell.getFlipVertically();
                    int rotation = cell.getRotation();
                    TextureRegion textureRegion = tile.getTextureRegion();
                    Texture texture = textureRegion.getTexture();
                    i = max;
                    f = tileWidth;
                    float offsetX = (i5 * tileWidth) + (tile.getOffsetX() * this.f5340p) + renderOffsetX;
                    f2 = tileHeight;
                    float offsetY = (min2 * tileHeight) + (tile.getOffsetY() * this.f5340p) + f5;
                    f3 = renderOffsetX;
                    float regionWidth = (textureRegion.getRegionWidth() * this.f5340p) + offsetX;
                    f4 = f5;
                    float regionHeight = (textureRegion.getRegionHeight() * this.f5340p) + offsetY;
                    float width2 = 0.5f / texture.getWidth();
                    i2 = min;
                    float height2 = 0.5f / texture.getHeight();
                    float u = textureRegion.getU() + width2;
                    float v2 = textureRegion.getV2() - height2;
                    float u2 = textureRegion.getU2() - width2;
                    float v = textureRegion.getV() + height2;
                    fArr[0] = offsetX;
                    fArr[1] = offsetY;
                    i3 = max2;
                    fArr[2] = floatBits;
                    fArr[3] = u;
                    fArr[4] = v2;
                    fArr[5] = offsetX;
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
                    fArr[16] = offsetY;
                    fArr[17] = floatBits;
                    fArr[18] = u2;
                    fArr[19] = v2;
                    if (flipHorizontally) {
                        fArr[3] = u2;
                        fArr[13] = u;
                        fArr[8] = u2;
                        fArr[18] = u;
                    }
                    if (flipVertically) {
                        fArr[4] = v;
                        fArr[14] = v2;
                        fArr[9] = v2;
                        fArr[19] = v;
                    }
                    if (rotation != 0) {
                        if (rotation != 1) {
                            if (rotation != 2) {
                                if (rotation == 3) {
                                    float f6 = fArr[4];
                                    fArr[4] = fArr[19];
                                    fArr[19] = fArr[14];
                                    fArr[14] = fArr[9];
                                    fArr[9] = f6;
                                    float f7 = fArr[3];
                                    fArr[3] = fArr[18];
                                    fArr[18] = fArr[13];
                                    fArr[13] = fArr[8];
                                    fArr[8] = f7;
                                }
                            } else {
                                float f8 = fArr[3];
                                fArr[3] = fArr[13];
                                fArr[13] = f8;
                                float f9 = fArr[8];
                                fArr[8] = fArr[18];
                                fArr[18] = f9;
                                float f10 = fArr[4];
                                fArr[4] = fArr[14];
                                fArr[14] = f10;
                                float f11 = fArr[9];
                                fArr[9] = fArr[19];
                                fArr[19] = f11;
                            }
                        } else {
                            float f12 = fArr[4];
                            fArr[4] = fArr[9];
                            fArr[9] = fArr[14];
                            fArr[14] = fArr[19];
                            fArr[19] = f12;
                            float f13 = fArr[3];
                            fArr[3] = fArr[8];
                            fArr[8] = fArr[13];
                            fArr[13] = fArr[18];
                            fArr[18] = f13;
                        }
                    }
                    this.f5337b.add(texture, fArr, 0, 20);
                }
                i5++;
                renderOffsetX = f3;
                max2 = i3;
                max = i;
                tileHeight = f2;
                tileWidth = f;
                f5 = f4;
                min = i2;
                i4 = 1;
            }
            min2--;
            renderOffsetX = renderOffsetX;
            f5 = f5;
            i4 = 1;
        }
    }

    public void setMaxTileSize(float f, float f2) {
        this.f5344t = f;
        this.f5345u = f2;
    }

    public OrthoCachedTiledMapRenderer(TiledMap tiledMap, float f, int i) {
        this.f5338d = new float[20];
        this.f5341q = new Rectangle();
        this.f5342r = new Rectangle();
        this.f5343s = 0.5f;
        this.f5336a = tiledMap;
        this.f5340p = f;
        this.f5337b = new SpriteCache(i, true);
    }

    @Override // com.badlogic.gdx.maps.tiled.TiledMapRenderer
    public void renderImageLayer(TiledMapImageLayer tiledMapImageLayer) {
        float floatBits = Color.toFloatBits(1.0f, 1.0f, 1.0f, tiledMapImageLayer.getOpacity());
        float[] fArr = this.f5338d;
        TextureRegion textureRegion = tiledMapImageLayer.getTextureRegion();
        if (textureRegion == null) {
            return;
        }
        float x = tiledMapImageLayer.getX();
        float y = tiledMapImageLayer.getY();
        float f = this.f5340p;
        float f2 = x * f;
        float f3 = y * f;
        float regionWidth = (textureRegion.getRegionWidth() * this.f5340p) + f2;
        float regionHeight = (textureRegion.getRegionHeight() * this.f5340p) + f3;
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
        this.f5337b.add(textureRegion.getTexture(), fArr, 0, 20);
    }

    @Override // com.badlogic.gdx.maps.tiled.TiledMapRenderer
    public void renderObjects(MapLayer mapLayer) {
        Iterator<MapObject> it = mapLayer.getObjects().iterator();
        while (it.hasNext()) {
            renderObject(it.next());
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x005c, code lost:
        if (r6 <= ((r4.f5523x + r4.width) + 1.0E-5f)) goto L16;
     */
    @Override // com.badlogic.gdx.maps.MapRenderer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void setView(com.badlogic.gdx.math.Matrix4 r4, float r5, float r6, float r7, float r8) {
        /*
            r3 = this;
            com.badlogic.gdx.graphics.g2d.SpriteCache r0 = r3.f5337b
            r0.setProjectionMatrix(r4)
            float r4 = r3.f5344t
            float r0 = r3.f5340p
            float r1 = r4 * r0
            float r5 = r5 - r1
            float r1 = r3.f5345u
            float r2 = r1 * r0
            float r6 = r6 - r2
            r2 = 1073741824(0x40000000, float:2.0)
            float r4 = r4 * r2
            float r4 = r4 * r0
            float r7 = r7 + r4
            float r1 = r1 * r2
            float r1 = r1 * r0
            float r8 = r8 + r1
            com.badlogic.gdx.math.Rectangle r4 = r3.f5341q
            r4.set(r5, r6, r7, r8)
            boolean r4 = r3.f5350z
            r5 = 925353388(0x3727c5ac, float:1.0E-5)
            if (r4 == 0) goto L36
            com.badlogic.gdx.math.Rectangle r4 = r3.f5341q
            float r4 = r4.f5523x
            com.badlogic.gdx.math.Rectangle r6 = r3.f5342r
            float r6 = r6.f5523x
            float r6 = r6 - r5
            int r4 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r4 < 0) goto L75
        L36:
            boolean r4 = r3.f5335A
            if (r4 == 0) goto L47
            com.badlogic.gdx.math.Rectangle r4 = r3.f5341q
            float r4 = r4.f5524y
            com.badlogic.gdx.math.Rectangle r6 = r3.f5342r
            float r6 = r6.f5524y
            float r6 = r6 - r5
            int r4 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r4 < 0) goto L75
        L47:
            boolean r4 = r3.f5349y
            if (r4 == 0) goto L5e
            com.badlogic.gdx.math.Rectangle r4 = r3.f5341q
            float r6 = r4.f5523x
            float r4 = r4.width
            float r6 = r6 + r4
            com.badlogic.gdx.math.Rectangle r4 = r3.f5342r
            float r7 = r4.f5523x
            float r4 = r4.width
            float r7 = r7 + r4
            float r7 = r7 + r5
            int r4 = (r6 > r7 ? 1 : (r6 == r7 ? 0 : -1))
            if (r4 > 0) goto L75
        L5e:
            boolean r4 = r3.f5348x
            if (r4 == 0) goto L78
            com.badlogic.gdx.math.Rectangle r4 = r3.f5341q
            float r6 = r4.f5524y
            float r4 = r4.height
            float r6 = r6 + r4
            com.badlogic.gdx.math.Rectangle r4 = r3.f5342r
            float r7 = r4.f5524y
            float r4 = r4.height
            float r7 = r7 + r4
            float r7 = r7 + r5
            int r4 = (r6 > r7 ? 1 : (r6 == r7 ? 0 : -1))
            if (r4 <= 0) goto L78
        L75:
            r4 = 0
            r3.f5346v = r4
        L78:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.badlogic.gdx.maps.tiled.renderers.OrthoCachedTiledMapRenderer.setView(com.badlogic.gdx.math.Matrix4, float, float, float, float):void");
    }

    @Override // com.badlogic.gdx.maps.MapRenderer
    public void render(int[] iArr) {
        if (!this.f5346v) {
            this.f5346v = true;
            this.f5347w = 0;
            this.f5337b.clear();
            Rectangle rectangle = this.f5341q;
            float f = rectangle.width;
            float f2 = this.f5343s;
            float f3 = f * f2;
            float f4 = rectangle.height;
            float f5 = f2 * f4;
            Rectangle rectangle2 = this.f5342r;
            rectangle2.f5523x = rectangle.f5523x - f3;
            rectangle2.f5524y = rectangle.f5524y - f5;
            rectangle2.width = f + (f3 * 2.0f);
            rectangle2.height = f4 + (f5 * 2.0f);
            Iterator<MapLayer> it = this.f5336a.getLayers().iterator();
            while (it.hasNext()) {
                MapLayer next = it.next();
                this.f5337b.beginCache();
                if (next instanceof TiledMapTileLayer) {
                    renderTileLayer((TiledMapTileLayer) next);
                } else if (next instanceof TiledMapImageLayer) {
                    renderImageLayer((TiledMapImageLayer) next);
                }
                this.f5337b.endCache();
            }
        }
        if (this.f5339k) {
            Gdx.f3119gl.glEnable(GL20.GL_BLEND);
            Gdx.f3119gl.glBlendFunc(GL20.GL_SRC_ALPHA, GL20.GL_ONE_MINUS_SRC_ALPHA);
        }
        this.f5337b.begin();
        MapLayers layers = this.f5336a.getLayers();
        for (int i : iArr) {
            MapLayer mapLayer = layers.get(i);
            if (mapLayer.isVisible()) {
                this.f5337b.draw(i);
                renderObjects(mapLayer);
            }
        }
        this.f5337b.end();
        if (this.f5339k) {
            Gdx.f3119gl.glDisable(GL20.GL_BLEND);
        }
    }
}
