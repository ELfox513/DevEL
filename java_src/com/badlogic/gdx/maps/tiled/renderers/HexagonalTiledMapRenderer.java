package com.badlogic.gdx.maps.tiled.renderers;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.Batch;
import com.badlogic.gdx.graphics.g2d.TextureRegion;
import com.badlogic.gdx.maps.tiled.TiledMap;
import com.badlogic.gdx.maps.tiled.TiledMapTile;
import com.badlogic.gdx.maps.tiled.TiledMapTileLayer;
import com.badlogic.gdx.maps.tiled.tiles.AnimatedTiledMapTile;
import com.badlogic.gdx.math.Rectangle;
/* loaded from: classes.dex */
public class HexagonalTiledMapRenderer extends BatchTiledMapRenderer {

    /* renamed from: s */
    public boolean f5325s;

    /* renamed from: t */
    public boolean f5326t;

    /* renamed from: u */
    public float f5327u;

    public HexagonalTiledMapRenderer(TiledMap tiledMap) {
        super(tiledMap);
        this.f5325s = true;
        this.f5326t = false;
        this.f5327u = 0.0f;
        m23943d(tiledMap);
    }

    /* renamed from: d */
    public final void m23943d(TiledMap tiledMap) {
        String str = (String) tiledMap.getProperties().get("staggeraxis", String.class);
        if (str != null) {
            if (str.equals("x")) {
                this.f5325s = true;
            } else {
                this.f5325s = false;
            }
        }
        String str2 = (String) tiledMap.getProperties().get("staggerindex", String.class);
        if (str2 != null) {
            if (str2.equals("even")) {
                this.f5326t = true;
            } else {
                this.f5326t = false;
            }
        }
        Integer num = (Integer) tiledMap.getProperties().get("hexsidelength", Integer.class);
        if (num != null) {
            this.f5327u = num.intValue();
        } else if (this.f5325s) {
            Integer num2 = (Integer) tiledMap.getProperties().get("tilewidth", Integer.class);
            if (num2 != null) {
                this.f5327u = num2.intValue() * 0.5f;
            } else {
                this.f5327u = ((TiledMapTileLayer) tiledMap.getLayers().get(0)).getTileWidth() * 0.5f;
            }
        } else {
            Integer num3 = (Integer) tiledMap.getProperties().get("tileheight", Integer.class);
            if (num3 != null) {
                this.f5327u = num3.intValue() * 0.5f;
            } else {
                this.f5327u = ((TiledMapTileLayer) tiledMap.getLayers().get(0)).getTileHeight() * 0.5f;
            }
        }
    }

    /* renamed from: e */
    public final void m23942e(TiledMapTileLayer.Cell cell, float f, float f2, float f3) {
        TiledMapTile tile;
        if (cell == null || (tile = cell.getTile()) == null || (tile instanceof AnimatedTiledMapTile)) {
            return;
        }
        boolean flipHorizontally = cell.getFlipHorizontally();
        boolean flipVertically = cell.getFlipVertically();
        int rotation = cell.getRotation();
        TextureRegion textureRegion = tile.getTextureRegion();
        float offsetX = f + (tile.getOffsetX() * this.f5319b);
        float offsetY = f2 + (tile.getOffsetY() * this.f5319b);
        float regionWidth = (textureRegion.getRegionWidth() * this.f5319b) + offsetX;
        float regionHeight = (textureRegion.getRegionHeight() * this.f5319b) + offsetY;
        float u = textureRegion.getU();
        float v2 = textureRegion.getV2();
        float u2 = textureRegion.getU2();
        float v = textureRegion.getV();
        float[] fArr = this.f5324r;
        fArr[0] = offsetX;
        fArr[1] = offsetY;
        fArr[2] = f3;
        fArr[3] = u;
        fArr[4] = v2;
        fArr[5] = offsetX;
        fArr[6] = regionHeight;
        fArr[7] = f3;
        fArr[8] = u;
        fArr[9] = v;
        fArr[10] = regionWidth;
        fArr[11] = regionHeight;
        fArr[12] = f3;
        fArr[13] = u2;
        fArr[14] = v;
        fArr[15] = regionWidth;
        fArr[16] = offsetY;
        fArr[17] = f3;
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
        if (rotation == 2) {
            float f4 = fArr[3];
            fArr[3] = fArr[13];
            fArr[13] = f4;
            float f5 = fArr[8];
            fArr[8] = fArr[18];
            fArr[18] = f5;
            float f6 = fArr[4];
            fArr[4] = fArr[14];
            fArr[14] = f6;
            float f7 = fArr[9];
            fArr[9] = fArr[19];
            fArr[19] = f7;
        }
        this.f5320d.draw(textureRegion.getTexture(), this.f5324r, 0, 20);
    }

