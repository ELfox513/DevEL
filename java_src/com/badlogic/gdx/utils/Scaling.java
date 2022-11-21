package com.badlogic.gdx.utils;

import com.badlogic.gdx.math.Vector2;
/* loaded from: classes.dex */
public abstract class Scaling {

    /* renamed from: a */
    public static final Vector2 f6730a = new Vector2();
    public static final Scaling fit = new Scaling() { // from class: com.badlogic.gdx.utils.Scaling.1
        @Override // com.badlogic.gdx.utils.Scaling
        public Vector2 apply(float f, float f2, float f3, float f4) {
            float f5;
            if (f4 / f3 > f2 / f) {
                f5 = f3 / f;
            } else {
                f5 = f4 / f2;
            }
            Vector2 vector2 = Scaling.f6730a;
            vector2.f5527x = f * f5;
            vector2.f5528y = f2 * f5;
            return vector2;
        }
    };
    public static final Scaling contain = new Scaling() { // from class: com.badlogic.gdx.utils.Scaling.2
        @Override // com.badlogic.gdx.utils.Scaling
        public Vector2 apply(float f, float f2, float f3, float f4) {
            float f5;
            if (f4 / f3 > f2 / f) {
                f5 = f3 / f;
            } else {
                f5 = f4 / f2;
            }
            if (f5 > 1.0f) {
                f5 = 1.0f;
            }
            Vector2 vector2 = Scaling.f6730a;
            vector2.f5527x = f * f5;
            vector2.f5528y = f2 * f5;
            return vector2;
        }
    };
    public static final Scaling fill = new Scaling() { // from class: com.badlogic.gdx.utils.Scaling.3
        @Override // com.badlogic.gdx.utils.Scaling
        public Vector2 apply(float f, float f2, float f3, float f4) {
            float f5;
            if (f4 / f3 < f2 / f) {
                f5 = f3 / f;
            } else {
                f5 = f4 / f2;
            }
            Vector2 vector2 = Scaling.f6730a;
            vector2.f5527x = f * f5;
            vector2.f5528y = f2 * f5;
            return vector2;
        }
    };
    public static final Scaling fillX = new Scaling() { // from class: com.badlogic.gdx.utils.Scaling.4
        @Override // com.badlogic.gdx.utils.Scaling
        public Vector2 apply(float f, float f2, float f3, float f4) {
            float f5 = f3 / f;
            Vector2 vector2 = Scaling.f6730a;
            vector2.f5527x = f * f5;
            vector2.f5528y = f2 * f5;
            return vector2;
        }
    };
    public static final Scaling fillY = new Scaling() { // from class: com.badlogic.gdx.utils.Scaling.5
        @Override // com.badlogic.gdx.utils.Scaling
        public Vector2 apply(float f, float f2, float f3, float f4) {
            float f5 = f4 / f2;
            Vector2 vector2 = Scaling.f6730a;
            vector2.f5527x = f * f5;
            vector2.f5528y = f2 * f5;
            return vector2;
        }
    };
    public static final Scaling stretch = new Scaling() { // from class: com.badlogic.gdx.utils.Scaling.6
        @Override // com.badlogic.gdx.utils.Scaling
        public Vector2 apply(float f, float f2, float f3, float f4) {
            Vector2 vector2 = Scaling.f6730a;
            vector2.f5527x = f3;
            vector2.f5528y = f4;
            return vector2;
        }
    };
    public static final Scaling stretchX = new Scaling() { // from class: com.badlogic.gdx.utils.Scaling.7
        @Override // com.badlogic.gdx.utils.Scaling
        public Vector2 apply(float f, float f2, float f3, float f4) {
            Vector2 vector2 = Scaling.f6730a;
            vector2.f5527x = f3;
            vector2.f5528y = f2;
            return vector2;
        }
    };
    public static final Scaling stretchY = new Scaling() { // from class: com.badlogic.gdx.utils.Scaling.8
        @Override // com.badlogic.gdx.utils.Scaling
        public Vector2 apply(float f, float f2, float f3, float f4) {
            Vector2 vector2 = Scaling.f6730a;
            vector2.f5527x = f;
            vector2.f5528y = f4;
            return vector2;
        }
    };
    public static final Scaling none = new Scaling() { // from class: com.badlogic.gdx.utils.Scaling.9
        @Override // com.badlogic.gdx.utils.Scaling
        public Vector2 apply(float f, float f2, float f3, float f4) {
            Vector2 vector2 = Scaling.f6730a;
            vector2.f5527x = f;
            vector2.f5528y = f2;
            return vector2;
        }
    };

    public abstract Vector2 apply(float f, float f2, float f3, float f4);
}
