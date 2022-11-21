package com.prineside.tdi2.shapes;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.Batch;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.Shape;
import com.prineside.tdi2.enums.ShapeType;
import com.prineside.tdi2.shapes.Circle;
/* loaded from: classes2.dex */
public class RangeCircle extends Shape {

    /* renamed from: a */
    public float f11371a;

    /* renamed from: b */
    public float f11372b;

    /* renamed from: d */
    public float f11373d;

    /* renamed from: k */
    public float f11374k;

    /* renamed from: p */
    public Color f11375p;

    /* renamed from: q */
    public float f11376q;

    /* renamed from: r */
    public boolean f11377r;

    /* renamed from: s */
    public boolean f11378s;

    /* renamed from: t */
    public final Circle f11379t;

    /* renamed from: u */
    public final Circle f11380u;

    /* renamed from: v */
    public final Circle f11381v;

    /* renamed from: w */
    public final Circle f11382w;

    /* renamed from: x */
    public final Color f11383x;

    /* loaded from: classes2.dex */
    public static class RangeCircleFactory extends Shape.Factory<RangeCircle> {
        @Override // com.prineside.tdi2.Shape.Factory
        /* renamed from: b */
        public RangeCircle mo21056a() {
            return new RangeCircle();
        }

        @Override // com.prineside.tdi2.Shape.Factory
        public void setup() {
        }
    }

    public Color getColor() {
        return this.f11375p;
    }

    public float getMaxRadius() {
        return this.f11374k;
    }

    public float getMinRadius() {
        return this.f11373d;
    }

    public float getX() {
        return this.f11371a;
    }

    public float getY() {
        return this.f11372b;
    }

    @Override // com.badlogic.gdx.utils.Pool.Poolable
    public void reset() {
        this.f11378s = false;
    }

    public RangeCircle() {
        this.f11375p = new Color();
        this.f11377r = false;
        this.f11378s = false;
        this.f11383x = new Color();
        Circle.CircleFactory circleFactory = (Circle.CircleFactory) Game.f8589i.shapeManager.getFactory(ShapeType.CIRCLE);
        this.f11379t = circleFactory.obtain();
        this.f11380u = circleFactory.obtain();
        this.f11381v = circleFactory.obtain();
        this.f11382w = circleFactory.obtain();
    }

    @Override // com.prineside.tdi2.Shape, com.prineside.tdi2.ProjectileTrail
    public void draw(Batch batch) {
        if (this.f11378s) {
            if (this.f11377r) {
                this.f11380u.draw(batch);
                this.f11379t.draw(batch);
            }
            this.f11382w.draw(batch);
            this.f11381v.draw(batch);
            return;
        }
        throw new IllegalStateException("Circle is not set up yet");
    }

    public void setup(float f, float f2, float f3, float f4, Color color) {
        float floatBits = color.toFloatBits();
        this.f11375p.set(color);
        this.f11383x.set(color);
        Color color2 = this.f11383x;
        color2.f3889a = 0.0f;
        float floatBits2 = color2.toFloatBits();
        if (f3 > 0.0f) {
            this.f11377r = true;
            if (this.f11378s && this.f11373d == f3 && this.f11374k == f4) {
                if (this.f11371a == f && this.f11372b == f2) {
                    if (this.f11376q != floatBits) {
                        this.f11380u.setColor(floatBits, floatBits2);
                        this.f11379t.setColor(floatBits, floatBits);
                    }
                } else if (this.f11376q != floatBits) {
                    this.f11380u.setPositionAndColor(f, f2, floatBits, floatBits2);
                    this.f11379t.setPositionAndColor(f, f2, floatBits, floatBits);
                } else {
                    this.f11380u.setPosition(f, f2);
                    this.f11379t.setPosition(f, f2);
                }
            } else {
                this.f11380u.setup(f, f2, f3, f4 - ((f4 - f3) * 0.5f), 32, floatBits, floatBits2);
                this.f11379t.setup(f, f2, f3, f3 + 8.0f, 32, floatBits, floatBits);
            }
        } else {
            this.f11377r = false;
        }
        if (this.f11378s && this.f11373d == f3 && this.f11374k == f4) {
            if (this.f11371a == f && this.f11372b == f2) {
                if (this.f11376q != floatBits) {
                    this.f11382w.setColor(floatBits2, floatBits);
                    this.f11381v.setColor(floatBits, floatBits);
                }
            } else if (this.f11376q != floatBits) {
                this.f11382w.setPositionAndColor(f, f2, floatBits2, floatBits);
                this.f11381v.setPositionAndColor(f, f2, floatBits, floatBits);
            } else {
                this.f11382w.setPosition(f, f2);
                this.f11381v.setPosition(f, f2);
            }
        } else {
            this.f11382w.setup(f, f2, f3 + ((f4 - f3) * 0.5f), f4, 32, floatBits2, floatBits);
            this.f11381v.setup(f, f2, f4 - 8.0f, f4, 32, floatBits, floatBits);
        }
        this.f11376q = floatBits;
        this.f11373d = f3;
        this.f11374k = f4;
        this.f11371a = f;
        this.f11372b = f2;
        this.f11378s = true;
    }
}
