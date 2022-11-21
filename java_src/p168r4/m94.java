package p168r4;

import android.os.SystemClock;
import android.text.TextUtils;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.DataInputStream;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
/* renamed from: r4.m94 */
/* loaded from: classes2.dex */
public final class m94 implements z74 {

    /* renamed from: c */
    public final l94 f27553c;

    /* renamed from: a */
    public final Map<String, j94> f27551a = new LinkedHashMap(16, 0.75f, true);

    /* renamed from: b */
    public long f27552b = 0;

    /* renamed from: d */
    public final int f27554d = 20971520;

    public m94(l94 l94Var, int i) {
        this.f27553c = l94Var;
    }

    /* renamed from: i */
    public static void m9452i(OutputStream outputStream, long j) {
        outputStream.write((byte) j);
        outputStream.write((byte) (j >>> 8));
        outputStream.write((byte) (j >>> 16));
        outputStream.write((byte) (j >>> 24));
        outputStream.write((byte) (j >>> 32));
        outputStream.write((byte) (j >>> 40));
        outputStream.write((byte) (j >>> 48));
        outputStream.write((byte) (j >>> 56));
    }

    @Override // p168r4.z74
    /* renamed from: a */
    public final synchronized void mo4409a(String str, y74 y74Var) {
        long j;
        long j2 = this.f27552b;
        int length = y74Var.f33997a.length;
        int i = this.f27554d;
        if (j2 + length > i && length > i * 0.9f) {
            return;
        }
        File m9456e = m9456e(str);
        try {
            BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(m9456e));
            j94 j94Var = new j94(str, y74Var);
            try {
                m9454g(bufferedOutputStream, 538247942);
                m9450k(bufferedOutputStream, j94Var.f25966b);
                String str2 = j94Var.f25967c;
                if (str2 == null) {
                    str2 = "";
                }
                m9450k(bufferedOutputStream, str2);
                m9452i(bufferedOutputStream, j94Var.f25968d);
                m9452i(bufferedOutputStream, j94Var.f25969e);
                m9452i(bufferedOutputStream, j94Var.f25970f);
                m9452i(bufferedOutputStream, j94Var.f25971g);
                List<h84> list = j94Var.f25972h;
                if (list != null) {
                    m9454g(bufferedOutputStream, list.size());
                    for (h84 h84Var : list) {
                        m9450k(bufferedOutputStream, h84Var.m10960a());
                        m9450k(bufferedOutputStream, h84Var.m10959b());
                    }
                } else {
                    m9454g(bufferedOutputStream, 0);
                }
                bufferedOutputStream.flush();
                bufferedOutputStream.write(y74Var.f33997a);
                bufferedOutputStream.close();
                j94Var.f25965a = m9456e.length();
                m9448m(str, j94Var);
                if (this.f27552b >= this.f27554d) {
                    if (c94.f21450b) {
                        c94.m12507a("Pruning old cache entries.", new Object[0]);
                    }
                    long j3 = this.f27552b;
                    long elapsedRealtime = SystemClock.elapsedRealtime();
                    Iterator<Map.Entry<String, j94>> it = this.f27551a.entrySet().iterator();
                    int i2 = 0;
                    while (true) {
                        if (it.hasNext()) {
                            j94 value = it.next().getValue();
                            if (m9456e(value.f25966b).delete()) {
                                j = elapsedRealtime;
                                this.f27552b -= value.f25965a;
                            } else {
                                j = elapsedRealtime;
                                String str3 = value.f25966b;
                                c94.m12506b("Could not delete cache entry for key=%s, filename=%s", str3, m9445p(str3));
                            }
                            it.remove();
                            i2++;
                            if (((float) this.f27552b) < this.f27554d * 0.9f) {
                                break;
                            }
                            elapsedRealtime = j;
                        } else {
                            j = elapsedRealtime;
                            break;
                        }
                    }
                    if (c94.f21450b) {
                        c94.m12507a("pruned %d files, %d bytes, %d ms", Integer.valueOf(i2), Long.valueOf(this.f27552b - j3), Long.valueOf(SystemClock.elapsedRealtime() - j));
                    }
                }
            } catch (IOException e) {
                c94.m12506b("%s", e.toString());
                bufferedOutputStream.close();
                c94.m12506b("Failed to write header for %s", m9456e.getAbsolutePath());
                throw new IOException();
            }
        } catch (IOException unused) {
            if (!m9456e.delete()) {
                c94.m12506b("Could not clean up file %s", m9456e.getAbsolutePath());
            }
            if (!this.f27553c.zza().exists()) {
                c94.m12506b("Re-initializing cache after external clearing.", new Object[0]);
                this.f27551a.clear();
                this.f27552b = 0L;
                mo4408b();
            }
        }
    }

    @Override // p168r4.z74
    /* renamed from: b */
    public final synchronized void mo4408b() {
        long length;
        k94 k94Var;
        File zza = this.f27553c.zza();
        if (!zza.exists()) {
            if (!zza.mkdirs()) {
                c94.m12505c("Unable to create cache dir %s", zza.getAbsolutePath());
                return;
            }
            return;
        }
        File[] listFiles = zza.listFiles();
        if (listFiles == null) {
            return;
        }
        for (File file : listFiles) {
            try {
                length = file.length();
                k94Var = new k94(new BufferedInputStream(new FileInputStream(file)), length);
            } catch (IOException unused) {
                file.delete();
            }
            try {
                j94 m10375a = j94.m10375a(k94Var);
                m10375a.f25965a = length;
                m9448m(m10375a.f25966b, m10375a);
                k94Var.close();
            } catch (Throwable th) {
                k94Var.close();
                throw th;
                break;
            }
        }
    }

    @Override // p168r4.z74
    /* renamed from: c */
    public final synchronized void mo4407c(String str, boolean z) {
        y74 mo4406q = mo4406q(str);
        if (mo4406q != null) {
            mo4406q.f34002f = 0L;
            mo4406q.f34001e = 0L;
            mo4409a(str, mo4406q);
        }
    }

    /* renamed from: d */
    public final synchronized void m9457d(String str) {
        boolean delete = m9456e(str).delete();
        m9447n(str);
        if (!delete) {
            c94.m12506b("Could not delete cache entry for key=%s, filename=%s", str, m9445p(str));
        }
    }

    /* renamed from: e */
    public final File m9456e(String str) {
        return new File(this.f27553c.zza(), m9445p(str));
    }

    /* renamed from: n */
    public final void m9447n(String str) {
        j94 remove = this.f27551a.remove(str);
        if (remove != null) {
            this.f27552b -= remove.f25965a;
        }
    }

    @Override // p168r4.z74
    /* renamed from: q */
    public final synchronized y74 mo4406q(String str) {
        j94 j94Var = this.f27551a.get(str);
        if (j94Var == null) {
            return null;
        }
        File m9456e = m9456e(str);
        try {
            k94 k94Var = new k94(new BufferedInputStream(new FileInputStream(m9456e)), m9456e.length());
            try {
                j94 m10375a = j94.m10375a(k94Var);
                if (!TextUtils.equals(str, m10375a.f25966b)) {
                    c94.m12506b("%s: key=%s, found=%s", m9456e.getAbsolutePath(), str, m10375a.f25966b);
                    m9447n(str);
                    return null;
                }
                byte[] m9455f = m9455f(k94Var, k94Var.m10083c());
                y74 y74Var = new y74();
                y74Var.f33997a = m9455f;
                y74Var.f33998b = j94Var.f25967c;
                y74Var.f33999c = j94Var.f25968d;
                y74Var.f34000d = j94Var.f25969e;
                y74Var.f34001e = j94Var.f25970f;
                y74Var.f34002f = j94Var.f25971g;
                List<h84> list = j94Var.f25972h;
                TreeMap treeMap = new TreeMap(String.CASE_INSENSITIVE_ORDER);
                for (h84 h84Var : list) {
                    treeMap.put(h84Var.m10960a(), h84Var.m10959b());
                }
                y74Var.f34003g = treeMap;
                y74Var.f34004h = Collections.unmodifiableList(j94Var.f25972h);
                return y74Var;
            } finally {
                k94Var.close();
            }
        } catch (IOException e) {
            c94.m12506b("%s: %s", m9456e.getAbsolutePath(), e.toString());
            m9457d(str);
            return null;
        }
    }

    public m94(File file, int i) {
        this.f27553c = new i94(this, file);
    }

    /* renamed from: g */
    public static void m9454g(OutputStream outputStream, int i) {
        outputStream.write(i & 255);
        outputStream.write((i >> 8) & 255);
        outputStream.write((i >> 16) & 255);
        outputStream.write((i >> 24) & 255);
    }

    /* renamed from: k */
    public static void m9450k(OutputStream outputStream, String str) {
        byte[] bytes = str.getBytes("UTF-8");
        int length = bytes.length;
        m9452i(outputStream, length);
        outputStream.write(bytes, 0, length);
    }

    /* renamed from: m */
    public final void m9448m(String str, j94 j94Var) {
        if (!this.f27551a.containsKey(str)) {
            this.f27552b += j94Var.f25965a;
        } else {
            this.f27552b += j94Var.f25965a - this.f27551a.get(str).f25965a;
        }
        this.f27551a.put(str, j94Var);
    }

    /* renamed from: f */
    public static byte[] m9455f(k94 k94Var, long j) {
        long m10083c = k94Var.m10083c();
        if (j >= 0 && j <= m10083c) {
            int i = (int) j;
            if (i == j) {
                byte[] bArr = new byte[i];
                new DataInputStream(k94Var).readFully(bArr);
                return bArr;
            }
        }
        StringBuilder sb = new StringBuilder(73);
        sb.append("streamToBytes length=");
        sb.append(j);
        sb.append(", maxLength=");
        sb.append(m10083c);
        throw new IOException(sb.toString());
    }

    /* renamed from: h */
    public static int m9453h(InputStream inputStream) {
        return (m9446o(inputStream) << 24) | m9446o(inputStream) | (m9446o(inputStream) << 8) | (m9446o(inputStream) << 16);
    }

    /* renamed from: j */
    public static long m9451j(InputStream inputStream) {
        return (m9446o(inputStream) & 255) | ((m9446o(inputStream) & 255) << 8) | ((m9446o(inputStream) & 255) << 16) | ((m9446o(inputStream) & 255) << 24) | ((m9446o(inputStream) & 255) << 32) | ((m9446o(inputStream) & 255) << 40) | ((m9446o(inputStream) & 255) << 48) | ((255 & m9446o(inputStream)) << 56);
    }

    /* renamed from: l */
    public static String m9449l(k94 k94Var) {
        return new String(m9455f(k94Var, m9451j(k94Var)), "UTF-8");
    }

    /* renamed from: o */
    public static int m9446o(InputStream inputStream) {
        int read = inputStream.read();
        if (read != -1) {
            return read;
        }
        throw new EOFException();
    }

    /* renamed from: p */
    public static final String m9445p(String str) {
        int length = str.length() / 2;
        String valueOf = String.valueOf(String.valueOf(str.substring(0, length).hashCode()));
        String valueOf2 = String.valueOf(String.valueOf(str.substring(length).hashCode()));
        if (valueOf2.length() != 0) {
            return valueOf.concat(valueOf2);
        }
        return new String(valueOf);
    }
}
