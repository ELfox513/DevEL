package com.badlogic.gdx.scenes.scene2d.p033ui;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.Texture;
import com.badlogic.gdx.graphics.g2d.Batch;
import com.badlogic.gdx.graphics.g2d.NinePatch;
import com.badlogic.gdx.graphics.g2d.TextureRegion;
import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.scenes.scene2d.utils.Drawable;
import com.badlogic.gdx.scenes.scene2d.utils.NinePatchDrawable;
import com.badlogic.gdx.scenes.scene2d.utils.TextureRegionDrawable;
import com.badlogic.gdx.scenes.scene2d.utils.TransformDrawable;
import com.badlogic.gdx.utils.Null;
import com.badlogic.gdx.utils.Scaling;
/* renamed from: com.badlogic.gdx.scenes.scene2d.ui.Image */
/* loaded from: classes.dex */
public class Image extends Widget {

    /* renamed from: I */
    public Scaling f5890I;

    /* renamed from: J */
    public int f5891J;

    /* renamed from: K */
    public float f5892K;

    /* renamed from: L */
    public float f5893L;

    /* renamed from: M */
    public float f5894M;

    /* renamed from: N */
    public float f5895N;

    /* renamed from: O */
    public Drawable f5896O;

    public Image() {
        this((Drawable) null);
    }

    public int getAlign() {
        return this.f5891J;
    }

    @Null
    public Drawable getDrawable() {
        return this.f5896O;
    }

    public float getImageHeight() {
        return this.f5895N;
    }

    public float getImageWidth() {
        return this.f5894M;
    }

    public float getImageX() {
        return this.f5892K;
    }

    public float getImageY() {
        return this.f5893L;
    }

    @Override // com.badlogic.gdx.scenes.scene2d.p033ui.Widget, com.badlogic.gdx.scenes.scene2d.utils.Layout
    public float getMinHeight() {
        return 0.0f;
    }

    @Override // com.badlogic.gdx.scenes.scene2d.p033ui.Widget, com.badlogic.gdx.scenes.scene2d.utils.Layout
    public float getMinWidth() {
        return 0.0f;
    }

    @Override // com.badlogic.gdx.scenes.scene2d.p033ui.Widget, com.badlogic.gdx.scenes.scene2d.utils.Layout
    public float getPrefHeight() {
        Drawable drawable = this.f5896O;
        if (drawable != null) {
            return drawable.getMinHeight();
        }
        return 0.0f;
    }

    @Override // com.badlogic.gdx.scenes.scene2d.p033ui.Widget, com.badlogic.gdx.scenes.scene2d.utils.Layout
    public float getPrefWidth() {
        Drawable drawable = this.f5896O;
        if (drawable != null) {
            return drawable.getMinWidth();
        }
        return 0.0f;
    }

    public void setDrawable(Skin skin, String str) {
        setDrawable(skin.getDrawable(str));
    }

    public Image(@Null NinePatch ninePatch) {
        this(new NinePatchDrawable(ninePatch), Scaling.stretch, 1);
    }

    @Override // com.badlogic.gdx.scenes.scene2d.p033ui.Widget, com.badlogic.gdx.scenes.scene2d.Actor
    public void draw(Batch batch, float f) {
        validate();
        Color color = getColor();
        batch.setColor(color.f3892r, color.f3891g, color.f3890b, color.f3889a * f);
        float x = getX();
        float y = getY();
        float scaleX = getScaleX();
        float scaleY = getScaleY();
        if (this.f5896O instanceof TransformDrawable) {
            float rotation = getRotation();
            if (scaleX != 1.0f || scaleY != 1.0f || rotation != 0.0f) {
                ((TransformDrawable) this.f5896O).draw(batch, x + this.f5892K, y + this.f5893L, getOriginX() - this.f5892K, getOriginY() - this.f5893L, this.f5894M, this.f5895N, scaleX, scaleY, rotation);
                return;
            }
        }
        Drawable drawable = this.f5896O;
        if (drawable != null) {
            drawable.draw(batch, x + this.f5892K, y + this.f5893L, this.f5894M * scaleX, this.f5895N * scaleY);
        }
    }

    @Override // com.badlogic.gdx.scenes.scene2d.p033ui.Widget, com.badlogic.gdx.scenes.scene2d.utils.Layout
    public void layout() {
        Drawable drawable = this.f5896O;
        if (drawable == null) {
            return;
        }
        float minWidth = drawable.getMinWidth();
        float minHeight = this.f5896O.getMinHeight();
        float width = getWidth();
        float height = getHeight();
        Vector2 apply = this.f5890I.apply(minWidth, minHeight, width, height);
        float f = apply.f5527x;
        this.f5894M = f;
        float f2 = apply.f5528y;
        this.f5895N = f2;
        int i = this.f5891J;
        if ((i & 8) != 0) {
            this.f5892K = 0.0f;
        } else if ((i & 16) != 0) {
            this.f5892K = (int) (width - f);
        } else {
            this.f5892K = (int) ((width / 2.0f) - (f / 2.0f));
        }
        if ((i & 2) != 0) {
            this.f5893L = (int) (height - f2);
        } else if ((i & 4) != 0) {
            this.f5893L = 0.0f;
        } else {
            this.f5893L = (int) ((height / 2.0f) - (f2 / 2.0f));
        }
    }

    public void setAlign(int i) {
        this.f5891J = i;
        invalidate();
    }

    public void setDrawable(@Null Drawable drawable) {
        if (this.f5896O == drawable) {
            return;
        }
        if (drawable != null) {
            if (getPrefWidth() != drawable.getMinWidth() || getPrefHeight() != drawable.getMinHeight()) {
                invalidateHierarchy();
            }
        } else {
            invalidateHierarchy();
        }
        this.f5896O = drawable;
    }

    public void setScaling(Scaling scaling) {
        if (scaling != null) {
            this.f5890I = scaling;
            invalidate();
            return;
        }
        throw new IllegalArgumentException("scaling cannot be null.");
    }

    public Image(@Null TextureRegion textureRegion) {
        this(new TextureRegionDrawable(textureRegion), Scaling.stretch, 1);
    }

    @Override // com.badlogic.gdx.scenes.scene2d.Actor
    public String toString() {
        String str;
        String name = getName();
        if (name != null) {
            return name;
        }
        String name2 = getClass().getName();
        int lastIndexOf = name2.lastIndexOf(46);
        if (lastIndexOf != -1) {
            name2 = name2.substring(lastIndexOf + 1);
        }
        StringBuilder sb = new StringBuilder();
        if (name2.indexOf(36) != -1) {
            str = "Image ";
        } else {
            str = "";
        }
        sb.append(str);
        sb.append(name2);
        sb.append(": ");
        sb.append(this.f5896O);
        return sb.toString();
    }

    public Image(Texture texture) {
        this(new TextureRegionDrawable(new TextureRegion(texture)));
    }

    public Image(Skin skin, String str) {
        this(skin.getDrawable(str), Scaling.stretch, 1);
    }

    public Image(@Null Drawable drawable) {
        this(drawable, Scaling.stretch, 1);
    }

    public Image(@Null Drawable drawable, Scaling scaling) {
        this(drawable, scaling, 1);
    }

    public Image(@Null Drawable drawable, Scaling scaling, int i) {
        this.f5891J = 1;
        setDrawable(drawable);
        this.f5890I = scaling;
        this.f5891J = i;
        setSize(getPrefWidth(), getPrefHeight());
    }
}
