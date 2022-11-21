package p128n0;

import android.content.Context;
import android.util.Log;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.channels.Channels;
import java.nio.channels.ReadableByteChannel;
import p146p0.C5285a;
import p146p0.C5287c;
import p146p0.C5288d;
import p155q0.InterfaceC5382b;
import p155q0.InterfaceC5383c;
/* renamed from: n0.j */
/* loaded from: classes.dex */
public class C4687j implements InterfaceC5383c {

    /* renamed from: a */
    public final Context f18807a;

    /* renamed from: b */
    public final String f18808b;

    /* renamed from: d */
    public final File f18809d;

    /* renamed from: k */
    public final int f18810k;

    /* renamed from: p */
    public final InterfaceC5383c f18811p;

    /* renamed from: q */
    public C4672a f18812q;

    /* renamed from: r */
    public boolean f18813r;

    @Override // p155q0.InterfaceC5383c, java.io.Closeable, java.lang.AutoCloseable
    public synchronized void close() {
        this.f18811p.close();
        this.f18813r = false;
    }

    /* renamed from: d */
    public void m15777d(C4672a c4672a) {
        this.f18812q = c4672a;
    }

    @Override // p155q0.InterfaceC5383c
    public String getDatabaseName() {
        return this.f18811p.getDatabaseName();
    }

    @Override // p155q0.InterfaceC5383c
    /* renamed from: n0 */
    public synchronized InterfaceC5382b mo13127n0() {
        if (!this.f18813r) {
            m15776e();
            this.f18813r = true;
        }
        return this.f18811p.mo13127n0();
    }

    @Override // p155q0.InterfaceC5383c
    public void setWriteAheadLoggingEnabled(boolean z) {
        this.f18811p.setWriteAheadLoggingEnabled(z);
    }

    /* renamed from: c */
    public final void m15778c(File file) {
        ReadableByteChannel channel;
        if (this.f18808b != null) {
            channel = Channels.newChannel(this.f18807a.getAssets().open(this.f18808b));
        } else if (this.f18809d != null) {
            channel = new FileInputStream(this.f18809d).getChannel();
        } else {
            throw new IllegalStateException("copyFromAssetPath and copyFromFile == null!");
        }
        File createTempFile = File.createTempFile("room-copy-helper", ".tmp", this.f18807a.getCacheDir());
        createTempFile.deleteOnExit();
        C5288d.m13635a(channel, new FileOutputStream(createTempFile).getChannel());
        File parentFile = file.getParentFile();
        if (parentFile != null && !parentFile.exists() && !parentFile.mkdirs()) {
            throw new IOException("Failed to create directories for " + file.getAbsolutePath());
        } else if (createTempFile.renameTo(file)) {
        } else {
            throw new IOException("Failed to move intermediate file (" + createTempFile.getAbsolutePath() + ") to destination (" + file.getAbsolutePath() + ").");
        }
    }

    /* renamed from: e */
    public final void m15776e() {
        boolean z;
        String databaseName = getDatabaseName();
        File databasePath = this.f18807a.getDatabasePath(databaseName);
        C4672a c4672a = this.f18812q;
        if (c4672a != null && !c4672a.f18750j) {
            z = false;
        } else {
            z = true;
        }
        C5285a c5285a = new C5285a(databaseName, this.f18807a.getFilesDir(), z);
        try {
            c5285a.m13642b();
            if (!databasePath.exists()) {
                try {
                    m15778c(databasePath);
                    c5285a.m13641c();
                    return;
                } catch (IOException e) {
                    throw new RuntimeException("Unable to copy database file.", e);
                }
            } else if (this.f18812q == null) {
                c5285a.m13641c();
                return;
            } else {
                try {
                    int m13636c = C5287c.m13636c(databasePath);
                    int i = this.f18810k;
                    if (m13636c == i) {
                        c5285a.m13641c();
                        return;
                    } else if (this.f18812q.m15836a(m13636c, i)) {
                        c5285a.m13641c();
                        return;
                    } else {
                        if (this.f18807a.deleteDatabase(databaseName)) {
                            try {
                                m15778c(databasePath);
                            } catch (IOException e2) {
                                Log.w("ROOM", "Unable to copy database file.", e2);
                            }
                        } else {
                            Log.w("ROOM", "Failed to delete database file (" + databaseName + ") for a copy destructive migration.");
                        }
                        c5285a.m13641c();
                        return;
                    }
                } catch (IOException e3) {
                    Log.w("ROOM", "Unable to read database version.", e3);
                    c5285a.m13641c();
                    return;
                }
            }
        } catch (Throwable th) {
            c5285a.m13641c();
            throw th;
        }
        c5285a.m13641c();
        throw th;
    }

    public C4687j(Context context, String str, File file, int i, InterfaceC5383c interfaceC5383c) {
        this.f18807a = context;
        this.f18808b = str;
        this.f18809d = file;
        this.f18810k = i;
        this.f18811p = interfaceC5383c;
    }
}
