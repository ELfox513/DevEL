package p168r4;

import java.io.InputStream;
import java.io.PushbackInputStream;
/* renamed from: r4.ap */
/* loaded from: classes2.dex */
public final class C5586ap extends PushbackInputStream {

    /* renamed from: a */
    public final /* synthetic */ C5623bp f20571a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C5586ap(C5623bp c5623bp, InputStream inputStream, int i) {
        super(inputStream, 1);
        this.f20571a = c5623bp;
    }

    @Override // java.io.PushbackInputStream, java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final synchronized void close() {
        C5696dp.m12013f(this.f20571a.f21148d);
        super.close();
    }
}
