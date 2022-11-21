package com.badlogic.gdx.scenes.scene2d.actions;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.utils.Null;
/* loaded from: classes.dex */
public class AlphaAction extends TemporalAction {

    /* renamed from: u */
    public float f5703u;

    /* renamed from: v */
    public float f5704v;
    @Null

    /* renamed from: w */
    public Color f5705w;

    @Override // com.badlogic.gdx.scenes.scene2d.actions.TemporalAction
    /* renamed from: c */
    public void mo23848c(float f) {
        if (f == 0.0f) {
            this.f5705w.f3889a = this.f5703u;
        } else if (f == 1.0f) {
            this.f5705w.f3889a = this.f5704v;
        } else {
            Color color = this.f5705w;
            float f2 = this.f5703u;
            color.f3889a = f2 + ((this.f5704v - f2) * f);
        }
    }

    public float getAlpha() {
        return this.f5704v;
    }

    @Null
    public Color getColor() {
        return this.f5705w;
    }

    public void setAlpha(float f) {
        this.f5704v = f;
    }

    public void setColor(@Null Color color) {
        this.f5705w = color;
    }

    @Override // com.badlogic.gdx.scenes.scene2d.actions.TemporalAction
    /* renamed from: a */
    public void mo23850a() {
        if (this.f5705w == null) {
            this.f5705w = this.f5618b.getColor();
        }
        this.f5703u = this.f5705w.f3889a;
    }

    @Override // com.badlogic.gdx.scenes.scene2d.actions.TemporalAction, com.badlogic.gdx.scenes.scene2d.Action, com.badlogic.gdx.utils.Pool.Poolable
    public void reset() {
        super.reset();
        this.f5705w = null;
    }
}
