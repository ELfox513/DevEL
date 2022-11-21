package p230y5;

import com.esotericsoftware.kryo.util.DefaultClassResolver;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.nio.channels.FileChannel;
import java.util.NoSuchElementException;
import java.util.logging.Level;
import java.util.logging.Logger;
import net.bytebuddy.pool.TypePool;
/* renamed from: y5.c */
/* loaded from: classes2.dex */
public class C7507c implements Closeable {

    /* renamed from: r */
    public static final Logger f37337r = Logger.getLogger(C7507c.class.getName());

    /* renamed from: a */
    public final RandomAccessFile f37338a;

    /* renamed from: b */
    public int f37339b;

    /* renamed from: d */
    public int f37340d;

    /* renamed from: k */
    public C7509b f37341k;

    /* renamed from: p */
    public C7509b f37342p;

    /* renamed from: q */
    public final byte[] f37343q = new byte[16];

    /* renamed from: y5.c$a */
    /* loaded from: classes2.dex */
    public class C7508a implements InterfaceC7511d {

        /* renamed from: a */
        public boolean f37344a = true;

        /* renamed from: b */
        public final /* synthetic */ StringBuilder f37345b;

        public C7508a(StringBuilder sb) {
            this.f37345b = sb;
        }

        @Override // p230y5.C7507c.InterfaceC7511d
        /* renamed from: a */
        public void mo1328a(InputStream inputStream, int i) {
            if (this.f37344a) {
                this.f37344a = false;
            } else {
                this.f37345b.append(", ");
            }
            this.f37345b.append(i);
        }
    }

    /* renamed from: y5.c$c */
    /* loaded from: classes2.dex */
    public final class C7510c extends InputStream {

        /* renamed from: a */
        public int f37350a;

        /* renamed from: b */
        public int f37351b;

        public /* synthetic */ C7510c(C7507c c7507c, C7509b c7509b, C7508a c7508a) {
            this(c7509b);
        }

        @Override // java.io.InputStream
        public int read(byte[] bArr, int i, int i2) {
            C7507c.m1344o(bArr, "buffer");
            if ((i | i2) >= 0 && i2 <= bArr.length - i) {
                int i3 = this.f37351b;
                if (i3 > 0) {
                    if (i2 > i3) {
                        i2 = i3;
                    }
                    C7507c.this.m1337y(this.f37350a, bArr, i, i2);
                    this.f37350a = C7507c.this.m1359G(this.f37350a + i2);
                    this.f37351b -= i2;
                    return i2;
                }
                return -1;
            }
            throw new ArrayIndexOutOfBoundsException();
        }

        public C7510c(C7509b c7509b) {
            this.f37350a = C7507c.this.m1359G(c7509b.f37348a + 4);
            this.f37351b = c7509b.f37349b;
        }

        @Override // java.io.InputStream
        public int read() {
            if (this.f37351b == 0) {
                return -1;
            }
            C7507c.this.f37338a.seek(this.f37350a);
            int read = C7507c.this.f37338a.read();
            this.f37350a = C7507c.this.m1359G(this.f37350a + 1);
            this.f37351b--;
            return read;
        }
    }

    /* renamed from: y5.c$d */
    /* loaded from: classes2.dex */
    public interface InterfaceC7511d {
        /* renamed from: a */
        void mo1328a(InputStream inputStream, int i);
    }

    /* renamed from: L */
    public static void m1356L(byte[] bArr, int... iArr) {
        int i = 0;
        for (int i2 : iArr) {
            m1357J(bArr, i, i2);
            i += 4;
        }
    }

