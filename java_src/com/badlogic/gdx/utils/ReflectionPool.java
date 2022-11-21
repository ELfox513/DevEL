package com.badlogic.gdx.utils;

import com.badlogic.gdx.utils.reflect.ClassReflection;
import com.badlogic.gdx.utils.reflect.Constructor;
import com.badlogic.gdx.utils.reflect.ReflectionException;
/* loaded from: classes.dex */
public class ReflectionPool<T> extends Pool<T> {

    /* renamed from: b */
    public final Constructor f6729b;

    public ReflectionPool(Class<T> cls) {
        this(cls, 16, Integer.MAX_VALUE);
    }

    @Null
    /* renamed from: c */
    public final Constructor m23543c(Class<T> cls) {
        try {
            try {
                return ClassReflection.getConstructor(cls, null);
            } catch (Exception unused) {
                Constructor declaredConstructor = ClassReflection.getDeclaredConstructor(cls, null);
                declaredConstructor.setAccessible(true);
                return declaredConstructor;
            }
        } catch (ReflectionException unused2) {
            return null;
        }
    }

    public ReflectionPool(Class<T> cls, int i) {
        this(cls, i, Integer.MAX_VALUE);
    }

    @Override // com.badlogic.gdx.utils.Pool
    public T newObject() {
        try {
            return (T) this.f6729b.newInstance(null);
        } catch (Exception e) {
            throw new GdxRuntimeException("Unable to create new instance: " + this.f6729b.getDeclaringClass().getName(), e);
        }
    }

    public ReflectionPool(Class<T> cls, int i, int i2) {
        super(i, i2);
        Constructor m23543c = m23543c(cls);
        this.f6729b = m23543c;
        if (m23543c != null) {
            return;
        }
        throw new RuntimeException("Class cannot be created (missing no-arg constructor): " + cls.getName());
    }
}
