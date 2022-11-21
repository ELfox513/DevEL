package com.badlogic.gdx.scenes.scene2d.p033ui;

import com.badlogic.gdx.graphics.glutils.ShapeRenderer;
import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.Touchable;
import com.badlogic.gdx.scenes.scene2d.utils.Layout;
import com.badlogic.gdx.utils.FloatArray;
import com.badlogic.gdx.utils.SnapshotArray;
/* renamed from: com.badlogic.gdx.scenes.scene2d.ui.VerticalGroup */
/* loaded from: classes.dex */
public class VerticalGroup extends WidgetGroup {

    /* renamed from: P */
    public float f6233P;

    /* renamed from: Q */
    public float f6234Q;

    /* renamed from: R */
    public float f6235R;

    /* renamed from: T */
    public FloatArray f6237T;

    /* renamed from: V */
    public int f6239V;

    /* renamed from: W */
    public boolean f6240W;

    /* renamed from: Y */
    public boolean f6242Y;

    /* renamed from: Z */
    public boolean f6243Z;

    /* renamed from: a0 */
    public float f6244a0;

    /* renamed from: b0 */
    public float f6245b0;

    /* renamed from: c0 */
    public float f6246c0;

    /* renamed from: d0 */
    public float f6247d0;

    /* renamed from: e0 */
    public float f6248e0;

    /* renamed from: f0 */
    public float f6249f0;

    /* renamed from: g0 */
    public float f6250g0;

    /* renamed from: S */
    public boolean f6236S = true;

    /* renamed from: U */
    public int f6238U = 2;

    /* renamed from: X */
    public boolean f6241X = true;

    public VerticalGroup align(int i) {
        this.f6238U = i;
        return this;
    }

    public VerticalGroup center() {
        this.f6238U = 1;
        return this;
    }

    public VerticalGroup columnAlign(int i) {
        this.f6239V = i;
        return this;
    }

    public VerticalGroup columnCenter() {
        this.f6239V = 1;
        return this;
    }

    public VerticalGroup expand() {
        this.f6243Z = true;
        return this;
    }

    public VerticalGroup fill() {
        this.f6246c0 = 1.0f;
        return this;
    }

    public int getAlign() {
        return this.f6238U;
    }

    public int getColumns() {
        if (this.f6242Y) {
            return this.f6237T.size >> 1;
        }
        return 1;
    }

    public boolean getExpand() {
        return this.f6243Z;
    }

    public float getFill() {
        return this.f6246c0;
    }

    public float getPadBottom() {
        return this.f6249f0;
    }

    public float getPadLeft() {
        return this.f6248e0;
    }

    public float getPadRight() {
        return this.f6250g0;
    }

    public float getPadTop() {
        return this.f6247d0;
    }

    public boolean getReverse() {
        return this.f6240W;
    }

    public float getSpace() {
        return this.f6244a0;
    }

    public boolean getWrap() {
        return this.f6242Y;
    }

    public float getWrapSpace() {
        return this.f6245b0;
    }

    public VerticalGroup grow() {
        this.f6243Z = true;
        this.f6246c0 = 1.0f;
        return this;
    }

    public VerticalGroup pad(float f) {
        this.f6247d0 = f;
        this.f6248e0 = f;
        this.f6249f0 = f;
        this.f6250g0 = f;
        return this;
    }

    public VerticalGroup padBottom(float f) {
        this.f6249f0 = f;
        return this;
    }

    public VerticalGroup padLeft(float f) {
        this.f6248e0 = f;
        return this;
    }

    public VerticalGroup padRight(float f) {
        this.f6250g0 = f;
        return this;
    }

    public VerticalGroup padTop(float f) {
        this.f6247d0 = f;
        return this;
    }

    public VerticalGroup reverse() {
        this.f6240W = true;
        return this;
    }

    public void setRound(boolean z) {
        this.f6241X = z;
    }

    public VerticalGroup space(float f) {
        this.f6244a0 = f;
        return this;
    }

    public VerticalGroup wrap() {
        this.f6242Y = true;
        return this;
    }

    public VerticalGroup wrapSpace(float f) {
        this.f6245b0 = f;
        return this;
    }

    public VerticalGroup bottom() {
        this.f6238U = (this.f6238U | 4) & (-3);
        return this;
    }

    public VerticalGroup columnBottom() {
        this.f6239V = (this.f6239V | 4) & (-3);
        return this;
    }

    public VerticalGroup columnLeft() {
        this.f6239V = (this.f6239V | 8) & (-17);
        return this;
    }

    public VerticalGroup columnRight() {
        this.f6239V = (this.f6239V | 16) & (-9);
        return this;
    }

    public VerticalGroup columnTop() {
        this.f6239V = (this.f6239V | 2) & (-5);
        return this;
    }

    public VerticalGroup expand(boolean z) {
        this.f6243Z = z;
        return this;
    }

    public VerticalGroup fill(float f) {
        this.f6246c0 = f;
        return this;
    }

    @Override // com.badlogic.gdx.scenes.scene2d.p033ui.WidgetGroup, com.badlogic.gdx.scenes.scene2d.utils.Layout
    public float getPrefHeight() {
        if (this.f6242Y) {
            return 0.0f;
        }
        if (this.f6236S) {
            m23711q();
        }
        return this.f6234Q;
    }

