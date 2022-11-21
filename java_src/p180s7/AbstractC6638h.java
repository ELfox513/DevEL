package p180s7;

import java.io.Closeable;
import okio.Buffer;
import okio.BufferedSource;
import p189t7.C6806a;
/* renamed from: s7.h */
/* loaded from: classes.dex */
public abstract class AbstractC6638h implements Closeable {

    /* renamed from: s7.h$a */
    /* loaded from: classes.dex */
    public class C6639a extends AbstractC6638h {

        /* renamed from: a */
        public final /* synthetic */ long f35235a;

        /* renamed from: b */
        public final /* synthetic */ BufferedSource f35236b;

        public C6639a(C6633d c6633d, long j, BufferedSource bufferedSource) {
            this.f35235a = j;
            this.f35236b = bufferedSource;
        }

        @Override // p180s7.AbstractC6638h
        /* renamed from: e */
        public BufferedSource mo3722e() {
            return this.f35236b;
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        C6806a.m3376c(mo3722e());
    }

    /* renamed from: e */
    public abstract BufferedSource mo3722e();

    /* renamed from: c */
    public static AbstractC6638h m3724c(C6633d c6633d, long j, BufferedSource bufferedSource) {
        if (bufferedSource != null) {
            return new C6639a(c6633d, j, bufferedSource);
        }
        throw new NullPointerException("source == null");
    }

    /* renamed from: d */
    public static AbstractC6638h m3723d(C6633d c6633d, byte[] bArr) {
        return m3724c(c6633d, bArr.length, new Buffer().write(bArr));
    }
}
