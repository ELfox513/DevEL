package p168r4;

import android.database.sqlite.SQLiteDatabase;
/* renamed from: r4.a02 */
/* loaded from: classes2.dex */
public final class a02 implements t73<SQLiteDatabase> {

    /* renamed from: a */
    public final /* synthetic */ ps2 f20325a;

    public a02(b02 b02Var, ps2 ps2Var) {
        this.f20325a = ps2Var;
    }

    @Override // p168r4.t73
    /* renamed from: a */
    public final void mo4627a(Throwable th) {
        String valueOf = String.valueOf(th.getMessage());
        cm0.m12440c(valueOf.length() != 0 ? "Failed to get offline signal database: ".concat(valueOf) : new String("Failed to get offline signal database: "));
    }

    @Override // p168r4.t73
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ void mo4626b(SQLiteDatabase sQLiteDatabase) {
        String str;
        try {
            this.f20325a.mo4065a(sQLiteDatabase);
        } catch (Exception e) {
            String valueOf = String.valueOf(e.getMessage());
            if (valueOf.length() != 0) {
                str = "Error executing function on offline signal database: ".concat(valueOf);
            } else {
                str = new String("Error executing function on offline signal database: ");
            }
            cm0.m12440c(str);
        }
    }
}
