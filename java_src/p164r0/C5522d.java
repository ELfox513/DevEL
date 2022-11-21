package p164r0;

import android.database.sqlite.SQLiteProgram;
import p155q0.InterfaceC5388d;
/* renamed from: r0.d */
/* loaded from: classes.dex */
public class C5522d implements InterfaceC5388d {

    /* renamed from: a */
    public final SQLiteProgram f20291a;

    @Override // p155q0.InterfaceC5388d
    /* renamed from: A0 */
    public void mo13122A0(int i) {
        this.f20291a.bindNull(i);
    }

    @Override // p155q0.InterfaceC5388d
    /* renamed from: E */
    public void mo13121E(int i, String str) {
        this.f20291a.bindString(i, str);
    }

    @Override // p155q0.InterfaceC5388d
    /* renamed from: Q */
    public void mo13120Q(int i, double d) {
        this.f20291a.bindDouble(i, d);
    }

    @Override // p155q0.InterfaceC5388d
    /* renamed from: c0 */
    public void mo13119c0(int i, long j) {
        this.f20291a.bindLong(i, j);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f20291a.close();
    }

    @Override // p155q0.InterfaceC5388d
    /* renamed from: k0 */
    public void mo13118k0(int i, byte[] bArr) {
        this.f20291a.bindBlob(i, bArr);
    }

    public C5522d(SQLiteProgram sQLiteProgram) {
        this.f20291a = sQLiteProgram;
    }
}
