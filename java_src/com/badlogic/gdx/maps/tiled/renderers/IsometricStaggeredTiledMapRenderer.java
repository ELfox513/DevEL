package com.badlogic.gdx.maps.tiled.renderers;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.Batch;
import com.badlogic.gdx.graphics.g2d.TextureRegion;
import com.badlogic.gdx.maps.tiled.TiledMap;
import com.badlogic.gdx.maps.tiled.TiledMapTile;
import com.badlogic.gdx.maps.tiled.TiledMapTileLayer;
import com.badlogic.gdx.math.Rectangle;
/* loaded from: classes.dex */
public class IsometricStaggeredTiledMapRenderer extends BatchTiledMapRenderer {
    public IsometricStaggeredTiledMapRenderer(TiledMap tiledMap) {
        super(tiledMap);
    }

    public IsometricStaggeredTiledMapRenderer(TiledMap tiledMap, Batch batch) {
        super(tiledMap, batch);
    }

    @Override // com.badlogic.gdx.maps.tiled.TiledMapRenderer
    public void renderTileLayer(TiledMapTileLayer tiledMapTileLayer) {
        float f;
        int i;
        float f2;
        float f3;
        float f4;
        float f5;
        float f6;
        TiledMapTile tile;
        Color color = this.f5320d.getColor();
        float floatBits = Color.toFloatBits(color.f3892r, color.f3891g, color.f3890b, color.f3889a * tiledMapTileLayer.getOpacity());
        int width = tiledMapTileLayer.getWidth();
        int height = tiledMapTileLayer.getHeight();
        float renderOffsetX = tiledMapTileLayer.getRenderOffsetX() * this.f5319b;
        float f7 = (-tiledMapTileLayer.getRenderOffsetY()) * this.f5319b;
        float tileWidth = tiledMapTileLayer.getTileWidth() * this.f5319b;
        float tileHeight = tiledMapTileLayer.getTileHeight() * this.f5319b;
        float f8 = tileWidth * 0.5f;
        float f9 = 0.5f * tileHeight;
        int max = Math.max(0, (int) (((this.f5321k.f5523x - f8) - renderOffsetX) / tileWidth));
        Rectangle rectangle = this.f5321k;
        int min = Math.min(width, (int) (((((rectangle.f5523x + rectangle.width) + tileWidth) + f8) - renderOffsetX) / tileWidth));
        int max2 = Math.max(0, (int) (((this.f5321k.f5524y - tileHeight) - f7) / tileHeight));
        Rectangle rectangle2 = this.f5321k;
        int min2 = Math.min(height, (int) ((((rectangle2.f5524y + rectangle2.height) + tileHeight) - f7) / f9));
        int i2 = 1;
        int i3 = min2 - 1;
        while (i3 >= max2) {
            if (i3 % 2 == i2) {
                f = f8;
            } else {
                f = 0.0f;
            }
            int i4 = min - 1;
            while (i4 >= max) {
                TiledMapTileLayer.Cell cell = tiledMapTileLayer.getCell(i4, i3);
                if (cell != null && (tile = cell.getTile()) != null) {
                    boolean flipHorizontally = cell.getFlipHorizontally();
                    boolean flipVertically = cell.getFlipVertically();
                    int rotation = cell.getRotation();
                    TextureRegion textureRegion = tile.getTextureRegion();
                    i = min;
                    float offsetX = ((i4 * tileWidth) - f) + (tile.getOffsetX() * this.f5319b) + renderOffsetX;
                    f2 = renderOffsetX;
                    float offsetY = (i3 * f9) + (tile.getOffsetY() * this.f5319b) + f7;
                    f3 = f7;
                    float regionWidth = (textureRegion.getRegionWidth() * this.f5319b) + offsetX;
                    f4 = tileWidth;
                    float regionHeight = (textureRegion.getRegionHeight() * this.f5319b) + offsetY;
                    float u = textureRegion.getU();
                    float v2 = textureRegion.getV2();
                    float u2 = textureRegion.getU2();
                    float v = textureRegion.getV();
                    f5 = f9;
                    float[] fArr = this.f5324r;
                    fArr[0] = offsetX;
                    fArr[1] = offsetY;
                    f6 = f8;
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
                                    float f10 = fArr[4];
                                    fArr[4] = fArr[19];
                                    fArr[19] = fArr[14];
                                    fArr[14] = fArr[9];
                                    fArr[9] = f10;
                                    float f11 = fArr[3];
                                    fArr[3] = fArr[18];
                                    fArr[18] = fArr[13];
                                    fArr[13] = fArr[8];
                                    fArr[8] = f11;
                                }
                            } else {
                                float f12 = fArr[3];
                                fArr[3] = fArr[13];
                                fArr[13] = f12;
                                float f13 = fArr[8];
                                fArr[8] = fArr[18];
                                fArr[18] = f13;
                                float f14 = fArr[4];
                                fArr[4] = fArr[14];
                                fArr[14] = f14;
                                float f15 = fArr[9];
                                fArr[9] = fArr[19];
                                fArr[19] = f15;
                            }
                        } else {
                            float f16 = fArr[4];
                            fArr[4] = fArr[9];
                            fArr[9] = fArr[14];
                            fArr[14] = fArr[19];
                            fArr[19] = f16;
                            float f17 = fArr[3];
                            fArr[3] = fArr[8];
                            fArr[8] = fArr[13];
                            fArr[13] = fArr[18];
                            fArr[18] = f17;
                        }
                    }
                    this.f5320d.draw(textureRegion.getTexture(), this.f5324r, 0, 20);
                } else {
                    i = min;
                    f2 = renderOffsetX;
                    f3 = f7;
                    f4 = tileWidth;
                    f5 = f9;
                    f6 = f8;
                }
                i4--;
                f7 = f3;
                renderOffsetX = f2;
                min = i;
                tileWidth = f4;
                f9 = f5;
                f8 = f6;
            }
            i3--;
            i2 = 1;
        }
    }

    public IsometricStaggeredTiledMapRenderer(TiledMap tiledMap, float f) {
        super(tiledMap, f);
    }

    public IsometricStaggeredTiledMapRenderer(TiledMap tiledMap, float f, Batch batch) {
        super(tiledMap, f, batch);
    }
}