    /* renamed from: o */
    public static <T> T m1344o(T t, String str) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException(str);
    }

    /* renamed from: p */
    public static RandomAccessFile m1343p(File file) {
        return new RandomAccessFile(file, "rwd");
    }

    /* renamed from: s */
    public static int m1340s(byte[] bArr, int i) {
        return ((bArr[i] & DefaultClassResolver.NAME) << 24) + ((bArr[i + 1] & DefaultClassResolver.NAME) << 16) + ((bArr[i + 2] & DefaultClassResolver.NAME) << 8) + (bArr[i + 3] & DefaultClassResolver.NAME);
    }

    /* renamed from: G */
    public final int m1359G(int i) {
        int i2 = this.f37339b;
        return i < i2 ? i : (i + 16) - i2;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public synchronized void close() {
        this.f37338a.close();
    }

    /* renamed from: g */
    public void m1351g(byte[] bArr) {
        m1350h(bArr, 0, bArr.length);
    }

    /* renamed from: h */
    public synchronized void m1350h(byte[] bArr, int i, int i2) {
        int m1359G;
        int i3;
        m1344o(bArr, "buffer");
        if ((i | i2) >= 0 && i2 <= bArr.length - i) {
            m1348j(i2);
            boolean m1345n = m1345n();
            if (m1345n) {
                m1359G = 16;
            } else {
                C7509b c7509b = this.f37342p;
                m1359G = m1359G(c7509b.f37348a + 4 + c7509b.f37349b);
            }
            C7509b c7509b2 = new C7509b(m1359G, i2);
            m1357J(this.f37343q, 0, i2);
            m1362C(c7509b2.f37348a, this.f37343q, 0, 4);
            m1362C(c7509b2.f37348a + 4, bArr, i, i2);
            if (m1345n) {
                i3 = c7509b2.f37348a;
            } else {
                i3 = this.f37341k.f37348a;
            }
            m1358H(this.f37339b, this.f37340d + 1, i3, c7509b2.f37348a);
            this.f37342p = c7509b2;
            this.f37340d++;
            if (m1345n) {
                this.f37341k = c7509b2;
            }
        } else {
            throw new IndexOutOfBoundsException();
        }
    }

    /* renamed from: i */
    public synchronized void m1349i() {
        m1358H(4096, 0, 0, 0);
        this.f37340d = 0;
        C7509b c7509b = C7509b.f37347c;
        this.f37341k = c7509b;
        this.f37342p = c7509b;
        if (this.f37339b > 4096) {
            m1361D(4096);
        }
        this.f37339b = 4096;
    }

    /* renamed from: k */
    public synchronized void m1347k(InterfaceC7511d interfaceC7511d) {
        int i = this.f37341k.f37348a;
        for (int i2 = 0; i2 < this.f37340d; i2++) {
            C7509b m1342q = m1342q(i);
            interfaceC7511d.mo1328a(new C7510c(this, m1342q, null), m1342q.f37349b);
            i = m1359G(m1342q.f37348a + 4 + m1342q.f37349b);
        }
    }

    /* renamed from: n */
    public synchronized boolean m1345n() {
        return this.f37340d == 0;
    }

    /* renamed from: t */
    public final int m1339t() {
        return this.f37339b - m1360F();
    }

    /* renamed from: w */
    public synchronized void m1338w() {
        if (!m1345n()) {
            if (this.f37340d == 1) {
                m1349i();
            } else {
                C7509b c7509b = this.f37341k;
                int m1359G = m1359G(c7509b.f37348a + 4 + c7509b.f37349b);
                m1337y(m1359G, this.f37343q, 0, 4);
                int m1340s = m1340s(this.f37343q, 0);
                m1358H(this.f37339b, this.f37340d - 1, m1359G, this.f37342p.f37348a);
                this.f37340d--;
                this.f37341k = new C7509b(m1359G, m1340s);
            }
        } else {
            throw new NoSuchElementException();
        }
    }

    /* renamed from: y5.c$b */
    /* loaded from: classes2.dex */
    public static class C7509b {

        /* renamed from: c */
        public static final C7509b f37347c = new C7509b(0, 0);

        /* renamed from: a */
        public final int f37348a;

        /* renamed from: b */
        public final int f37349b;

        public String toString() {
            return getClass().getSimpleName() + "[position = " + this.f37348a + ", length = " + this.f37349b + "]";
        }

        public C7509b(int i, int i2) {
            this.f37348a = i;
            this.f37349b = i2;
        }
    }

    /* renamed from: J */
    public static void m1357J(byte[] bArr, int i, int i2) {
        bArr[i] = (byte) (i2 >> 24);
        bArr[i + 1] = (byte) (i2 >> 16);
        bArr[i + 2] = (byte) (i2 >> 8);
        bArr[i + 3] = (byte) i2;
    }

    /* renamed from: m */
    public static void m1346m(File file) {
        File file2 = new File(file.getPath() + ".tmp");
        RandomAccessFile m1343p = m1343p(file2);
        try {
            m1343p.setLength(4096L);
            m1343p.seek(0L);
            byte[] bArr = new byte[16];
            m1356L(bArr, 4096, 0, 0, 0);
            m1343p.write(bArr);
            m1343p.close();
            if (file2.renameTo(file)) {
                return;
            }
            throw new IOException("Rename failed!");
        } catch (Throwable th) {
            m1343p.close();
            throw th;
        }
    }

    /* renamed from: D */
    public final void m1361D(int i) {
        this.f37338a.setLength(i);
        this.f37338a.getChannel().force(true);
    }

    /* renamed from: F */
    public int m1360F() {
        if (this.f37340d == 0) {
            return 16;
        }
        C7509b c7509b = this.f37342p;
        int i = c7509b.f37348a;
        int i2 = this.f37341k.f37348a;
        if (i >= i2) {
            return (i - i2) + 4 + c7509b.f37349b + 16;
        }
        return (((i + 4) + c7509b.f37349b) + this.f37339b) - i2;
    }

    /* renamed from: H */
    public final void m1358H(int i, int i2, int i3, int i4) {
        m1356L(this.f37343q, i, i2, i3, i4);
        this.f37338a.seek(0L);
        this.f37338a.write(this.f37343q);
    }

    /* renamed from: j */
    public final void m1348j(int i) {
        int i2 = i + 4;
        int m1339t = m1339t();
        if (m1339t >= i2) {
            return;
        }
        int i3 = this.f37339b;
        do {
            m1339t += i3;
            i3 <<= 1;
        } while (m1339t < i2);
        m1361D(i3);
        C7509b c7509b = this.f37342p;
        int m1359G = m1359G(c7509b.f37348a + 4 + c7509b.f37349b);
        if (m1359G < this.f37341k.f37348a) {
            FileChannel channel = this.f37338a.getChannel();
            channel.position(this.f37339b);
            long j = m1359G - 4;
            if (channel.transferTo(16L, j, channel) != j) {
                throw new AssertionError("Copied insufficient number of bytes!");
            }
        }
        int i4 = this.f37342p.f37348a;
        int i5 = this.f37341k.f37348a;
        if (i4 < i5) {
            int i6 = (this.f37339b + i4) - 16;
            m1358H(i3, this.f37340d, i5, i6);
            this.f37342p = new C7509b(i6, this.f37342p.f37349b);
        } else {
            m1358H(i3, this.f37340d, i5, i4);
        }
        this.f37339b = i3;
    }

    /* renamed from: q */
    public final C7509b m1342q(int i) {
        if (i == 0) {
            return C7509b.f37347c;
        }
        this.f37338a.seek(i);
        return new C7509b(i, this.f37338a.readInt());
    }

    /* renamed from: r */
    public final void m1341r() {
        this.f37338a.seek(0L);
        this.f37338a.readFully(this.f37343q);
        int m1340s = m1340s(this.f37343q, 0);
        this.f37339b = m1340s;
        if (m1340s <= this.f37338a.length()) {
            this.f37340d = m1340s(this.f37343q, 4);
            int m1340s2 = m1340s(this.f37343q, 8);
            int m1340s3 = m1340s(this.f37343q, 12);
            this.f37341k = m1342q(m1340s2);
            this.f37342p = m1342q(m1340s3);
            return;
        }
        throw new IOException("File is truncated. Expected length: " + this.f37339b + ", Actual length: " + this.f37338a.length());
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(TypePool.Default.LazyTypeDescription.GenericTypeToken.COMPONENT_TYPE_PATH);
        sb.append("fileLength=");
        sb.append(this.f37339b);
        sb.append(", size=");
        sb.append(this.f37340d);
        sb.append(", first=");
        sb.append(this.f37341k);
        sb.append(", last=");
        sb.append(this.f37342p);
        sb.append(", element lengths=[");
        try {
            m1347k(new C7508a(sb));
        } catch (IOException e) {
            f37337r.log(Level.WARNING, "read error", (Throwable) e);
        }
        sb.append("]]");
        return sb.toString();
    }

    public C7507c(File file) {
        if (!file.exists()) {
            m1346m(file);
        }
        this.f37338a = m1343p(file);
        m1341r();
    }

    /* renamed from: C */
    public final void m1362C(int i, byte[] bArr, int i2, int i3) {
        int m1359G = m1359G(i);
        int i4 = m1359G + i3;
        int i5 = this.f37339b;
        if (i4 <= i5) {
            this.f37338a.seek(m1359G);
            this.f37338a.write(bArr, i2, i3);
            return;
        }
        int i6 = i5 - m1359G;
        this.f37338a.seek(m1359G);
        this.f37338a.write(bArr, i2, i6);
        this.f37338a.seek(16L);
        this.f37338a.write(bArr, i2 + i6, i3 - i6);
    }

    /* renamed from: y */
    public final void m1337y(int i, byte[] bArr, int i2, int i3) {
        int m1359G = m1359G(i);
        int i4 = m1359G + i3;
        int i5 = this.f37339b;
        if (i4 <= i5) {
            this.f37338a.seek(m1359G);
            this.f37338a.readFully(bArr, i2, i3);
            return;
        }
        int i6 = i5 - m1359G;
        this.f37338a.seek(m1359G);
        this.f37338a.readFully(bArr, i2, i6);
        this.f37338a.seek(16L);
        this.f37338a.readFully(bArr, i2 + i6, i3 - i6);
    }
}
