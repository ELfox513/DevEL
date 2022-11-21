package com.prineside.tdi2.utils;

import com.badlogic.gdx.graphics.g2d.Batch;
import com.badlogic.gdx.scenes.scene2d.utils.BaseDrawable;
import com.badlogic.gdx.scenes.scene2d.utils.TransformDrawable;
import com.prineside.tdi2.p036ui.actors.QuadActor;
/* loaded from: classes2.dex */
public class QuadDrawable extends BaseDrawable implements TransformDrawable {

    /* renamed from: h */
    public QuadActor f15135h;

    public QuadDrawable() {
    }

    @Override // com.badlogic.gdx.scenes.scene2d.utils.BaseDrawable, com.badlogic.gdx.scenes.scene2d.utils.Drawable
    public void draw(Batch batch, float f, float f2, float f3, float f4) {
        this.f15135h.setPosition(f, f2);
        this.f15135h.setSize(f3, f4);
        this.f15135h.setColor(batch.getColor());
        this.f15135h.draw(batch, 1.0f);
    }

    public QuadActor getQuadActor() {
        return this.f15135h;
    }

    public QuadDrawable(QuadActor quadActor) {
        setQuadActor(quadActor);
    }

    public void setQuadActor(QuadActor quadActor) {
        this.f15135h = quadActor;
        if (quadActor != null) {
            setMinWidth(quadActor.getMinWidth());
            setMinHeight(quadActor.getMinHeight());
        }
    }

    public QuadDrawable(QuadDrawable quadDrawable) {
        super(quadDrawable);
        setQuadActor(quadDrawable.f15135h);
    }

    @Override // com.badlogic.gdx.scenes.scene2d.utils.TransformDrawable
    public void draw(Batch batch, float f, float f2, float f3, float f4, float f5, float f6, float f7, float f8, float f9) {
        this.f15135h.setPosition(f, f2);
        this.f15135h.setSize(f5, f6);
        this.f15135h.setColor(batch.getColor());
        this.f15135h.draw(batch, 1.0f);
    }
}
