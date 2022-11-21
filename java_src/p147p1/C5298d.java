package p147p1;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import net.bytebuddy.description.type.PackageDescription;
import p111l1.C4558e;
/* renamed from: p1.d */
/* loaded from: classes.dex */
public class C5298d {

    /* renamed from: e */
    public static final InterfaceC5303e f19870e = new C5299a();

    /* renamed from: a */
    public final String f19871a;

    /* renamed from: b */
    public final InterfaceC5302d f19872b;

    /* renamed from: c */
    public final boolean f19873c;

    /* renamed from: d */
    public InterfaceC5303e f19874d;

    /* renamed from: p1.d$a */
    /* loaded from: classes.dex */
    public static class C5299a implements InterfaceC5303e {
        @Override // p147p1.C5298d.InterfaceC5303e
        public boolean accept(String str) {
            return true;
        }
    }

    /* renamed from: p1.d$b */
    /* loaded from: classes.dex */
    public class C5300b implements Comparator<File> {
        public C5300b() {
        }

        @Override // java.util.Comparator
        /* renamed from: a */
        public int compare(File file, File file2) {
            return C5298d.m13604b(file.getName(), file2.getName());
        }
    }

    /* renamed from: p1.d$c */
    /* loaded from: classes.dex */
    public class C5301c implements Comparator<ZipEntry> {
        public C5301c() {
        }

        @Override // java.util.Comparator
        /* renamed from: a */
        public int compare(ZipEntry zipEntry, ZipEntry zipEntry2) {
            return C5298d.m13604b(zipEntry.getName(), zipEntry2.getName());
        }
    }

    /* renamed from: p1.d$d */
    /* loaded from: classes.dex */
    public interface InterfaceC5302d {
        void onException(Exception exc);

        void onProcessArchiveStart(File file);

        boolean processFileBytes(String str, long j, byte[] bArr);
    }

    /* renamed from: p1.d$e */
    /* loaded from: classes.dex */
    public interface InterfaceC5303e {
        boolean accept(String str);
    }

    /* renamed from: f */
    public final boolean m13600f(File file, boolean z) {
        try {
            if (file.isDirectory()) {
                return m13601e(file, z);
            }
            String path = file.getPath();
            if (!path.endsWith(".zip") && !path.endsWith(".jar") && !path.endsWith(".apk")) {
                if (this.f19874d.accept(path)) {
                    return this.f19872b.processFileBytes(path, file.lastModified(), C4558e.m16008b(file));
                }
                return false;
            }
            return m13602d(file);
        } catch (Exception e) {
            this.f19872b.onException(e);
            return false;
        }
    }

    /* renamed from: b */
    public static int m13604b(String str, String str2) {
        return str.replace('$', '0').replace(PackageDescription.PACKAGE_CLASS_NAME, "").compareTo(str2.replace('$', '0').replace(PackageDescription.PACKAGE_CLASS_NAME, ""));
    }

    /* renamed from: c */
    public boolean m13603c() {
        return m13600f(new File(this.f19871a), true);
    }

    /* renamed from: d */
    public final boolean m13602d(File file) {
        byte[] bArr;
        ZipFile zipFile = new ZipFile(file);
        ArrayList list = Collections.list(zipFile.entries());
        if (this.f19873c) {
            Collections.sort(list, new C5301c());
        }
        this.f19872b.onProcessArchiveStart(file);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(40000);
        byte[] bArr2 = new byte[20000];
        Iterator it = list.iterator();
        boolean z = false;
        while (it.hasNext()) {
            ZipEntry zipEntry = (ZipEntry) it.next();
            boolean isDirectory = zipEntry.isDirectory();
            String name = zipEntry.getName();
            if (this.f19874d.accept(name)) {
                if (!isDirectory) {
                    InputStream inputStream = zipFile.getInputStream(zipEntry);
                    byteArrayOutputStream.reset();
                    while (true) {
                        int read = inputStream.read(bArr2);
                        if (read == -1) {
                            break;
                        }
                        byteArrayOutputStream.write(bArr2, 0, read);
                    }
                    inputStream.close();
                    bArr = byteArrayOutputStream.toByteArray();
                } else {
                    bArr = new byte[0];
                }
                z |= this.f19872b.processFileBytes(name, zipEntry.getTime(), bArr);
            }
        }
        zipFile.close();
        return z;
    }

    /* renamed from: e */
    public final boolean m13601e(File file, boolean z) {
        if (z) {
            file = new File(file, ".");
        }
        File[] listFiles = file.listFiles();
        if (this.f19873c) {
            Arrays.sort(listFiles, new C5300b());
        }
        boolean z2 = false;
        for (File file2 : listFiles) {
            z2 |= m13600f(file2, false);
        }
        return z2;
    }

    public C5298d(String str, boolean z, InterfaceC5303e interfaceC5303e, InterfaceC5302d interfaceC5302d) {
        this.f19871a = str;
        this.f19873c = z;
        this.f19872b = interfaceC5302d;
        this.f19874d = interfaceC5303e;
    }
}
