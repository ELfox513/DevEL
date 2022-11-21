package com.badlogic.gdx.maps.tiled.renderers;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.Batch;
import com.badlogic.gdx.graphics.g2d.TextureRegion;
import com.badlogic.gdx.maps.tiled.TiledMap;
import com.badlogic.gdx.maps.tiled.TiledMapTile;
import com.badlogic.gdx.maps.tiled.TiledMapTileLayer;
import com.badlogic.gdx.math.Rectangle;
/* loaded from: classes.dex */
public class OrthogonalTiledMapRenderer extends BatchTiledMapRenderer {
    public OrthogonalTiledMapRenderer(TiledMap tiledMap) {
        super(tiledMap);
    }

    public OrthogonalTiledMapRenderer(TiledMap tiledMap, Batch batch) {
        super(tiledMap, batch);
    }

    @Override // com.badlogic.gdx.maps.tiled.TiledMapRenderer
    public void renderTileLayer(TiledMapTileLayer tiledMapTileLayer) {
        int i;
        float f;
        int i2;
        int i3;
        Color color = this.f5320d.getColor();
        float floatBits = Color.toFloatBits(color.f3892r, color.f3891g, color.f3890b, color.f3889a * tiledMapTileLayer.getOpacity());
        int width = tiledMapTileLayer.getWidth();
        int height = tiledMapTileLayer.getHeight();
        float tileWidth = tiledMapTileLayer.getTileWidth() * this.f5319b;
        float tileHeight = tiledMapTileLayer.getTileHeight() * this.f5319b;
        float renderOffsetX = tiledMapTileLayer.getRenderOffsetX() * this.f5319b;
        float f2 = (-tiledMapTileLayer.getRenderOffsetY()) * this.f5319b;
        int max = Math.max(0, (int) ((this.f5321k.f5523x - renderOffsetX) / tileWidth));
        Rectangle rectangle = this.f5321k;
        int min = Math.min(width, (int) ((((rectangle.f5523x + rectangle.width) + tileWidth) - renderOffsetX) / tileWidth));
        int max2 = Math.max(0, (int) ((this.f5321k.f5524y - f2) / tileHeight));
        Rectangle rectangle2 = this.f5321k;
        int min2 = Math.min(height, (int) ((((rectangle2.f5524y + rectangle2.height) + tileHeight) - f2) / tileHeight));
        float f3 = (min2 * tileHeight) + f2;
        float f4 = (max * tileWidth) + renderOffsetX;
        float[] fArr = this.f5324r;
        while (min2 >= max2) {
            float f5 = f4;
            int i4 = max;
            while (i4 < min) {
                TiledMapTileLayer.Cell cell = tiledMapTileLayer.getCell(i4, min2);
                if (cell == null) {
                    f5 += tileWidth;
                    i = min;
                    f = f4;
                    i2 = max;
                    i3 = max2;
                } else {
                    TiledMapTile tile = cell.getTile();
                    if (tile != null) {
                        boolean flipHorizontally = cell.getFlipHorizontally();
                        boolean flipVertically = cell.getFlipVertically();
                        int rotation = cell.getRotation();
                        TextureRegion textureRegion = tile.getTextureRegion();
                        float offsetX = f5 + (tile.getOffsetX() * this.f5319b);
                        float offsetY = tile.getOffsetY();
                        i = min;
                        float f6 = (offsetY * this.f5319b) + f3;
                        f = f4;
                        float regionWidth = offsetX + (textureRegion.getRegionWidth() * this.f5319b);
                        i2 = max;
                        float regionHeight = (textureRegion.getRegionHeight() * this.f5319b) + f6;
                        float u = textureRegion.getU();
                        float v2 = textureRegion.getV2();
                        float u2 = textureRegion.getU2();
                        float v = textureRegion.getV();
                        fArr[0] = offsetX;
                        i3 = max2;
                        fArr[1] = f6;
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
                        fArr[16] = f6;
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
                                        float f7 = fArr[4];
                                        fArr[4] = fArr[19];
                                        fArr[19] = fArr[14];
                                        fArr[14] = fArr[9];
                                        fArr[9] = f7;
                                        float f8 = fArr[3];
                                        fArr[3] = fArr[18];
                                        fArr[18] = fArr[13];
                                        fArr[13] = fArr[8];
                                        fArr[8] = f8;
                                    }
                                } else {
                                    float f9 = fArr[3];
                                    fArr[3] = fArr[13];
                                    fArr[13] = f9;
                                    float f10 = fArr[8];
                                    fArr[8] = fArr[18];
                                    fArr[18] = f10;
                                    float f11 = fArr[4];
                                    fArr[4] = fArr[14];
                                    fArr[14] = f11;
                                    float f12 = fArr[9];
                                    fArr[9] = fArr[19];
                                    fArr[19] = f12;
                                }
                            } else {
                                float f13 = fArr[4];
                                fArr[4] = fArr[9];
                                fArr[9] = fArr[14];
                                fArr[14] = fArr[19];
                                fArr[19] = f13;
                                float f14 = fArr[3];
                                fArr[3] = fArr[8];
                                fArr[8] = fArr[13];
                                fArr[13] = fArr[18];
                                fArr[18] = f14;
                            }
                        }
                        this.f5320d.draw(textureRegion.getTexture(), fArr, 0, 20);
                    } else {
                        i = min;
                        f = f4;
                        i2 = max;
                        i3 = max2;
                    }
                    f5 += tileWidth;
                }
                i4++;
                min = i;
                f4 = f;
                max = i2;
                max2 = i3;
            }
            f3 -= tileHeight;
            min2--;
        }
    }

    public OrthogonalTiledMapRenderer(TiledMap tiledMap, float f) {
        super(tiledMap, f);
    }

    public OrthogonalTiledMapRenderer(TiledMap tiledMap, float f, Batch batch) {
        super(tiledMap, f, batch);
    }
}
