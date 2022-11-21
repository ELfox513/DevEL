package com.prineside.tdi2.utils;

import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import sun.misc.Unsafe;
/* loaded from: classes2.dex */
public final class UnsafeFactory {
    public static final Unsafe INSTANCE;

    static {
        Unsafe unsafe = null;
        try {
            Constructor declaredConstructor = Unsafe.class.getDeclaredConstructor(new Class[0]);
            declaredConstructor.setAccessible(true);
            unsafe = (Unsafe) declaredConstructor.newInstance(new Object[0]);
        } catch (IllegalAccessException | InstantiationException | NoSuchMethodException | InvocationTargetException e) {
            try {
                Field declaredField = Unsafe.class.getDeclaredField("theUnsafe");
                declaredField.setAccessible(true);
                unsafe = (Unsafe) declaredField.get(null);
            } catch (Exception e2) {
                System.err.println("Failed to obtain Unsafe");
                e.printStackTrace();
                e2.printStackTrace();
            }
        }
        INSTANCE = unsafe;
    }
}