    @Override // com.badlogic.gdx.maps.tiled.TiledMapRenderer
    public void renderTileLayer(TiledMapTileLayer tiledMapTileLayer) {
        boolean z;
        float f;
        int i;
        boolean z2;
        TiledMapTileLayer tiledMapTileLayer2 = tiledMapTileLayer;
        Color color = this.f5320d.getColor();
        float floatBits = Color.toFloatBits(color.f3892r, color.f3891g, color.f3890b, color.f3889a * tiledMapTileLayer.getOpacity());
        int width = tiledMapTileLayer.getWidth();
        int height = tiledMapTileLayer.getHeight();
        float tileWidth = tiledMapTileLayer.getTileWidth() * this.f5319b;
        float tileHeight = tiledMapTileLayer.getTileHeight() * this.f5319b;
        float renderOffsetX = tiledMapTileLayer.getRenderOffsetX() * this.f5319b;
        float f2 = this.f5319b;
        float f3 = (-tiledMapTileLayer.getRenderOffsetY()) * f2;
        float f4 = this.f5327u * f2;
        boolean z3 = false;
        if (this.f5325s) {
            float f5 = (tileWidth + f4) / 2.0f;
            float f6 = 0.5f * tileHeight;
            int max = Math.max(0, (int) (((this.f5321k.f5524y - f6) - renderOffsetX) / tileHeight));
            Rectangle rectangle = this.f5321k;
            int min = Math.min(height, (int) ((((rectangle.f5524y + rectangle.height) + tileHeight) - renderOffsetX) / tileHeight));
            int max2 = Math.max(0, (int) (((this.f5321k.f5523x - ((tileWidth - f4) / 2.0f)) - f3) / f5));
            Rectangle rectangle2 = this.f5321k;
            int min2 = Math.min(width, (int) ((((rectangle2.f5523x + rectangle2.width) + f5) - f3) / f5));
            boolean z4 = this.f5326t;
            int i2 = max2 % 2;
            if (i2 == 0) {
                z3 = true;
            }
            if (z4 == z3) {
                i = max2 + 1;
            } else {
                i = max2;
            }
            if (i2 == 0) {
                z2 = true;
            } else {
                z2 = false;
            }
            if (z4 != z2) {
                max2++;
            }
            int i3 = min - 1;
            while (i3 >= max) {
                int i4 = i;
                while (i4 < min2) {
                    m23942e(tiledMapTileLayer2.getCell(i4, i3), (i4 * f5) + renderOffsetX, (i3 * tileHeight) + f6 + f3, floatBits);
                    i4 += 2;
                    max2 = max2;
                }
                int i5 = max2;
                while (max2 < min2) {
                    m23942e(tiledMapTileLayer2.getCell(max2, i3), (max2 * f5) + renderOffsetX, (i3 * tileHeight) + f3, floatBits);
                    max2 += 2;
                }
                i3--;
                max2 = i5;
            }
            return;
        }
        float f7 = (tileHeight + f4) / 2.0f;
        float f8 = 0.5f * tileWidth;
        int max3 = Math.max(0, (int) (((this.f5321k.f5524y - ((tileHeight - f4) / 2.0f)) - renderOffsetX) / f7));
        Rectangle rectangle3 = this.f5321k;
        int min3 = Math.min(height, (int) ((((rectangle3.f5524y + rectangle3.height) + f7) - renderOffsetX) / f7));
        int max4 = Math.max(0, (int) (((this.f5321k.f5523x - f8) - f3) / tileWidth));
        Rectangle rectangle4 = this.f5321k;
        int min4 = Math.min(width, (int) ((((rectangle4.f5523x + rectangle4.width) + tileWidth) - f3) / tileWidth));
        int i6 = min3 - 1;
        while (i6 >= max3) {
            if (i6 % 2 == 0) {
                z = true;
            } else {
                z = false;
            }
            if (z == this.f5326t) {
                f = f8;
            } else {
                f = 0.0f;
            }
            int i7 = max4;
            while (i7 < min4) {
                m23942e(tiledMapTileLayer2.getCell(i7, i6), (i7 * tileWidth) + f + renderOffsetX, (i6 * f7) + f3, floatBits);
                i7++;
                tiledMapTileLayer2 = tiledMapTileLayer;
            }
            i6--;
            tiledMapTileLayer2 = tiledMapTileLayer;
        }
    }

    public HexagonalTiledMapRenderer(TiledMap tiledMap, float f) {
        super(tiledMap, f);
        this.f5325s = true;
        this.f5326t = false;
        this.f5327u = 0.0f;
        m23943d(tiledMap);
    }

    public HexagonalTiledMapRenderer(TiledMap tiledMap, Batch batch) {
        super(tiledMap, batch);
        this.f5325s = true;
        this.f5326t = false;
        this.f5327u = 0.0f;
        m23943d(tiledMap);
    }

    public HexagonalTiledMapRenderer(TiledMap tiledMap, float f, Batch batch) {
        super(tiledMap, f, batch);
        this.f5325s = true;
        this.f5326t = false;
        this.f5327u = 0.0f;
        m23943d(tiledMap);
    }
}
