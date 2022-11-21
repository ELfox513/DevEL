package p070g5;

import android.database.sqlite.SQLiteDatabase;
import java.io.File;
/* renamed from: g5.l */
/* loaded from: classes2.dex */
public final class C3725l {
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0027, code lost:
        if (r0 == false) goto L10;
     */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00f9  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void m18078a(p070g5.C3789q3 r14, android.database.sqlite.SQLiteDatabase r15, java.lang.String r16, java.lang.String r17, java.lang.String r18, java.lang.String[] r19) {
        /*
            Method dump skipped, instructions count: 263
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p070g5.C3725l.m18078a(g5.q3, android.database.sqlite.SQLiteDatabase, java.lang.String, java.lang.String, java.lang.String, java.lang.String[]):void");
    }

    /* renamed from: b */
    public static void m18077b(C3789q3 c3789q3, SQLiteDatabase sQLiteDatabase) {
        if (c3789q3 != null) {
            File file = new File(sQLiteDatabase.getPath());
            if (!file.setReadable(false, false)) {
                c3789q3.m18013r().m18042a("Failed to turn off database read permission");
            }
            if (!file.setWritable(false, false)) {
                c3789q3.m18013r().m18042a("Failed to turn off database write permission");
            }
            if (!file.setReadable(true, true)) {
                c3789q3.m18013r().m18042a("Failed to turn on database read permission for owner");
            }
            if (!file.setWritable(true, true)) {
                c3789q3.m18013r().m18042a("Failed to turn on database write permission for owner");
                return;
            }
            return;
        }
        throw new IllegalArgumentException("Monitor must not be null");
    }
}
