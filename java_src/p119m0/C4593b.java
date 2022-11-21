package p119m0;

import android.content.Context;
import android.content.SharedPreferences;
import android.util.Log;
import java.io.BufferedOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FileFilter;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.nio.channels.FileChannel;
import java.nio.channels.FileLock;
import java.util.ArrayList;
import java.util.List;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import java.util.zip.ZipOutputStream;
/* renamed from: m0.b */
/* loaded from: classes.dex */
public final class C4593b implements Closeable {

    /* renamed from: a */
    public final File f18629a;

    /* renamed from: b */
    public final long f18630b;

    /* renamed from: d */
    public final File f18631d;

    /* renamed from: k */
    public final RandomAccessFile f18632k;

    /* renamed from: p */
    public final FileChannel f18633p;

    /* renamed from: q */
    public final FileLock f18634q;

    /* renamed from: m0.b$a */
    /* loaded from: classes.dex */
    public class C4594a implements FileFilter {
        public C4594a() {
        }

        @Override // java.io.FileFilter
        public boolean accept(File file) {
            return !file.getName().equals("MultiDex.lock");
        }
    }

    /* renamed from: f */
    public static SharedPreferences m15949f(Context context) {
        return context.getSharedPreferences("multidex.version", 4);
    }

    /* renamed from: g */
    public static long m15948g(File file) {
        long lastModified = file.lastModified();
        return lastModified == -1 ? lastModified - 1 : lastModified;
    }

    /* renamed from: h */
    public static long m15947h(File file) {
        long m15939c = C4596c.m15939c(file);
        return m15939c == -1 ? m15939c - 1 : m15939c;
    }

    /* renamed from: m0.b$b */
    /* loaded from: classes.dex */
    public static class C4595b extends File {

        /* renamed from: a */
        public long f18636a;

        public C4595b(File file, String str) {
            super(file, str);
            this.f18636a = -1L;
        }
    }

