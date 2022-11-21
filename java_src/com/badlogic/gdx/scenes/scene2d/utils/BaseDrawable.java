package com.badlogic.gdx.scenes.scene2d.utils;

import com.badlogic.gdx.graphics.g2d.Batch;
import com.badlogic.gdx.utils.Null;
import com.badlogic.gdx.utils.reflect.ClassReflection;
/* loaded from: classes.dex */
public class BaseDrawable implements Drawable {
    @Null

    /* renamed from: a */
    public String f6292a;

    /* renamed from: b */
    public float f6293b;

    /* renamed from: c */
    public float f6294c;

    /* renamed from: d */
    public float f6295d;

    /* renamed from: e */
    public float f6296e;

    /* renamed from: f */
    public float f6297f;

    /* renamed from: g */
    public float f6298g;

    public BaseDrawable() {
    }

    @Override // com.badlogic.gdx.scenes.scene2d.utils.Drawable
    public void draw(Batch batch, float f, float f2, float f3, float f4) {
    }

    @Override // com.badlogic.gdx.scenes.scene2d.utils.Drawable
    public float getBottomHeight() {
        return this.f6296e;
    }

    @Override // com.badlogic.gdx.scenes.scene2d.utils.Drawable
    public float getLeftWidth() {
        return this.f6293b;
    }

    @Override // com.badlogic.gdx.scenes.scene2d.utils.Drawable
    public float getMinHeight() {
        return this.f6298g;
    }

    @Override // com.badlogic.gdx.scenes.scene2d.utils.Drawable
    public float getMinWidth() {
        return this.f6297f;
    }

    @Null
    public String getName() {
        return this.f6292a;
    }

    @Override // com.badlogic.gdx.scenes.scene2d.utils.Drawable
    public float getRightWidth() {
        return this.f6294c;
    }

    @Override // com.badlogic.gdx.scenes.scene2d.utils.Drawable
    public float getTopHeight() {
        return this.f6295d;
    }

    @Override // com.badlogic.gdx.scenes.scene2d.utils.Drawable
    public void setBottomHeight(float f) {
        this.f6296e = f;
    }

    @Override // com.badlogic.gdx.scenes.scene2d.utils.Drawable
    public void setLeftWidth(float f) {
        this.f6293b = f;
    }

    @Override // com.badlogic.gdx.scenes.scene2d.utils.Drawable
    public void setMinHeight(float f) {
        this.f6298g = f;
    }

    @Override // com.badlogic.gdx.scenes.scene2d.utils.Drawable
    public void setMinWidth(float f) {
        this.f6297f = f;
    }

    public void setName(@Null String str) {
        this.f6292a = str;
    }

    @Override // com.badlogic.gdx.scenes.scene2d.utils.Drawable
    public void setRightWidth(float f) {
        this.f6294c = f;
    }

    @Override // com.badlogic.gdx.scenes.scene2d.utils.Drawable
    public void setTopHeight(float f) {
        this.f6295d = f;
    }

    @Null
    public String toString() {
        String str = this.f6292a;
        return str == null ? ClassReflection.getSimpleName(getClass()) : str;
    }

    public BaseDrawable(Drawable drawable) {
        if (drawable instanceof BaseDrawable) {
            this.f6292a = ((BaseDrawable) drawable).getName();
        }
        this.f6293b = drawable.getLeftWidth();
        this.f6294c = drawable.getRightWidth();
        this.f6295d = drawable.getTopHeight();
        this.f6296e = drawable.getBottomHeight();
        this.f6297f = drawable.getMinWidth();
        this.f6298g = drawable.getMinHeight();
    }

    public void setMinSize(float f, float f2) {
        setMinWidth(f);
        setMinHeight(f2);
    }

    public void setPadding(float f, float f2, float f3, float f4) {
        setTopHeight(f);
        setLeftWidth(f2);
        setBottomHeight(f3);
        setRightWidth(f4);
    }
}
