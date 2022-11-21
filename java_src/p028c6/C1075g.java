package p028c6;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileFilter;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.atomic.AtomicInteger;
import net.bytebuddy.utility.JavaConstant;
import p007a6.C0118g;
import p053e6.InterfaceC3385e;
import p196u5.C6930f;
import p222x5.AbstractC7375o;
import p238z5.AbstractC7762a0;
import p238z5.C7806b0;
/* renamed from: c6.g */
/* loaded from: classes2.dex */
public class C1075g {

    /* renamed from: g */
    public static final Charset f2968g = Charset.forName("UTF-8");

    /* renamed from: h */
    public static final int f2969h = 15;

    /* renamed from: i */
    public static final C0118g f2970i = new C0118g();

    /* renamed from: j */
    public static final Comparator<? super File> f2971j = new Comparator() { // from class: c6.b
        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            int m24690C;
            m24690C = C1075g.m24690C((File) obj, (File) obj2);
            return m24690C;
        }
    };

    /* renamed from: k */
    public static final FilenameFilter f2972k = new FilenameFilter() { // from class: c6.c
        @Override // java.io.FilenameFilter
        public final boolean accept(File file, String str) {
            boolean startsWith;
            startsWith = str.startsWith("event");
            return startsWith;
        }
    };

    /* renamed from: a */
    public final AtomicInteger f2973a = new AtomicInteger(0);

    /* renamed from: b */
    public final File f2974b;

    /* renamed from: c */
    public final File f2975c;

    /* renamed from: d */
    public final File f2976d;

    /* renamed from: e */
    public final File f2977e;

    /* renamed from: f */
    public final InterfaceC3385e f2978f;

    /* renamed from: A */
    public static /* synthetic */ boolean m24692A(String str, File file) {
        return file.isDirectory() && !file.getName().equals(str);
    }

    /* renamed from: C */
    public static /* synthetic */ int m24690C(File file, File file2) {
        return file2.getName().compareTo(file.getName());
    }

    /* renamed from: G */
    public static boolean m24686G(File file) {
        return file.exists() || file.mkdirs();
    }

    /* renamed from: N */
    public static List<File> m24679N(List<File>... listArr) {
        for (List<File> list : listArr) {
            Collections.sort(list, f2971j);
        }
        return m24663j(listArr);
    }

    /* renamed from: k */
    public static long m24662k(long j) {
        return j * 1000;
    }

    /* renamed from: q */
    public static List<File> m24656q(File file) {
        return m24653t(file, null);
    }

    /* renamed from: s */
    public static String m24654s(String str) {
        return str.substring(0, f2969h);
    }

    /* renamed from: y */
    public static boolean m24648y(String str) {
        return str.startsWith("event") && str.endsWith(JavaConstant.Dynamic.DEFAULT_NAME);
    }

    /* renamed from: z */
    public static boolean m24647z(File file, String str) {
        return str.startsWith("event") && !str.endsWith(JavaConstant.Dynamic.DEFAULT_NAME);
    }

    /* renamed from: r */
    public final List<File> m24655r() {
        return m24679N(m24663j(m24656q(this.f2975c), m24656q(this.f2977e)), m24656q(this.f2976d));
    }

    /* renamed from: v */
    public final File m24651v(String str) {
        return new File(this.f2974b, str);
    }

    /* renamed from: x */
    public boolean m24649x() {
        return !m24655r().isEmpty();
    }

    /* renamed from: L */
    public static String m24681L(File file) {
        byte[] bArr = new byte[8192];
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        FileInputStream fileInputStream = new FileInputStream(file);
        while (true) {
            try {
                int read = fileInputStream.read(bArr);
                if (read > 0) {
                    byteArrayOutputStream.write(bArr, 0, read);
                } else {
                    String str = new String(byteArrayOutputStream.toByteArray(), f2968g);
                    fileInputStream.close();
                    return str;
                }
            } catch (Throwable th) {
                try {
                    fileInputStream.close();
                } catch (Throwable th2) {
                    Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th, th2);
                }
                throw th;
            }
        }
    }

    /* renamed from: M */
    public static void m24680M(File file) {
        if (file == null) {
            return;
        }
        if (file.isDirectory()) {
            for (File file2 : file.listFiles()) {
                m24680M(file2);
            }
        }
        file.delete();
    }

    /* renamed from: O */
    public static void m24678O(File file, File file2, AbstractC7762a0.AbstractC7768d abstractC7768d, String str) {
        try {
            C0118g c0118g = f2970i;
            m24674S(new File(m24682K(file2), str), c0118g.m27663E(c0118g.m27664D(m24681L(file)).m365m(abstractC7768d)));
        } catch (IOException e) {
            C6930f m3016f = C6930f.m3016f();
            m3016f.m3010l("Could not synthesize final native report file for " + file, e);
        }
    }

    /* renamed from: Q */
    public static void m24676Q(File file, File file2, List<AbstractC7762a0.AbstractC7772e.AbstractC7779d> list, long j, boolean z, String str) {
        try {
            C0118g c0118g = f2970i;
            AbstractC7762a0 m366l = c0118g.m27664D(m24681L(file)).m364n(j, z, str).m366l(C7806b0.m320d(list));
            AbstractC7762a0.AbstractC7772e mo331j = m366l.mo331j();
            if (mo331j == null) {
                return;
            }
            m24674S(new File(m24682K(file2), mo331j.mo276h()), c0118g.m27663E(m366l));
        } catch (IOException e) {
            C6930f m3016f = C6930f.m3016f();
            m3016f.m3010l("Could not synthesize final report file for " + file, e);
        }
    }

    /* renamed from: R */
    public static int m24675R(File file, int i) {
        List<File> m24652u = m24652u(file, new FilenameFilter() { // from class: c6.d
            @Override // java.io.FilenameFilter
            public final boolean accept(File file2, String str) {
                boolean m24647z;
                m24647z = C1075g.m24647z(file2, str);
                return m24647z;
            }
        });
        Collections.sort(m24652u, new Comparator() { // from class: c6.e
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int m24685H;
                m24685H = C1075g.m24685H((File) obj, (File) obj2);
                return m24685H;
            }
        });
        return m24665h(m24652u, i);
    }

    /* renamed from: S */
    public static void m24674S(File file, String str) {
        OutputStreamWriter outputStreamWriter = new OutputStreamWriter(new FileOutputStream(file), f2968g);
        try {
            outputStreamWriter.write(str);
            outputStreamWriter.close();
        } catch (Throwable th) {
            try {
                outputStreamWriter.close();
            } catch (Throwable th2) {
                Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th, th2);
            }
            throw th;
        }
    }

    /* renamed from: T */
    public static void m24673T(File file, String str, long j) {
        OutputStreamWriter outputStreamWriter = new OutputStreamWriter(new FileOutputStream(file), f2968g);
        try {
            outputStreamWriter.write(str);
            file.setLastModified(m24662k(j));
            outputStreamWriter.close();
        } catch (Throwable th) {
            try {
                outputStreamWriter.close();
            } catch (Throwable th2) {
                Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th, th2);
            }
            throw th;
        }
    }

    /* renamed from: j */
    public static List<File> m24663j(List<File>... listArr) {
        ArrayList arrayList = new ArrayList();
        int i = 0;
        for (List<File> list : listArr) {
            i += list.size();
        }
        arrayList.ensureCapacity(i);
        for (List<File> list2 : listArr) {
            arrayList.addAll(list2);
        }
        return arrayList;
    }

    /* renamed from: p */
    public static String m24657p(int i, boolean z) {
        String str;
        String format = String.format(Locale.US, "%010d", Integer.valueOf(i));
        if (z) {
            str = JavaConstant.Dynamic.DEFAULT_NAME;
        } else {
            str = "";
        }
        return "event" + format + str;
    }

    /* renamed from: E */
    public List<String> m24688E() {
        List<File> m24656q = m24656q(this.f2974b);
        Collections.sort(m24656q, f2971j);
        ArrayList arrayList = new ArrayList();
        for (File file : m24656q) {
            arrayList.add(file.getName());
        }
        return arrayList;
    }

    /* renamed from: I */
    public void m24684I(AbstractC7762a0.AbstractC7772e.AbstractC7779d abstractC7779d, String str, boolean z) {
        int i = this.f2978f.mo19012b().mo18715b().f15996a;
        File m24651v = m24651v(str);
        try {
            m24674S(new File(m24651v, m24657p(this.f2973a.getAndIncrement(), z)), f2970i.m27655h(abstractC7779d));
        } catch (IOException e) {
            C6930f m3016f = C6930f.m3016f();
            m3016f.m3010l("Could not persist event for session " + str, e);
        }
        m24675R(m24651v, i);
    }

    /* renamed from: P */
    public final void m24677P(File file, long j) {
        boolean z;
        File file2;
        List<File> m24652u = m24652u(file, f2972k);
        if (m24652u.isEmpty()) {
            C6930f m3016f = C6930f.m3016f();
            m3016f.m3013i("Session " + file.getName() + " has no events.");
            return;
        }
        Collections.sort(m24652u);
        ArrayList arrayList = new ArrayList();
        loop0: while (true) {
            z = false;
            for (File file3 : m24652u) {
                try {
                    arrayList.add(f2970i.m27656g(m24681L(file3)));
                } catch (IOException e) {
                    C6930f m3016f2 = C6930f.m3016f();
                    m3016f2.m3010l("Could not add event to report for " + file3, e);
                }
                if (z || m24648y(file3.getName())) {
                    z = true;
                }
            }
        }
        if (arrayList.isEmpty()) {
            C6930f m3016f3 = C6930f.m3016f();
            m3016f3.m3011k("Could not parse event files for session " + file.getName());
            return;
        }
        String str = null;
        File file4 = new File(file, "user");
        if (file4.isFile()) {
            try {
                str = m24681L(file4);
            } catch (IOException e2) {
                C6930f m3016f4 = C6930f.m3016f();
                m3016f4.m3010l("Could not read user ID file in " + file.getName(), e2);
            }
        }
        String str2 = str;
        File file5 = new File(file, "report");
        if (z) {
            file2 = this.f2975c;
        } else {
            file2 = this.f2976d;
        }
        m24676Q(file5, file2, arrayList, j, z, str2);
    }

    /* renamed from: g */
    public final List<File> m24666g(final String str) {
        List<File> m24653t = m24653t(this.f2974b, new FileFilter() { // from class: c6.a
            @Override // java.io.FileFilter
            public final boolean accept(File file) {
                boolean m24692A;
                m24692A = C1075g.m24692A(str, file);
                return m24692A;
            }
        });
        Collections.sort(m24653t, f2971j);
        if (m24653t.size() <= 8) {
            return m24653t;
        }
        for (File file : m24653t.subList(8, m24653t.size())) {
            m24680M(file);
        }
        return m24653t.subList(0, 8);
    }

    /* renamed from: i */
    public final void m24664i() {
        int i = this.f2978f.mo19012b().mo18715b().f15997b;
        List<File> m24655r = m24655r();
        int size = m24655r.size();
        if (size <= i) {
            return;
        }
        for (File file : m24655r.subList(i, size)) {
            file.delete();
        }
    }

    /* renamed from: m */
    public void m24660m(final String str) {
        FilenameFilter filenameFilter = new FilenameFilter() { // from class: c6.f
            @Override // java.io.FilenameFilter
            public final boolean accept(File file, String str2) {
                boolean startsWith;
                startsWith = str2.startsWith(str);
                return startsWith;
            }
        };
        for (File file : m24663j(m24652u(this.f2975c, filenameFilter), m24652u(this.f2977e, filenameFilter), m24652u(this.f2976d, filenameFilter))) {
            file.delete();
        }
    }

    /* renamed from: o */
    public void m24658o(String str, AbstractC7762a0.AbstractC7768d abstractC7768d) {
        m24678O(new File(m24651v(str), "report"), this.f2977e, abstractC7768d, str);
    }

    public C1075g(File file, InterfaceC3385e interfaceC3385e) {
        File file2 = new File(file, "report-persistence");
        this.f2974b = new File(file2, "sessions");
        this.f2975c = new File(file2, "priority-reports");
        this.f2976d = new File(file2, "reports");
        this.f2977e = new File(file2, "native-reports");
        this.f2978f = interfaceC3385e;
    }

    /* renamed from: H */
    public static int m24685H(File file, File file2) {
        return m24654s(file.getName()).compareTo(m24654s(file2.getName()));
    }

    /* renamed from: K */
    public static File m24682K(File file) {
        if (m24686G(file)) {
            return file;
        }
        throw new IOException("Could not create directory " + file);
    }

    /* renamed from: h */
    public static int m24665h(List<File> list, int i) {
        int size = list.size();
        for (File file : list) {
            if (size <= i) {
                return size;
            }
            m24680M(file);
            size--;
        }
        return size;
    }

    /* renamed from: t */
    public static List<File> m24653t(File file, FileFilter fileFilter) {
        File[] listFiles;
        if (!file.isDirectory()) {
            return Collections.emptyList();
        }
        if (fileFilter == null) {
            listFiles = file.listFiles();
        } else {
            listFiles = file.listFiles(fileFilter);
        }
        if (listFiles != null) {
            return Arrays.asList(listFiles);
        }
        return Collections.emptyList();
    }

    /* renamed from: u */
    public static List<File> m24652u(File file, FilenameFilter filenameFilter) {
        File[] listFiles;
        if (!file.isDirectory()) {
            return Collections.emptyList();
        }
        if (filenameFilter == null) {
            listFiles = file.listFiles();
        } else {
            listFiles = file.listFiles(filenameFilter);
        }
        if (listFiles != null) {
            return Arrays.asList(listFiles);
        }
        return Collections.emptyList();
    }

    /* renamed from: F */
    public List<AbstractC7375o> m24687F() {
        List<File> m24655r = m24655r();
        ArrayList arrayList = new ArrayList();
        arrayList.ensureCapacity(m24655r.size());
        for (File file : m24655r()) {
            try {
                arrayList.add(AbstractC7375o.m1641a(f2970i.m27664D(m24681L(file)), file.getName()));
            } catch (IOException e) {
                C6930f m3016f = C6930f.m3016f();
                m3016f.m3010l("Could not load report file " + file + "; deleting", e);
                file.delete();
            }
        }
        return arrayList;
    }

    /* renamed from: J */
    public void m24683J(AbstractC7762a0 abstractC7762a0) {
        AbstractC7762a0.AbstractC7772e mo331j = abstractC7762a0.mo331j();
        if (mo331j == null) {
            C6930f.m3016f().m3020b("Could not get session for report");
            return;
        }
        String mo276h = mo331j.mo276h();
        try {
            File m24682K = m24682K(m24651v(mo276h));
            m24674S(new File(m24682K, "report"), f2970i.m27663E(abstractC7762a0));
            m24673T(new File(m24682K, "start-time"), "", mo331j.mo274k());
        } catch (IOException e) {
            C6930f m3016f = C6930f.m3016f();
            m3016f.m3019c("Could not persist report for session " + mo276h, e);
        }
    }

    /* renamed from: l */
    public void m24661l() {
        for (File file : m24655r()) {
            file.delete();
        }
    }

    /* renamed from: n */
    public void m24659n(String str, long j) {
        for (File file : m24666g(str)) {
            C6930f m3016f = C6930f.m3016f();
            m3016f.m3013i("Finalizing report for session " + file.getName());
            m24677P(file, j);
            m24680M(file);
        }
        m24664i();
    }

    /* renamed from: w */
    public long m24650w(String str) {
        return new File(m24651v(str), "start-time").lastModified();
    }
}