    /* renamed from: c */
    public final void m15952c() {
        File[] listFiles = this.f18631d.listFiles(new C4594a());
        if (listFiles == null) {
            Log.w("MultiDex", "Failed to list secondary dex dir content (" + this.f18631d.getPath() + ").");
            return;
        }
        for (File file : listFiles) {
            Log.i("MultiDex", "Trying to delete old file " + file.getPath() + " of size " + file.length());
            if (!file.delete()) {
                Log.w("MultiDex", "Failed to delete old file " + file.getPath());
            } else {
                Log.i("MultiDex", "Deleted old file " + file.getPath());
            }
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f18634q.release();
        this.f18633p.close();
        this.f18632k.close();
    }

    /* renamed from: j */
    public List<? extends File> m15945j(Context context, String str, boolean z) {
        List<C4595b> m15943m;
        List<C4595b> list;
        Log.i("MultiDex", "MultiDexExtractor.load(" + this.f18629a.getPath() + ", " + z + ", " + str + ")");
        if (this.f18634q.isValid()) {
            if (!z && !m15946i(context, this.f18629a, this.f18630b, str)) {
                try {
                    list = m15944k(context, str);
                } catch (IOException e) {
                    Log.w("MultiDex", "Failed to reload existing extracted secondary dex files, falling back to fresh extraction", e);
                    m15943m = m15943m();
                    m15942n(context, str, m15948g(this.f18629a), this.f18630b, m15943m);
                }
                Log.i("MultiDex", "load found " + list.size() + " secondary dex files");
                return list;
            }
            if (z) {
                Log.i("MultiDex", "Forced extraction must be performed.");
            } else {
                Log.i("MultiDex", "Detected that extraction must be performed.");
            }
            m15943m = m15943m();
            m15942n(context, str, m15948g(this.f18629a), this.f18630b, m15943m);
            list = m15943m;
            Log.i("MultiDex", "load found " + list.size() + " secondary dex files");
            return list;
        }
        throw new IllegalStateException("MultiDexExtractor was closed");
    }

    /* renamed from: k */
    public final List<C4595b> m15944k(Context context, String str) {
        Log.i("MultiDex", "loading existing secondary dex files");
        String str2 = this.f18629a.getName() + ".classes";
        SharedPreferences m15949f = m15949f(context);
        int i = m15949f.getInt(str + "dex.number", 1);
        ArrayList arrayList = new ArrayList(i + (-1));
        int i2 = 2;
        while (i2 <= i) {
            C4595b c4595b = new C4595b(this.f18631d, str2 + i2 + ".zip");
            if (c4595b.isFile()) {
                c4595b.f18636a = m15947h(c4595b);
                long j = m15949f.getLong(str + "dex.crc." + i2, -1L);
                long j2 = m15949f.getLong(str + "dex.time." + i2, -1L);
                long lastModified = c4595b.lastModified();
                if (j2 == lastModified) {
                    String str3 = str2;
                    SharedPreferences sharedPreferences = m15949f;
                    if (j == c4595b.f18636a) {
                        arrayList.add(c4595b);
                        i2++;
                        m15949f = sharedPreferences;
                        str2 = str3;
                    }
                }
                throw new IOException("Invalid extracted dex: " + c4595b + " (key \"" + str + "\"), expected modification time: " + j2 + ", modification time: " + lastModified + ", expected crc: " + j + ", file crc: " + c4595b.f18636a);
            }
            throw new IOException("Missing extracted secondary dex file '" + c4595b.getPath() + "'");
        }
        return arrayList;
    }

    /* renamed from: m */
    public final List<C4595b> m15943m() {
        boolean z;
        String str;
        String str2 = this.f18629a.getName() + ".classes";
        m15952c();
        ArrayList arrayList = new ArrayList();
        ZipFile zipFile = new ZipFile(this.f18629a);
        try {
            ZipEntry entry = zipFile.getEntry("classes2.dex");
            int i = 2;
            while (entry != null) {
                C4595b c4595b = new C4595b(this.f18631d, str2 + i + ".zip");
                arrayList.add(c4595b);
                Log.i("MultiDex", "Extraction is needed for file " + c4595b);
                int i2 = 0;
                boolean z2 = false;
                while (i2 < 3 && !z2) {
                    int i3 = i2 + 1;
                    m15950e(zipFile, entry, c4595b, str2);
                    try {
                        c4595b.f18636a = m15947h(c4595b);
                        z = true;
                    } catch (IOException e) {
                        Log.w("MultiDex", "Failed to read crc from " + c4595b.getAbsolutePath(), e);
                        z = false;
                    }
                    StringBuilder sb = new StringBuilder();
                    sb.append("Extraction ");
                    if (z) {
                        str = "succeeded";
                    } else {
                        str = "failed";
                    }
                    sb.append(str);
                    sb.append(" '");
                    sb.append(c4595b.getAbsolutePath());
                    sb.append("': length ");
                    sb.append(c4595b.length());
                    sb.append(" - crc: ");
                    sb.append(c4595b.f18636a);
                    Log.i("MultiDex", sb.toString());
                    if (!z) {
                        c4595b.delete();
                        if (c4595b.exists()) {
                            Log.w("MultiDex", "Failed to delete corrupted secondary dex '" + c4595b.getPath() + "'");
                        }
                    }
                    z2 = z;
                    i2 = i3;
                }
                if (z2) {
                    i++;
                    entry = zipFile.getEntry("classes" + i + ".dex");
                } else {
                    throw new IOException("Could not create zip file " + c4595b.getAbsolutePath() + " for secondary dex (" + i + ")");
                }
            }
            try {
                zipFile.close();
            } catch (IOException e2) {
                Log.w("MultiDex", "Failed to close resource", e2);
            }
            return arrayList;
        } catch (Throwable th) {
            try {
                zipFile.close();
            } catch (IOException e3) {
                Log.w("MultiDex", "Failed to close resource", e3);
            }
            throw th;
        }
    }

    public C4593b(File file, File file2) {
        Log.i("MultiDex", "MultiDexExtractor(" + file.getPath() + ", " + file2.getPath() + ")");
        this.f18629a = file;
        this.f18631d = file2;
        this.f18630b = m15947h(file);
        File file3 = new File(file2, "MultiDex.lock");
        RandomAccessFile randomAccessFile = new RandomAccessFile(file3, "rw");
        this.f18632k = randomAccessFile;
        try {
            FileChannel channel = randomAccessFile.getChannel();
            this.f18633p = channel;
            try {
                Log.i("MultiDex", "Blocking on lock " + file3.getPath());
                this.f18634q = channel.lock();
                Log.i("MultiDex", file3.getPath() + " locked");
            } catch (IOException e) {
                e = e;
                m15951d(this.f18633p);
                throw e;
            } catch (Error e2) {
                e = e2;
                m15951d(this.f18633p);
                throw e;
            } catch (RuntimeException e3) {
                e = e3;
                m15951d(this.f18633p);
                throw e;
            }
        } catch (IOException | Error | RuntimeException e4) {
            m15951d(this.f18632k);
            throw e4;
        }
    }

    /* renamed from: d */
    public static void m15951d(Closeable closeable) {
        try {
            closeable.close();
        } catch (IOException e) {
            Log.w("MultiDex", "Failed to close resource", e);
        }
    }

    /* renamed from: e */
    public static void m15950e(ZipFile zipFile, ZipEntry zipEntry, File file, String str) {
        InputStream inputStream = zipFile.getInputStream(zipEntry);
        File createTempFile = File.createTempFile("tmp-" + str, ".zip", file.getParentFile());
        Log.i("MultiDex", "Extracting " + createTempFile.getPath());
        try {
            ZipOutputStream zipOutputStream = new ZipOutputStream(new BufferedOutputStream(new FileOutputStream(createTempFile)));
            ZipEntry zipEntry2 = new ZipEntry("classes.dex");
            zipEntry2.setTime(zipEntry.getTime());
            zipOutputStream.putNextEntry(zipEntry2);
            byte[] bArr = new byte[16384];
            for (int read = inputStream.read(bArr); read != -1; read = inputStream.read(bArr)) {
                zipOutputStream.write(bArr, 0, read);
            }
            zipOutputStream.closeEntry();
            zipOutputStream.close();
            if (createTempFile.setReadOnly()) {
                Log.i("MultiDex", "Renaming to " + file.getPath());
                if (createTempFile.renameTo(file)) {
                    return;
                }
                throw new IOException("Failed to rename \"" + createTempFile.getAbsolutePath() + "\" to \"" + file.getAbsolutePath() + "\"");
            }
            throw new IOException("Failed to mark readonly \"" + createTempFile.getAbsolutePath() + "\" (tmp of \"" + file.getAbsolutePath() + "\")");
        } finally {
            m15951d(inputStream);
            createTempFile.delete();
        }
    }

    /* renamed from: i */
    public static boolean m15946i(Context context, File file, long j, String str) {
        SharedPreferences m15949f = m15949f(context);
        if (m15949f.getLong(str + "timestamp", -1L) == m15948g(file)) {
            if (m15949f.getLong(str + "crc", -1L) == j) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: n */
    public static void m15942n(Context context, String str, long j, long j2, List<C4595b> list) {
        SharedPreferences.Editor edit = m15949f(context).edit();
        edit.putLong(str + "timestamp", j);
        edit.putLong(str + "crc", j2);
        edit.putInt(str + "dex.number", list.size() + 1);
        int i = 2;
        for (C4595b c4595b : list) {
            edit.putLong(str + "dex.crc." + i, c4595b.f18636a);
            edit.putLong(str + "dex.time." + i, c4595b.lastModified());
            i++;
        }
        edit.commit();
    }
}
