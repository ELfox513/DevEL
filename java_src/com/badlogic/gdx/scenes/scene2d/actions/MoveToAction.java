package com.badlogic.gdx.scenes.scene2d.actions;
/* loaded from: classes.dex */
public class MoveToAction extends TemporalAction {

    /* renamed from: u */
    public float f5731u;

    /* renamed from: v */
    public float f5732v;

    /* renamed from: w */
    public float f5733w;

    /* renamed from: x */
    public float f5734x;

    /* renamed from: y */
    public int f5735y = 12;

    @Override // com.badlogic.gdx.scenes.scene2d.actions.TemporalAction
    /* renamed from: c */
    public void mo23848c(float f) {
        float f2;
        float f3;
        if (f == 0.0f) {
            f3 = this.f5731u;
            f2 = this.f5732v;
        } else if (f == 1.0f) {
            f3 = this.f5733w;
            f2 = this.f5734x;
        } else {
            float f4 = this.f5731u;
            float f5 = f4 + ((this.f5733w - f4) * f);
            float f6 = this.f5732v;
            f2 = f6 + ((this.f5734x - f6) * f);
            f3 = f5;
        }
        this.f5618b.setPosition(f3, f2, this.f5735y);
    }

    public int getAlignment() {
        return this.f5735y;
    }

    public float getStartX() {
        return this.f5731u;
    }

    public float getStartY() {
        return this.f5732v;
    }

    public float getX() {
        return this.f5733w;
    }

    public float getY() {
        return this.f5734x;
    }

    public void setAlignment(int i) {
        this.f5735y = i;
    }

    public void setPosition(float f, float f2) {
        this.f5733w = f;
        this.f5734x = f2;
    }

    public void setX(float f) {
        this.f5733w = f;
    }

    public void setY(float f) {
        this.f5734x = f;
    }

    @Override // com.badlogic.gdx.scenes.scene2d.actions.TemporalAction
    /* renamed from: a */
    public void mo23850a() {
        this.f5731u = this.f5618b.getX(this.f5735y);
        this.f5732v = this.f5618b.getY(this.f5735y);
    }

    public void setStartPosition(float f, float f2) {
        this.f5731u = f;
        this.f5732v = f2;
    }

    @Override // com.badlogic.gdx.scenes.scene2d.actions.TemporalAction, com.badlogic.gdx.scenes.scene2d.Action, com.badlogic.gdx.utils.Pool.Poolable
    public void reset() {
        super.reset();
        this.f5735y = 12;
    }

    public void setPosition(float f, float f2, int i) {
        this.f5733w = f;
        this.f5734x = f2;
        this.f5735y = i;
    }
}
