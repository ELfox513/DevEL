package com.prineside.luaj.compiler;
/* loaded from: classes2.dex */
class InstructionPtr {

    /* renamed from: a */
    public final int[] f8077a;

    /* renamed from: b */
    public final int f8078b;

    /* renamed from: a */
    public int m22631a() {
        return this.f8077a[this.f8078b];
    }

    /* renamed from: b */
    public void m22630b(int i) {
        this.f8077a[this.f8078b] = i;
    }

    public InstructionPtr(int[] iArr, int i) {
        this.f8077a = iArr;
        this.f8078b = i;
    }
}
