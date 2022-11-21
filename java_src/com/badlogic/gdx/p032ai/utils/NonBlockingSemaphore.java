package com.badlogic.gdx.p032ai.utils;
/* renamed from: com.badlogic.gdx.ai.utils.NonBlockingSemaphore */
/* loaded from: classes.dex */
public interface NonBlockingSemaphore {

    /* renamed from: com.badlogic.gdx.ai.utils.NonBlockingSemaphore$Factory */
    /* loaded from: classes.dex */
    public interface Factory {
        NonBlockingSemaphore createSemaphore(String str, int i);
    }

    boolean acquire();

    boolean acquire(int i);

    boolean release();

    boolean release(int i);
}
