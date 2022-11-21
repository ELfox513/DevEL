package com.badlogic.gdx.scenes.scene2d.actions;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.utils.Null;
/* loaded from: classes.dex */
public class ColorAction extends TemporalAction {

    /* renamed from: u */
    public float f5706u;

    /* renamed from: v */
    public float f5707v;

    /* renamed from: w */
    public float f5708w;

    /* renamed from: x */
    public float f5709x;
    @Null

    /* renamed from: y */
    public Color f5710y;

    /* renamed from: z */
    public final Color f5711z = new Color();

    @Override // com.badlogic.gdx.scenes.scene2d.actions.TemporalAction
    /* renamed from: c */
    public void mo23848c(float f) {
        if (f == 0.0f) {
            this.f5710y.set(this.f5706u, this.f5707v, this.f5708w, this.f5709x);
        } else if (f == 1.0f) {
            this.f5710y.set(this.f5711z);
        } else {
            float f2 = this.f5706u;
            Color color = this.f5711z;
            float f3 = f2 + ((color.f3892r - f2) * f);
            float f4 = this.f5707v;
            float f5 = f4 + ((color.f3891g - f4) * f);
            float f6 = this.f5708w;
            float f7 = f6 + ((color.f3890b - f6) * f);
            float f8 = this.f5709x;
            this.f5710y.set(f3, f5, f7, f8 + ((color.f3889a - f8) * f));
        }
    }

    @Null
    public Color getColor() {
        return this.f5710y;
    }

    public Color getEndColor() {
        return this.f5711z;
    }

    public void setColor(@Null Color color) {
        this.f5710y = color;
    }

    public void setEndColor(Color color) {
        this.f5711z.set(color);
    }

    @Override // com.badlogic.gdx.scenes.scene2d.actions.TemporalAction
    /* renamed from: a */
    public void mo23850a() {
        if (this.f5710y == null) {
            this.f5710y = this.f5618b.getColor();
        }
        Color color = this.f5710y;
        this.f5706u = color.f3892r;
        this.f5707v = color.f3891g;
        this.f5708w = color.f3890b;
        this.f5709x = color.f3889a;
    }

    @Override // com.badlogic.gdx.scenes.scene2d.actions.TemporalAction, com.badlogic.gdx.scenes.scene2d.Action, com.badlogic.gdx.utils.Pool.Poolable
    public void reset() {
        super.reset();
        this.f5710y = null;
    }
}
