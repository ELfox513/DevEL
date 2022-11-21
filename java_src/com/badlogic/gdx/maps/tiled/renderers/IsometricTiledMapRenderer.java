package com.badlogic.gdx.maps.tiled.renderers;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.Batch;
import com.badlogic.gdx.graphics.g2d.TextureRegion;
import com.badlogic.gdx.maps.tiled.TiledMap;
import com.badlogic.gdx.maps.tiled.TiledMapTile;
import com.badlogic.gdx.maps.tiled.TiledMapTileLayer;
import com.badlogic.gdx.math.Matrix4;
import com.badlogic.gdx.math.Rectangle;
import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.math.Vector3;
/* loaded from: classes.dex */
public class IsometricTiledMapRenderer extends BatchTiledMapRenderer {

    /* renamed from: s */
    public Matrix4 f5328s;

    /* renamed from: t */
    public Matrix4 f5329t;

    /* renamed from: u */
    public Vector3 f5330u;

    /* renamed from: v */
    public Vector2 f5331v;

    /* renamed from: w */
    public Vector2 f5332w;

    /* renamed from: x */
    public Vector2 f5333x;

    /* renamed from: y */
    public Vector2 f5334y;

    public IsometricTiledMapRenderer(TiledMap tiledMap) {
        super(tiledMap);
        this.f5330u = new Vector3();
        this.f5331v = new Vector2();
        this.f5332w = new Vector2();
        this.f5333x = new Vector2();
        this.f5334y = new Vector2();
        init();
    }

    /* renamed from: d */
    public final Vector3 m23941d(Vector2 vector2) {
        this.f5330u.set(vector2.f5527x, vector2.f5528y, 0.0f);
        this.f5330u.mul(this.f5329t);
        return this.f5330u;
    }

    public final void init() {
        Matrix4 matrix4 = new Matrix4();
        this.f5328s = matrix4;
        matrix4.idt();
        this.f5328s.scale((float) (Math.sqrt(2.0d) / 2.0d), (float) (Math.sqrt(2.0d) / 4.0d), 1.0f);
        this.f5328s.rotate(0.0f, 0.0f, 1.0f, -45.0f);
        Matrix4 matrix42 = new Matrix4(this.f5328s);
        this.f5329t = matrix42;
        matrix42.inv();
    }

