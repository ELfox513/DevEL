package com.badlogic.gdx.scenes.scene2d.p033ui;

import com.badlogic.gdx.graphics.glutils.ShapeRenderer;
import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.Touchable;
import com.badlogic.gdx.scenes.scene2d.utils.Layout;
import com.badlogic.gdx.utils.FloatArray;
import com.badlogic.gdx.utils.SnapshotArray;
/* renamed from: com.badlogic.gdx.scenes.scene2d.ui.HorizontalGroup */
/* loaded from: classes.dex */
public class HorizontalGroup extends WidgetGroup {

    /* renamed from: P */
    public float f5871P;

    /* renamed from: Q */
    public float f5872Q;

    /* renamed from: R */
    public float f5873R;

    /* renamed from: T */
    public FloatArray f5875T;

    /* renamed from: V */
    public int f5877V;

    /* renamed from: W */
    public boolean f5878W;

    /* renamed from: Y */
    public boolean f5880Y;

    /* renamed from: Z */
    public boolean f5881Z;

    /* renamed from: a0 */
    public boolean f5882a0;

    /* renamed from: b0 */
    public float f5883b0;

    /* renamed from: c0 */
    public float f5884c0;

    /* renamed from: d0 */
    public float f5885d0;

    /* renamed from: e0 */
    public float f5886e0;

    /* renamed from: f0 */
    public float f5887f0;

    /* renamed from: g0 */
    public float f5888g0;

    /* renamed from: h0 */
    public float f5889h0;

    /* renamed from: S */
    public boolean f5874S = true;

    /* renamed from: U */
    public int f5876U = 8;

    /* renamed from: X */
    public boolean f5879X = true;

    public HorizontalGroup align(int i) {
        this.f5876U = i;
        return this;
    }

    public HorizontalGroup center() {
        this.f5876U = 1;
        return this;
    }

    public HorizontalGroup expand() {
        this.f5882a0 = true;
        return this;
    }

    public HorizontalGroup fill() {
        this.f5885d0 = 1.0f;
        return this;
    }

    public int getAlign() {
        return this.f5876U;
    }

    public boolean getExpand() {
        return this.f5882a0;
    }

    public float getFill() {
        return this.f5885d0;
    }

    public float getPadBottom() {
        return this.f5888g0;
    }

    public float getPadLeft() {
        return this.f5887f0;
    }

    public float getPadRight() {
        return this.f5889h0;
    }

    public float getPadTop() {
        return this.f5886e0;
    }

    public boolean getReverse() {
        return this.f5878W;
    }

    public int getRows() {
        if (this.f5880Y) {
            return this.f5875T.size >> 1;
        }
        return 1;
    }

    public float getSpace() {
        return this.f5883b0;
    }

    public boolean getWrap() {
        return this.f5880Y;
    }

    public boolean getWrapReverse() {
        return this.f5881Z;
    }

    public float getWrapSpace() {
        return this.f5884c0;
    }

    public HorizontalGroup grow() {
        this.f5882a0 = true;
        this.f5885d0 = 1.0f;
        return this;
    }

    public HorizontalGroup pad(float f) {
        this.f5886e0 = f;
        this.f5887f0 = f;
        this.f5888g0 = f;
        this.f5889h0 = f;
        return this;
    }

    public HorizontalGroup padBottom(float f) {
        this.f5888g0 = f;
        return this;
    }

    public HorizontalGroup padLeft(float f) {
        this.f5887f0 = f;
        return this;
    }

    public HorizontalGroup padRight(float f) {
        this.f5889h0 = f;
        return this;
    }

    public HorizontalGroup padTop(float f) {
        this.f5886e0 = f;
        return this;
    }

    public HorizontalGroup reverse() {
        this.f5878W = true;
        return this;
    }

    public HorizontalGroup rowAlign(int i) {
        this.f5877V = i;
        return this;
    }

    public HorizontalGroup rowCenter() {
        this.f5877V = 1;
        return this;
    }

    public void setRound(boolean z) {
        this.f5879X = z;
    }

    public HorizontalGroup space(float f) {
        this.f5883b0 = f;
        return this;
    }

    public HorizontalGroup wrap() {
        this.f5880Y = true;
        return this;
    }

    public HorizontalGroup wrapReverse() {
        this.f5881Z = true;
        return this;
    }

    public HorizontalGroup wrapSpace(float f) {
        this.f5884c0 = f;
        return this;
    }

    public HorizontalGroup bottom() {
        this.f5876U = (this.f5876U | 4) & (-3);
        return this;
    }

    public HorizontalGroup expand(boolean z) {
        this.f5882a0 = z;
        return this;
    }

    public HorizontalGroup fill(float f) {
        this.f5885d0 = f;
        return this;
    }

    @Override // com.badlogic.gdx.scenes.scene2d.p033ui.WidgetGroup, com.badlogic.gdx.scenes.scene2d.utils.Layout
    public float getPrefHeight() {
        if (this.f5874S) {
            m23834q();
        }
        return this.f5872Q;
    }

