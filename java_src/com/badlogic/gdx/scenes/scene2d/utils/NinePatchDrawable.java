package com.badlogic.gdx.scenes.scene2d.utils;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.Batch;
import com.badlogic.gdx.graphics.g2d.NinePatch;
/* loaded from: classes.dex */
public class NinePatchDrawable extends BaseDrawable implements TransformDrawable {

    /* renamed from: h */
    public NinePatch f6375h;

    public NinePatchDrawable() {
    }

    @Override // com.badlogic.gdx.scenes.scene2d.utils.BaseDrawable, com.badlogic.gdx.scenes.scene2d.utils.Drawable
    public void draw(Batch batch, float f, float f2, float f3, float f4) {
        this.f6375h.draw(batch, f, f2, f3, f4);
    }

    public NinePatch getPatch() {
        return this.f6375h;
    }

    public NinePatchDrawable(NinePatch ninePatch) {
        setPatch(ninePatch);
    }

    @Override // com.badlogic.gdx.scenes.scene2d.utils.TransformDrawable
    public void draw(Batch batch, float f, float f2, float f3, float f4, float f5, float f6, float f7, float f8, float f9) {
        this.f6375h.draw(batch, f, f2, f3, f4, f5, f6, f7, f8, f9);
    }

    public void setPatch(NinePatch ninePatch) {
        this.f6375h = ninePatch;
        if (ninePatch != null) {
            setMinWidth(ninePatch.getTotalWidth());
            setMinHeight(ninePatch.getTotalHeight());
            setTopHeight(ninePatch.getPadTop());
            setRightWidth(ninePatch.getPadRight());
            setBottomHeight(ninePatch.getPadBottom());
            setLeftWidth(ninePatch.getPadLeft());
        }
    }

    public NinePatchDrawable tint(Color color) {
        NinePatchDrawable ninePatchDrawable = new NinePatchDrawable(this);
        ninePatchDrawable.f6375h = new NinePatch(ninePatchDrawable.getPatch(), color);
        return ninePatchDrawable;
    }

    public NinePatchDrawable(NinePatchDrawable ninePatchDrawable) {
        super(ninePatchDrawable);
        this.f6375h = ninePatchDrawable.f6375h;
    }
}
