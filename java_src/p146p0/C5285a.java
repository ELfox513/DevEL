package p146p0;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.channels.FileChannel;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
/* renamed from: p0.a */
/* loaded from: classes.dex */
public class C5285a {

    /* renamed from: e */
    public static final Map<String, Lock> f19828e = new HashMap();

    /* renamed from: a */
    public final File f19829a;

    /* renamed from: b */
    public final Lock f19830b;

    /* renamed from: c */
    public final boolean f19831c;

    /* renamed from: d */
    public FileChannel f19832d;

    /* renamed from: a */
    public static Lock m13643a(String str) {
        Lock lock;
        Map<String, Lock> map = f19828e;
        synchronized (map) {
            lock = map.get(str);
            if (lock == null) {
                lock = new ReentrantLock();
                map.put(str, lock);
            }
        }
        return lock;
    }

    /* renamed from: b */
    public void m13642b() {
        this.f19830b.lock();
        if (this.f19831c) {
            try {
                FileChannel channel = new FileOutputStream(this.f19829a).getChannel();
                this.f19832d = channel;
                channel.lock();
            } catch (IOException e) {
                throw new IllegalStateException("Unable to grab copy lock.", e);
            }
        }
    }

    /* renamed from: c */
    public void m13641c() {
        FileChannel fileChannel = this.f19832d;
        if (fileChannel != null) {
            try {
                fileChannel.close();
            } catch (IOException unused) {
            }
        }
        this.f19830b.unlock();
    }

    public C5285a(String str, File file, boolean z) {
        File file2 = new File(file, str + ".lck");
        this.f19829a = file2;
        this.f19830b = m13643a(file2.getAbsolutePath());
        this.f19831c = z;
    }
}