    @Override // com.badlogic.gdx.maps.tiled.TiledMapRenderer
    public void renderTileLayer(TiledMapTileLayer tiledMapTileLayer) {
        int i;
        float f;
        float f2;
        float f3;
        TiledMapTile tile;
        Color color = this.f5320d.getColor();
        float floatBits = Color.toFloatBits(color.f3892r, color.f3891g, color.f3890b, color.f3889a * tiledMapTileLayer.getOpacity());
        float tileWidth = tiledMapTileLayer.getTileWidth() * this.f5319b;
        float tileHeight = tiledMapTileLayer.getTileHeight() * this.f5319b;
        float renderOffsetX = tiledMapTileLayer.getRenderOffsetX() * this.f5319b;
        float f4 = (-tiledMapTileLayer.getRenderOffsetY()) * this.f5319b;
        float f5 = tileWidth * 0.5f;
        float f6 = tileHeight * 0.5f;
        Vector2 vector2 = this.f5331v;
        Rectangle rectangle = this.f5321k;
        vector2.set((rectangle.f5523x + rectangle.width) - renderOffsetX, rectangle.f5524y - f4);
        Vector2 vector22 = this.f5332w;
        Rectangle rectangle2 = this.f5321k;
        vector22.set(rectangle2.f5523x - renderOffsetX, (rectangle2.f5524y + rectangle2.height) - f4);
        Vector2 vector23 = this.f5333x;
        Rectangle rectangle3 = this.f5321k;
        vector23.set(rectangle3.f5523x - renderOffsetX, rectangle3.f5524y - f4);
        Vector2 vector24 = this.f5334y;
        Rectangle rectangle4 = this.f5321k;
        vector24.set((rectangle4.f5523x + rectangle4.width) - renderOffsetX, (rectangle4.f5524y + rectangle4.height) - f4);
        int i2 = ((int) (m23941d(this.f5333x).f5534y / tileWidth)) - 2;
        int i3 = ((int) (m23941d(this.f5334y).f5534y / tileWidth)) + 2;
        int i4 = ((int) (m23941d(this.f5332w).f5533x / tileWidth)) - 2;
        int i5 = ((int) (m23941d(this.f5331v).f5533x / tileWidth)) + 2;
        while (i3 >= i2) {
            int i6 = i4;
            while (i6 <= i5) {
                float f7 = i6;
                float f8 = i3;
                float f9 = (f7 * f5) + (f8 * f5);
                float f10 = (f8 * f6) - (f7 * f6);
                TiledMapTileLayer.Cell cell = tiledMapTileLayer.getCell(i6, i3);
                if (cell != null && (tile = cell.getTile()) != null) {
                    boolean flipHorizontally = cell.getFlipHorizontally();
                    boolean flipVertically = cell.getFlipVertically();
                    int rotation = cell.getRotation();
                    TextureRegion textureRegion = tile.getTextureRegion();
                    float offsetX = f9 + (tile.getOffsetX() * this.f5319b) + renderOffsetX;
                    float offsetY = tile.getOffsetY();
                    i = i5;
                    float f11 = f10 + (offsetY * this.f5319b) + f4;
                    float regionWidth = (textureRegion.getRegionWidth() * this.f5319b) + offsetX;
                    f = f6;
                    float regionHeight = (textureRegion.getRegionHeight() * this.f5319b) + f11;
                    float u = textureRegion.getU();
                    float v2 = textureRegion.getV2();
                    float u2 = textureRegion.getU2();
                    float v = textureRegion.getV();
                    f2 = renderOffsetX;
                    float[] fArr = this.f5324r;
                    f3 = f4;
                    fArr[0] = offsetX;
                    fArr[1] = f11;
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
                    fArr[16] = f11;
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
                                    float f12 = fArr[4];
                                    fArr[4] = fArr[19];
                                    fArr[19] = fArr[14];
                                    fArr[14] = fArr[9];
                                    fArr[9] = f12;
                                    float f13 = fArr[3];
                                    fArr[3] = fArr[18];
                                    fArr[18] = fArr[13];
                                    fArr[13] = fArr[8];
                                    fArr[8] = f13;
                                }
                            } else {
                                float f14 = fArr[3];
                                fArr[3] = fArr[13];
                                fArr[13] = f14;
                                float f15 = fArr[8];
                                fArr[8] = fArr[18];
                                fArr[18] = f15;
                                float f16 = fArr[4];
                                fArr[4] = fArr[14];
                                fArr[14] = f16;
                                float f17 = fArr[9];
                                fArr[9] = fArr[19];
                                fArr[19] = f17;
                            }
                        } else {
                            float f18 = fArr[4];
                            fArr[4] = fArr[9];
                            fArr[9] = fArr[14];
                            fArr[14] = fArr[19];
                            fArr[19] = f18;
                            float f19 = fArr[3];
                            fArr[3] = fArr[8];
                            fArr[8] = fArr[13];
                            fArr[13] = fArr[18];
                            fArr[18] = f19;
                        }
                    }
                    this.f5320d.draw(textureRegion.getTexture(), this.f5324r, 0, 20);
                } else {
                    i = i5;
                    f = f6;
                    f2 = renderOffsetX;
                    f3 = f4;
                }
                i6++;
                i5 = i;
                f6 = f;
                renderOffsetX = f2;
                f4 = f3;
            }
            i3--;
            f6 = f6;
        }
    }

    public IsometricTiledMapRenderer(TiledMap tiledMap, Batch batch) {
        super(tiledMap, batch);
        this.f5330u = new Vector3();
        this.f5331v = new Vector2();
        this.f5332w = new Vector2();
        this.f5333x = new Vector2();
        this.f5334y = new Vector2();
        init();
    }

    public IsometricTiledMapRenderer(TiledMap tiledMap, float f) {
        super(tiledMap, f);
        this.f5330u = new Vector3();
        this.f5331v = new Vector2();
        this.f5332w = new Vector2();
        this.f5333x = new Vector2();
        this.f5334y = new Vector2();
        init();
    }

    public IsometricTiledMapRenderer(TiledMap tiledMap, float f, Batch batch) {
        super(tiledMap, f, batch);
        this.f5330u = new Vector3();
        this.f5331v = new Vector2();
        this.f5332w = new Vector2();
        this.f5333x = new Vector2();
        this.f5334y = new Vector2();
        init();
    }
}
