package com.prineside.tdi2.p036ui.actors;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.scenes.scene2d.p033ui.Label;
import com.prineside.tdi2.utils.QuadDrawable;
/* renamed from: com.prineside.tdi2.ui.actors.RectButton */
/* loaded from: classes2.dex */
public class RectButton extends ComplexButton {

    /* renamed from: f0 */
    public final QuadDrawable f12698f0;

    /* renamed from: w */
    public final void m20675w() {
        setBackground(this.f12698f0, 0.0f, 0.0f, getWidth(), getHeight());
        if (!this.f12496Q) {
            setLabel(0.0f, 0.0f, getWidth(), getHeight(), 1);
            this.f12496Q = false;
        }
    }

    public RectButton(CharSequence charSequence, Label.LabelStyle labelStyle, Runnable runnable) {
        super(charSequence, labelStyle, runnable);
        this.f12698f0 = new QuadDrawable(new QuadActor(Color.WHITE, new float[]{0.0f, 0.0f, 0.0f, 1.0f, 1.0f, 1.0f, 1.0f, 0.0f}));
    }

    @Override // com.badlogic.gdx.scenes.scene2d.Actor
    /* renamed from: b */
    public void mo20676b() {
        super.mo20676b();
        m20675w();
    }

    @Override // com.badlogic.gdx.scenes.scene2d.Actor
    public void sizeChanged() {
        super.sizeChanged();
        m20675w();
    }
}
