package com.prineside.tdi2.utils;

import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.Pool;
import java.lang.reflect.Field;
/* loaded from: classes2.dex */
public abstract class DebugPool<T> extends Pool<T> {
    public DebugPool(int i, int i2) {
        super(i, i2);
    }

    @Override // com.badlogic.gdx.utils.Pool
    public T obtain() {
        return (T) super.obtain();
    }

    @Override // com.badlogic.gdx.utils.Pool
    public void free(T t) {
        try {
            Field declaredField = Pool.class.getDeclaredField("a");
            declaredField.setAccessible(true);
            Array array = (Array) declaredField.get(this);
            for (int i = 0; i < array.size; i++) {
                if (array.get(i) == t) {
                    throw new IllegalArgumentException("Object is already freed: " + t);
                }
            }
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (NoSuchFieldException e2) {
            e2.printStackTrace();
        }
        super.free(t);
    }
}