    @Override // com.badlogic.gdx.scenes.scene2d.p033ui.WidgetGroup, com.badlogic.gdx.scenes.scene2d.utils.Layout
    public float getPrefWidth() {
        if (this.f6236S) {
            m23711q();
        }
        return this.f6233P;
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0051  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0078  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x007c  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x007f  */
    @Override // com.badlogic.gdx.scenes.scene2d.p033ui.WidgetGroup, com.badlogic.gdx.scenes.scene2d.utils.Layout
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void layout() {
        /*
            Method dump skipped, instructions count: 272
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.badlogic.gdx.scenes.scene2d.p033ui.VerticalGroup.layout():void");
    }

    public VerticalGroup left() {
        this.f6238U = (this.f6238U | 8) & (-17);
        return this;
    }

    /* renamed from: q */
    public final void m23711q() {
        float f;
        float width;
        float height;
        float f2;
        int i = 0;
        this.f6236S = false;
        SnapshotArray<Actor> children = getChildren();
        int i2 = children.size;
        this.f6233P = 0.0f;
        if (this.f6242Y) {
            this.f6234Q = 0.0f;
            FloatArray floatArray = this.f6237T;
            if (floatArray == null) {
                this.f6237T = new FloatArray();
            } else {
                floatArray.clear();
            }
            FloatArray floatArray2 = this.f6237T;
            float f3 = this.f6244a0;
            float f4 = this.f6245b0;
            float f5 = this.f6247d0 + this.f6249f0;
            float height2 = getHeight() - f5;
            int i3 = -1;
            if (this.f6240W) {
                i = i2 - 1;
                i2 = -1;
            } else {
                i3 = 1;
            }
            float f6 = 0.0f;
            float f7 = 0.0f;
            float f8 = 0.0f;
            while (i != i2) {
                Actor actor = children.get(i);
                if (actor instanceof Layout) {
                    Layout layout = (Layout) actor;
                    width = layout.getPrefWidth();
                    height = layout.getPrefHeight();
                    if (height > height2) {
                        height = Math.max(height2, layout.getMinHeight());
                    }
                } else {
                    width = actor.getWidth();
                    height = actor.getHeight();
                }
                if (f6 > 0.0f) {
                    f2 = f3;
                } else {
                    f2 = 0.0f;
                }
                float f9 = height + f2;
                if (f6 + f9 > height2 && f6 > 0.0f) {
                    floatArray2.add(f6);
                    floatArray2.add(f7);
                    this.f6234Q = Math.max(this.f6234Q, f6 + f5);
                    if (f8 > 0.0f) {
                        f8 += f4;
                    }
                    f8 += f7;
                    f6 = 0.0f;
                    f7 = 0.0f;
                } else {
                    height = f9;
                }
                f6 += height;
                f7 = Math.max(f7, width);
                i += i3;
            }
            floatArray2.add(f6);
            floatArray2.add(f7);
            this.f6234Q = Math.max(this.f6234Q, f6 + f5);
            if (f8 > 0.0f) {
                f8 += f4;
            }
            this.f6233P = Math.max(this.f6233P, f8 + f7);
        } else {
            this.f6234Q = this.f6247d0 + this.f6249f0 + (this.f6244a0 * (i2 - 1));
            while (i < i2) {
                Actor actor2 = children.get(i);
                if (actor2 instanceof Layout) {
                    Layout layout2 = (Layout) actor2;
                    this.f6233P = Math.max(this.f6233P, layout2.getPrefWidth());
                    this.f6234Q += layout2.getPrefHeight();
                } else {
                    this.f6233P = Math.max(this.f6233P, actor2.getWidth());
                    this.f6234Q += actor2.getHeight();
                }
                i++;
            }
        }
        this.f6233P = this.f6233P + this.f6248e0 + this.f6250g0;
        if (this.f6241X) {
            this.f6233P = Math.round(f);
            this.f6234Q = Math.round(this.f6234Q);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x004b  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0051  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x006f  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0073  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0080  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00f8  */
    /* renamed from: r */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m23710r() {
        /*
            Method dump skipped, instructions count: 378
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.badlogic.gdx.scenes.scene2d.p033ui.VerticalGroup.m23710r():void");
    }

    public VerticalGroup reverse(boolean z) {
        this.f6240W = z;
        return this;
    }

    public VerticalGroup right() {
        this.f6238U = (this.f6238U | 16) & (-9);
        return this;
    }

    public VerticalGroup top() {
        this.f6238U = (this.f6238U | 2) & (-5);
        return this;
    }

    public VerticalGroup wrap(boolean z) {
        this.f6242Y = z;
        return this;
    }

    public VerticalGroup() {
        setTouchable(Touchable.childrenOnly);
    }

    @Override // com.badlogic.gdx.scenes.scene2d.Actor
    /* renamed from: a */
    public void mo23712a(ShapeRenderer shapeRenderer) {
        super.mo23712a(shapeRenderer);
        if (!getDebug()) {
            return;
        }
        shapeRenderer.set(ShapeRenderer.ShapeType.Line);
        if (getStage() != null) {
            shapeRenderer.setColor(getStage().getDebugColor());
        }
        shapeRenderer.rect(getX() + this.f6248e0, getY() + this.f6249f0, getOriginX(), getOriginY(), (getWidth() - this.f6248e0) - this.f6250g0, (getHeight() - this.f6249f0) - this.f6247d0, getScaleX(), getScaleY(), getRotation());
    }

    @Override // com.badlogic.gdx.scenes.scene2d.p033ui.WidgetGroup, com.badlogic.gdx.scenes.scene2d.utils.Layout
    public void invalidate() {
        super.invalidate();
        this.f6236S = true;
    }

    public VerticalGroup pad(float f, float f2, float f3, float f4) {
        this.f6247d0 = f;
        this.f6248e0 = f2;
        this.f6249f0 = f3;
        this.f6250g0 = f4;
        return this;
    }
}
