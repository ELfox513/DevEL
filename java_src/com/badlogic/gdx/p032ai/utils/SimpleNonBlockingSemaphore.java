package com.badlogic.gdx.p032ai.utils;

import com.badlogic.gdx.p032ai.utils.NonBlockingSemaphore;
/* renamed from: com.badlogic.gdx.ai.utils.SimpleNonBlockingSemaphore */
/* loaded from: classes.dex */
public class SimpleNonBlockingSemaphore implements NonBlockingSemaphore {

    /* renamed from: a */
    public String f3488a;

    /* renamed from: b */
    public int f3489b;

    /* renamed from: c */
    public int f3490c = 0;

    /* renamed from: com.badlogic.gdx.ai.utils.SimpleNonBlockingSemaphore$Factory */
    /* loaded from: classes.dex */
    public static class Factory implements NonBlockingSemaphore.Factory {
        @Override // com.badlogic.gdx.p032ai.utils.NonBlockingSemaphore.Factory
        public NonBlockingSemaphore createSemaphore(String str, int i) {
            return new SimpleNonBlockingSemaphore(str, i);
        }
    }

    @Override // com.badlogic.gdx.p032ai.utils.NonBlockingSemaphore
    public boolean acquire() {
        return acquire(1);
    }

    @Override // com.badlogic.gdx.p032ai.utils.NonBlockingSemaphore
    public boolean release() {
        return release(1);
    }

    @Override // com.badlogic.gdx.p032ai.utils.NonBlockingSemaphore
    public boolean acquire(int i) {
        int i2 = this.f3490c;
        if (i2 + i <= this.f3489b) {
            this.f3490c = i2 + i;
            return true;
        }
        return false;
    }

    @Override // com.badlogic.gdx.p032ai.utils.NonBlockingSemaphore
    public boolean release(int i) {
        int i2 = this.f3490c;
        if (i2 - i >= 0) {
            this.f3490c = i2 - i;
            return true;
        }
        return false;
    }

    public SimpleNonBlockingSemaphore(String str, int i) {
        this.f3488a = str;
        this.f3489b = i;
    }
}
