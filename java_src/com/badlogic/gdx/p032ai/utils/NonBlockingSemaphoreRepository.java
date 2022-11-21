package com.badlogic.gdx.p032ai.utils;

import com.badlogic.gdx.p032ai.utils.NonBlockingSemaphore;
import com.badlogic.gdx.p032ai.utils.SimpleNonBlockingSemaphore;
import com.badlogic.gdx.utils.ObjectMap;
/* renamed from: com.badlogic.gdx.ai.utils.NonBlockingSemaphoreRepository */
/* loaded from: classes.dex */
public class NonBlockingSemaphoreRepository {

    /* renamed from: a */
    public static final ObjectMap<String, NonBlockingSemaphore> f3486a = new ObjectMap<>();

    /* renamed from: b */
    public static NonBlockingSemaphore.Factory f3487b = new SimpleNonBlockingSemaphore.Factory();

    public static void clear() {
        f3486a.clear();
    }

    public static NonBlockingSemaphore getSemaphore(String str) {
        return f3486a.get(str);
    }

    public static NonBlockingSemaphore removeSemaphore(String str) {
        return f3486a.remove(str);
    }

    public static void setFactory(NonBlockingSemaphore.Factory factory) {
        f3487b = factory;
    }

    public static NonBlockingSemaphore addSemaphore(String str, int i) {
        NonBlockingSemaphore createSemaphore = f3487b.createSemaphore(str, i);
        f3486a.put(str, createSemaphore);
        return createSemaphore;
    }
}
