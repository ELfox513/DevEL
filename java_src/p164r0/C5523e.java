package p164r0;

import android.database.sqlite.SQLiteStatement;
import p155q0.InterfaceC5390f;
/* renamed from: r0.e */
/* loaded from: classes.dex */
public class C5523e extends C5522d implements InterfaceC5390f {

    /* renamed from: b */
    public final SQLiteStatement f20292b;

    @Override // p155q0.InterfaceC5390f
    /* renamed from: I */
    public int mo13117I() {
        return this.f20292b.executeUpdateDelete();
    }

    @Override // p155q0.InterfaceC5390f
    /* renamed from: T0 */
    public long mo13116T0() {
        return this.f20292b.executeInsert();
    }

    public C5523e(SQLiteStatement sQLiteStatement) {
        super(sQLiteStatement);
        this.f20292b = sQLiteStatement;
    }
}
