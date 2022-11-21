package p164r0;

import android.content.Context;
import android.database.DatabaseErrorHandler;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.os.Build;
import java.io.File;
import p155q0.InterfaceC5382b;
import p155q0.InterfaceC5383c;
/* renamed from: r0.b */
/* loaded from: classes.dex */
public class C5518b implements InterfaceC5383c {

    /* renamed from: a */
    public final Context f20279a;

    /* renamed from: b */
    public final String f20280b;

    /* renamed from: d */
    public final InterfaceC5383c.AbstractC5384a f20281d;

    /* renamed from: k */
    public final boolean f20282k;

    /* renamed from: p */
    public final Object f20283p = new Object();

    /* renamed from: q */
    public C5519a f20284q;

    /* renamed from: r */
    public boolean f20285r;

    /* renamed from: r0.b$a */
    /* loaded from: classes.dex */
    public static class C5519a extends SQLiteOpenHelper {

        /* renamed from: a */
        public final C5515a[] f20286a;

        /* renamed from: b */
        public final InterfaceC5383c.AbstractC5384a f20287b;

        /* renamed from: d */
        public boolean f20288d;

        /* renamed from: r0.b$a$a */
        /* loaded from: classes.dex */
        public class C5520a implements DatabaseErrorHandler {

            /* renamed from: a */
            public final /* synthetic */ InterfaceC5383c.AbstractC5384a f20289a;

            /* renamed from: b */
            public final /* synthetic */ C5515a[] f20290b;

            public C5520a(InterfaceC5383c.AbstractC5384a abstractC5384a, C5515a[] c5515aArr) {
                this.f20289a = abstractC5384a;
                this.f20290b = c5515aArr;
            }

            @Override // android.database.DatabaseErrorHandler
            public void onCorruption(SQLiteDatabase sQLiteDatabase) {
                this.f20289a.m13360c(C5519a.m13125d(this.f20290b, sQLiteDatabase));
            }
        }

        /* renamed from: d */
        public static C5515a m13125d(C5515a[] c5515aArr, SQLiteDatabase sQLiteDatabase) {
            C5515a c5515a = c5515aArr[0];
            if (c5515a == null || !c5515a.m13135c(sQLiteDatabase)) {
                c5515aArr[0] = new C5515a(sQLiteDatabase);
            }
            return c5515aArr[0];
        }

        /* renamed from: c */
        public C5515a m13126c(SQLiteDatabase sQLiteDatabase) {
            return m13125d(this.f20286a, sQLiteDatabase);
        }

        @Override // android.database.sqlite.SQLiteOpenHelper, java.lang.AutoCloseable
        public synchronized void close() {
            super.close();
            this.f20286a[0] = null;
        }

        /* renamed from: e */
        public synchronized InterfaceC5382b m13124e() {
            this.f20288d = false;
            SQLiteDatabase writableDatabase = super.getWritableDatabase();
            if (this.f20288d) {
                close();
                return m13124e();
            }
            return m13126c(writableDatabase);
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onConfigure(SQLiteDatabase sQLiteDatabase) {
            this.f20287b.mo13361b(m13126c(sQLiteDatabase));
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onCreate(SQLiteDatabase sQLiteDatabase) {
            this.f20287b.mo13359d(m13126c(sQLiteDatabase));
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onDowngrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
            this.f20288d = true;
            this.f20287b.mo13358e(m13126c(sQLiteDatabase), i, i2);
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
            this.f20288d = true;
            this.f20287b.mo13356g(m13126c(sQLiteDatabase), i, i2);
        }

        public C5519a(Context context, String str, C5515a[] c5515aArr, InterfaceC5383c.AbstractC5384a abstractC5384a) {
            super(context, str, null, abstractC5384a.f20075a, new C5520a(abstractC5384a, c5515aArr));
            this.f20287b = abstractC5384a;
            this.f20286a = c5515aArr;
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onOpen(SQLiteDatabase sQLiteDatabase) {
            if (!this.f20288d) {
                this.f20287b.mo13357f(m13126c(sQLiteDatabase));
            }
        }
    }

    @Override // p155q0.InterfaceC5383c, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        m13128c().close();
    }

    @Override // p155q0.InterfaceC5383c
    public String getDatabaseName() {
        return this.f20280b;
    }

    @Override // p155q0.InterfaceC5383c
    /* renamed from: n0 */
    public InterfaceC5382b mo13127n0() {
        return m13128c().m13124e();
    }

    /* renamed from: c */
    public final C5519a m13128c() {
        C5519a c5519a;
        File noBackupFilesDir;
        synchronized (this.f20283p) {
            if (this.f20284q == null) {
                C5515a[] c5515aArr = new C5515a[1];
                if (Build.VERSION.SDK_INT >= 23 && this.f20280b != null && this.f20282k) {
                    noBackupFilesDir = this.f20279a.getNoBackupFilesDir();
                    this.f20284q = new C5519a(this.f20279a, new File(noBackupFilesDir, this.f20280b).getAbsolutePath(), c5515aArr, this.f20281d);
                } else {
                    this.f20284q = new C5519a(this.f20279a, this.f20280b, c5515aArr, this.f20281d);
                }
                this.f20284q.setWriteAheadLoggingEnabled(this.f20285r);
            }
            c5519a = this.f20284q;
        }
        return c5519a;
    }

    @Override // p155q0.InterfaceC5383c
    public void setWriteAheadLoggingEnabled(boolean z) {
        synchronized (this.f20283p) {
            C5519a c5519a = this.f20284q;
            if (c5519a != null) {
                c5519a.setWriteAheadLoggingEnabled(z);
            }
            this.f20285r = z;
        }
    }

    public C5518b(Context context, String str, InterfaceC5383c.AbstractC5384a abstractC5384a, boolean z) {
        this.f20279a = context;
        this.f20280b = str;
        this.f20281d = abstractC5384a;
        this.f20282k = z;
    }
}
