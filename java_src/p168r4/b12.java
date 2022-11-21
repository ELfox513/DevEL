package p168r4;

import android.database.sqlite.SQLiteDatabase;
/* renamed from: r4.b12 */
/* loaded from: classes2.dex */
public final class b12 implements t73<SQLiteDatabase> {

    /* renamed from: a */
    public final /* synthetic */ ps2 f20810a;

    public b12(c12 c12Var, ps2 ps2Var) {
        this.f20810a = ps2Var;
    }

    @Override // p168r4.t73
    /* renamed from: a */
    public final void mo4627a(Throwable th) {
        String valueOf = String.valueOf(th.getMessage());
        cm0.m12440c(valueOf.length() != 0 ? "Failed to get offline buffered ping database: ".concat(valueOf) : new String("Failed to get offline buffered ping database: "));
    }

    @Override // p168r4.t73
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ void mo4626b(SQLiteDatabase sQLiteDatabase) {
        String str;
        try {
            this.f20810a.mo4065a(sQLiteDatabase);
        } catch (Exception e) {
            String valueOf = String.valueOf(e.getMessage());
            if (valueOf.length() != 0) {
                str = "Error executing function on offline buffered ping database: ".concat(valueOf);
            } else {
                str = new String("Error executing function on offline buffered ping database: ");
            }
            cm0.m12440c(str);
        }
    }
}
