package com.prineside.tdi2.shapes;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.Batch;
import com.badlogic.gdx.graphics.g2d.ParticleEmitter;
import com.badlogic.gdx.graphics.g2d.TextureRegion;
import com.prineside.tdi2.ProjectileTrail;
import com.prineside.tdi2.Shape;
/* loaded from: classes2.dex */
public class FlyingParticlesLine extends Shape implements ProjectileTrail {

    /* renamed from: A */
    public static int f11319A;

    /* renamed from: a */
    public float f11320a;

    /* renamed from: b */
    public float f11321b;

    /* renamed from: d */
    public float f11322d;

    /* renamed from: k */
    public float f11323k;

    /* renamed from: p */
    public TextureRegion f11324p;

    /* renamed from: q */
    public float f11325q;

    /* renamed from: r */
    public float f11326r;

    /* renamed from: s */
    public float f11327s;

    /* renamed from: t */
    public float f11328t;

    /* renamed from: u */
    public float f11329u;

    /* renamed from: v */
    public float f11330v;

    /* renamed from: w */
    public float f11331w;

    /* renamed from: x */
    public ParticleEmitter.ScaledNumericValue f11332x;

    /* renamed from: y */
    public float f11333y;

    /* renamed from: z */
    public int f11334z;

    /* loaded from: classes2.dex */
    public static class FlyingParticlesLineFactory extends Shape.Factory<FlyingParticlesLine> {
        @Override // com.prineside.tdi2.Shape.Factory
        /* renamed from: b */
        public FlyingParticlesLine mo21056a() {
            return new FlyingParticlesLine();
        }

        @Override // com.prineside.tdi2.Shape.Factory
        public void setup() {
        }
    }

    @Override // com.prineside.tdi2.Shape, com.prineside.tdi2.ProjectileTrail
    public void draw(Batch batch) {
    }

    @Override // com.prineside.tdi2.ProjectileTrail
    public void free() {
    }

    @Override // com.prineside.tdi2.ProjectileTrail
    public int getUsageId() {
        return this.f11334z;
    }

    @Override // com.prineside.tdi2.ProjectileTrail
    public boolean isFinished() {
        return this.f11333y >= this.f11330v;
    }

    @Override // com.badlogic.gdx.utils.Pool.Poolable
    public void reset() {
        this.f11332x = null;
        this.f11324p = null;
    }

    @Override // com.prineside.tdi2.ProjectileTrail
    public void update(float f) {
    }

    public FlyingParticlesLine() {
        reset();
    }

    public void setup(float f, float f2, float f3, float f4, TextureRegion textureRegion, float f5, float f6, float f7, float f8, Color color, Color color2, float f9, float f10, float f11, ParticleEmitter.ScaledNumericValue scaledNumericValue) {
        this.f11320a = f;
        this.f11321b = f2;
        this.f11322d = f3;
        this.f11323k = f4;
        this.f11324p = textureRegion;
        this.f11325q = f5;
        this.f11326r = f6;
        this.f11327s = f7;
        this.f11328t = f8;
        this.f11329u = f9;
        this.f11330v = f10;
        this.f11331w = f11;
        this.f11332x = scaledNumericValue;
        this.f11333y = 0.0f;
        int i = f11319A;
        f11319A = i + 1;
        this.f11334z = i;
    }
}
