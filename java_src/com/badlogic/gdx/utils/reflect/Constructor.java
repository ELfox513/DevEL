package com.badlogic.gdx.utils.reflect;

import java.lang.reflect.InvocationTargetException;
/* loaded from: classes.dex */
public final class Constructor {

    /* renamed from: a */
    public final java.lang.reflect.Constructor f6956a;

    public Class getDeclaringClass() {
        return this.f6956a.getDeclaringClass();
    }

    public Class[] getParameterTypes() {
        return this.f6956a.getParameterTypes();
    }

    public boolean isAccessible() {
        return this.f6956a.isAccessible();
    }

    public void setAccessible(boolean z) {
        this.f6956a.setAccessible(z);
    }

    public Object newInstance(Object... objArr) {
        try {
            return this.f6956a.newInstance(objArr);
        } catch (IllegalAccessException e) {
            throw new ReflectionException("Could not instantiate instance of class: " + getDeclaringClass().getName(), e);
        } catch (IllegalArgumentException e2) {
            throw new ReflectionException("Illegal argument(s) supplied to constructor for class: " + getDeclaringClass().getName(), e2);
        } catch (InstantiationException e3) {
            throw new ReflectionException("Could not instantiate instance of class: " + getDeclaringClass().getName(), e3);
        } catch (InvocationTargetException e4) {
            throw new ReflectionException("Exception occurred in constructor for class: " + getDeclaringClass().getName(), e4);
        }
    }

    public Constructor(java.lang.reflect.Constructor constructor) {
        this.f6956a = constructor;
    }
}
