package com.badlogic.gdx.utils.reflect;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Modifier;
/* loaded from: classes.dex */
public final class Method {

    /* renamed from: a */
    public final java.lang.reflect.Method f6958a;

    public Class getDeclaringClass() {
        return this.f6958a.getDeclaringClass();
    }

    public String getName() {
        return this.f6958a.getName();
    }

    public Class[] getParameterTypes() {
        return this.f6958a.getParameterTypes();
    }

    public Class getReturnType() {
        return this.f6958a.getReturnType();
    }

    public boolean isAbstract() {
        return Modifier.isAbstract(this.f6958a.getModifiers());
    }

    public boolean isAccessible() {
        return this.f6958a.isAccessible();
    }

    public boolean isAnnotationPresent(Class<? extends java.lang.annotation.Annotation> cls) {
        return this.f6958a.isAnnotationPresent(cls);
    }

    public boolean isDefaultAccess() {
        return (isPrivate() || isProtected() || isPublic()) ? false : true;
    }

    public boolean isFinal() {
        return Modifier.isFinal(this.f6958a.getModifiers());
    }

    public boolean isNative() {
        return Modifier.isNative(this.f6958a.getModifiers());
    }

    public boolean isPrivate() {
        return Modifier.isPrivate(this.f6958a.getModifiers());
    }

    public boolean isProtected() {
        return Modifier.isProtected(this.f6958a.getModifiers());
    }

    public boolean isPublic() {
        return Modifier.isPublic(this.f6958a.getModifiers());
    }

    public boolean isStatic() {
        return Modifier.isStatic(this.f6958a.getModifiers());
    }

    public boolean isVarArgs() {
        return this.f6958a.isVarArgs();
    }

    public void setAccessible(boolean z) {
        this.f6958a.setAccessible(z);
    }

    public Annotation getDeclaredAnnotation(Class<? extends java.lang.annotation.Annotation> cls) {
        java.lang.annotation.Annotation[] declaredAnnotations = this.f6958a.getDeclaredAnnotations();
        if (declaredAnnotations == null) {
            return null;
        }
        for (java.lang.annotation.Annotation annotation : declaredAnnotations) {
            if (annotation.annotationType().equals(cls)) {
                return new Annotation(annotation);
            }
        }
        return null;
    }

    public Annotation[] getDeclaredAnnotations() {
        java.lang.annotation.Annotation[] declaredAnnotations = this.f6958a.getDeclaredAnnotations();
        Annotation[] annotationArr = new Annotation[declaredAnnotations.length];
        for (int i = 0; i < declaredAnnotations.length; i++) {
            annotationArr[i] = new Annotation(declaredAnnotations[i]);
        }
        return annotationArr;
    }

    public Object invoke(Object obj, Object... objArr) {
        try {
            return this.f6958a.invoke(obj, objArr);
        } catch (IllegalAccessException e) {
            throw new ReflectionException("Illegal access to method: " + getName(), e);
        } catch (IllegalArgumentException e2) {
            throw new ReflectionException("Illegal argument(s) supplied to method: " + getName(), e2);
        } catch (InvocationTargetException e3) {
            throw new ReflectionException("Exception occurred in method: " + getName(), e3);
        }
    }

    public Method(java.lang.reflect.Method method) {
        this.f6958a = method;
    }
}
