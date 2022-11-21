package com.badlogic.gdx.utils.reflect;
/* loaded from: classes.dex */
public final class Annotation {

    /* renamed from: a */
    public java.lang.annotation.Annotation f6955a;

    public Class<? extends java.lang.annotation.Annotation> getAnnotationType() {
        return this.f6955a.annotationType();
    }

    public <T extends java.lang.annotation.Annotation> T getAnnotation(Class<T> cls) {
        if (this.f6955a.annotationType().equals(cls)) {
            return (T) this.f6955a;
        }
        return null;
    }

    public Annotation(java.lang.annotation.Annotation annotation) {
        this.f6955a = annotation;
    }
}