    @Override // com.badlogic.gdx.scenes.scene2d.p033ui.WidgetGroup, com.badlogic.gdx.scenes.scene2d.utils.Layout
    public float getPrefWidth() {
        if (this.f5880Y) {
            return 0.0f;
        }
        if (this.f5874S) {
            m23834q();
        }
        return this.f5871P;
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x004d  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0074  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0078  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x007b  */
    @Override // com.badlogic.gdx.scenes.scene2d.p033ui.WidgetGroup, com.badlogic.gdx.scenes.scene2d.utils.Layout
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void layout() {
        /*
            Method dump skipped, instructions count: 268
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.badlogic.gdx.scenes.scene2d.p033ui.HorizontalGroup.layout():void");
    }

    public HorizontalGroup left() {
        this.f5876U = (this.f5876U | 8) & (-17);
        return this;
    }

    /* renamed from: q */
    public final void m23834q() {
        float width;
        float height;
        float f;
        int i = 0;
        this.f5874S = false;
        SnapshotArray<Actor> children = getChildren();
        int i2 = children.size;
        float f2 = 0.0f;
        this.f5872Q = 0.0f;
        if (this.f5880Y) {
            this.f5871P = 0.0f;
            FloatArray floatArray = this.f5875T;
            if (floatArray == null) {
                this.f5875T = new FloatArray();
            } else {
                floatArray.clear();
            }
            FloatArray floatArray2 = this.f5875T;
            float f3 = this.f5883b0;
            float f4 = this.f5884c0;
            float f5 = this.f5887f0 + this.f5889h0;
            float width2 = getWidth() - f5;
            int i3 = -1;
            if (this.f5878W) {
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
                    if (width > width2) {
                        width = Math.max(width2, layout.getMinWidth());
                    }
                    height = layout.getPrefHeight();
                } else {
                    width = actor.getWidth();
                    height = actor.getHeight();
                }
                if (f6 > f2) {
                    f = f3;
                } else {
                    f = 0.0f;
                }
                float f9 = width + f;
                if (f6 + f9 > width2 && f6 > f2) {
                    floatArray2.add(f6);
                    floatArray2.add(f7);
                    this.f5871P = Math.max(this.f5871P, f6 + f5);
                    if (f8 > 0.0f) {
                        f8 += f4;
                    }
                    f8 += f7;
                    f6 = 0.0f;
                    f7 = 0.0f;
                } else {
                    width = f9;
                }
                f6 += width;
                f7 = Math.max(f7, height);
                i += i3;
                f2 = 0.0f;
            }
            floatArray2.add(f6);
            floatArray2.add(f7);
            this.f5871P = Math.max(this.f5871P, f6 + f5);
            if (f8 > 0.0f) {
                f8 += f4;
            }
            this.f5872Q = Math.max(this.f5872Q, f8 + f7);
        } else {
            this.f5871P = this.f5887f0 + this.f5889h0 + (this.f5883b0 * (i2 - 1));
            while (i < i2) {
                Actor actor2 = children.get(i);
                if (actor2 instanceof Layout) {
                    Layout layout2 = (Layout) actor2;
                    this.f5871P += layout2.getPrefWidth();
                    this.f5872Q = Math.max(this.f5872Q, layout2.getPrefHeight());
                } else {
                    this.f5871P += actor2.getWidth();
                    this.f5872Q = Math.max(this.f5872Q, actor2.getHeight());
                }
                i++;
            }
        }
        this.f5872Q += this.f5886e0 + this.f5888g0;
        if (this.f5879X) {
            this.f5871P = Math.round(this.f5871P);
            this.f5872Q = Math.round(this.f5872Q);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x005a  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x007f  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0084  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0090  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0109  */
    /* renamed from: r */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m23833r() {
        /*
            Method dump skipped, instructions count: 406
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.badlogic.gdx.scenes.scene2d.p033ui.HorizontalGroup.m23833r():void");
    }

    public HorizontalGroup reverse(boolean z) {
        this.f5878W = z;
        return this;
    }

    public HorizontalGroup right() {
        this.f5876U = (this.f5876U | 16) & (-9);
        return this;
    }

    public HorizontalGroup rowBottom() {
        this.f5877V = (this.f5877V | 4) & (-3);
        return this;
    }

    public HorizontalGroup rowLeft() {
        this.f5877V = (this.f5877V | 8) & (-17);
        return this;
    }

    public HorizontalGroup rowRight() {
        this.f5877V = (this.f5877V | 16) & (-9);
        return this;
    }

    public HorizontalGroup rowTop() {
        this.f5877V = (this.f5877V | 2) & (-5);
        return this;
    }

    public HorizontalGroup top() {
        this.f5876U = (this.f5876U | 2) & (-5);
        return this;
    }

    public HorizontalGroup wrap(boolean z) {
        this.f5880Y = z;
        return this;
    }

    public HorizontalGroup wrapReverse(boolean z) {
        this.f5881Z = z;
        return this;
    }

    public HorizontalGroup() {
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
        shapeRenderer.rect(getX() + this.f5887f0, getY() + this.f5888g0, getOriginX(), getOriginY(), (getWidth() - this.f5887f0) - this.f5889h0, (getHeight() - this.f5888g0) - this.f5886e0, getScaleX(), getScaleY(), getRotation());
    }

    @Override // com.badlogic.gdx.scenes.scene2d.p033ui.WidgetGroup, com.badlogic.gdx.scenes.scene2d.utils.Layout
    public void invalidate() {
        super.invalidate();
        this.f5874S = true;
    }

    public HorizontalGroup pad(float f, float f2, float f3, float f4) {
        this.f5886e0 = f;
        this.f5887f0 = f2;
        this.f5888g0 = f3;
        this.f5889h0 = f4;
        return this;
    }
}
