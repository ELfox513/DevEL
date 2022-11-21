package p119m0;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.os.Build;
import android.util.Log;
import dalvik.system.DexFile;
import java.io.File;
import java.io.IOException;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.zip.ZipFile;
/* renamed from: m0.a */
/* loaded from: classes.dex */
public final class C4586a {

    /* renamed from: a */
    public static final Set<File> f18622a = new HashSet();

    /* renamed from: b */
    public static final boolean f18623b = m15960m(System.getProperty("java.vm.version"));

    /* renamed from: m0.a$a */
    /* loaded from: classes.dex */
    public static final class C4587a {

        /* renamed from: b */
        public static final int f18624b = 4;

        /* renamed from: a */
        public final InterfaceC4588a f18625a;

        /* renamed from: m0.a$a$a */
        /* loaded from: classes.dex */
        public interface InterfaceC4588a {
            /* renamed from: a */
            Object mo15955a(File file, DexFile dexFile);
        }

        /* renamed from: m0.a$a$b */
        /* loaded from: classes.dex */
        public static class C4589b implements InterfaceC4588a {

            /* renamed from: a */
            public final Constructor<?> f18626a;

            @Override // p119m0.C4586a.C4587a.InterfaceC4588a
            /* renamed from: a */
            public Object mo15955a(File file, DexFile dexFile) {
                return this.f18626a.newInstance(file, new ZipFile(file), dexFile);
            }

            public C4589b(Class<?> cls) {
                Constructor<?> constructor = cls.getConstructor(File.class, ZipFile.class, DexFile.class);
                this.f18626a = constructor;
                constructor.setAccessible(true);
            }
        }

        /* renamed from: m0.a$a$c */
        /* loaded from: classes.dex */
        public static class C4590c implements InterfaceC4588a {

            /* renamed from: a */
            public final Constructor<?> f18627a;

            @Override // p119m0.C4586a.C4587a.InterfaceC4588a
            /* renamed from: a */
            public Object mo15955a(File file, DexFile dexFile) {
                return this.f18627a.newInstance(file, file, dexFile);
            }

            public C4590c(Class<?> cls) {
                Constructor<?> constructor = cls.getConstructor(File.class, File.class, DexFile.class);
                this.f18627a = constructor;
                constructor.setAccessible(true);
            }
        }

        /* renamed from: m0.a$a$d */
        /* loaded from: classes.dex */
        public static class C4591d implements InterfaceC4588a {

            /* renamed from: a */
            public final Constructor<?> f18628a;

            @Override // p119m0.C4586a.C4587a.InterfaceC4588a
            /* renamed from: a */
            public Object mo15955a(File file, DexFile dexFile) {
                return this.f18628a.newInstance(file, Boolean.FALSE, file, dexFile);
            }

            public C4591d(Class<?> cls) {
                Constructor<?> constructor = cls.getConstructor(File.class, Boolean.TYPE, File.class, DexFile.class);
                this.f18628a = constructor;
                constructor.setAccessible(true);
            }
        }

        /* renamed from: a */
        public static void m15958a(ClassLoader classLoader, List<? extends File> list) {
            Object obj = C4586a.m15966g(classLoader, "pathList").get(classLoader);
            Object[] m15957b = new C4587a().m15957b(list);
            try {
                C4586a.m15967f(obj, "dexElements", m15957b);
            } catch (NoSuchFieldException e) {
                Log.w("MultiDex", "Failed find field 'dexElements' attempting 'pathElements'", e);
                C4586a.m15967f(obj, "pathElements", m15957b);
            }
        }

        public C4587a() {
            InterfaceC4588a c4591d;
            Class<?> cls = Class.forName("dalvik.system.DexPathList$Element");
            try {
                try {
                    c4591d = new C4589b(cls);
                } catch (NoSuchMethodException unused) {
                    c4591d = new C4590c(cls);
                }
            } catch (NoSuchMethodException unused2) {
                c4591d = new C4591d(cls);
            }
            this.f18625a = c4591d;
        }

        /* renamed from: c */
        public static String m15956c(File file) {
            File parentFile = file.getParentFile();
            String name = file.getName();
            return new File(parentFile, name.substring(0, name.length() - f18624b) + ".dex").getPath();
        }

        /* renamed from: b */
        public final Object[] m15957b(List<? extends File> list) {
            int size = list.size();
            Object[] objArr = new Object[size];
            for (int i = 0; i < size; i++) {
                File file = list.get(i);
                objArr[i] = this.f18625a.mo15955a(file, DexFile.loadDex(file.getPath(), m15956c(file), 0));
            }
            return objArr;
        }
    }

    /* renamed from: m0.a$b */
    /* loaded from: classes.dex */
    public static final class C4592b {
        /* renamed from: b */
        public static Object[] m15953b(Object obj, ArrayList<File> arrayList, File file, ArrayList<IOException> arrayList2) {
            return (Object[]) C4586a.m15965h(obj, "makeDexElements", ArrayList.class, File.class, ArrayList.class).invoke(obj, arrayList, file, arrayList2);
        }

        /* renamed from: a */
        public static void m15954a(ClassLoader classLoader, List<? extends File> list, File file) {
            IOException[] iOExceptionArr;
            Object obj = C4586a.m15966g(classLoader, "pathList").get(classLoader);
            ArrayList arrayList = new ArrayList();
            C4586a.m15967f(obj, "dexElements", m15953b(obj, new ArrayList(list), file, arrayList));
            if (arrayList.size() > 0) {
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    Log.w("MultiDex", "Exception in makeDexElement", (IOException) it.next());
                }
                Field m15966g = C4586a.m15966g(obj, "dexElementsSuppressedExceptions");
                IOException[] iOExceptionArr2 = (IOException[]) m15966g.get(obj);
                if (iOExceptionArr2 == null) {
                    iOExceptionArr = (IOException[]) arrayList.toArray(new IOException[arrayList.size()]);
                } else {
                    IOException[] iOExceptionArr3 = new IOException[arrayList.size() + iOExceptionArr2.length];
                    arrayList.toArray(iOExceptionArr3);
                    System.arraycopy(iOExceptionArr2, 0, iOExceptionArr3, arrayList.size(), iOExceptionArr2.length);
                    iOExceptionArr = iOExceptionArr3;
                }
                m15966g.set(obj, iOExceptionArr);
                IOException iOException = new IOException("I/O exception during makeDexElement");
                iOException.initCause((Throwable) arrayList.get(0));
                throw iOException;
            }
        }
    }

    /* renamed from: m */
    public static boolean m15960m(String str) {
        String str2;
        boolean z = false;
        if (str != null) {
            Matcher matcher = Pattern.compile("(\\d+)\\.(\\d+)(\\.\\d+)?").matcher(str);
            if (matcher.matches()) {
                try {
                    int parseInt = Integer.parseInt(matcher.group(1));
                    int parseInt2 = Integer.parseInt(matcher.group(2));
                    if (parseInt > 2 || (parseInt == 2 && parseInt2 >= 1)) {
                        z = true;
                    }
                } catch (NumberFormatException unused) {
                }
            }
        }
        StringBuilder sb = new StringBuilder();
        sb.append("VM with version ");
        sb.append(str);
        if (z) {
            str2 = " has multidex support";
        } else {
            str2 = " does not have multidex support";
        }
        sb.append(str2);
        Log.i("MultiDex", sb.toString());
        return z;
    }

    /* renamed from: d */
    public static void m15969d(Context context) {
        File file = new File(context.getFilesDir(), "secondary-dexes");
        if (file.isDirectory()) {
            Log.i("MultiDex", "Clearing old secondary dex dir (" + file.getPath() + ").");
            File[] listFiles = file.listFiles();
            if (listFiles == null) {
                Log.w("MultiDex", "Failed to list secondary dex dir content (" + file.getPath() + ").");
                return;
            }
            for (File file2 : listFiles) {
                Log.i("MultiDex", "Trying to delete old file " + file2.getPath() + " of size " + file2.length());
                if (!file2.delete()) {
                    Log.w("MultiDex", "Failed to delete old file " + file2.getPath());
                } else {
                    Log.i("MultiDex", "Deleted old file " + file2.getPath());
                }
            }
            if (!file.delete()) {
                Log.w("MultiDex", "Failed to delete secondary dex dir " + file.getPath());
                return;
            }
            Log.i("MultiDex", "Deleted old secondary dex dir " + file.getPath());
        }
    }

    /* renamed from: e */
    public static void m15968e(Context context, File file, File file2, String str, String str2, boolean z) {
        Set<File> set = f18622a;
        synchronized (set) {
            if (set.contains(file)) {
                return;
            }
            set.add(file);
            int i = Build.VERSION.SDK_INT;
            if (i > 20) {
                Log.w("MultiDex", "MultiDex is not guaranteed to work in SDK version " + i + ": SDK version higher than 20 should be backed by runtime with built-in multidex capabilty but it's not the case here: java.vm.version=\"" + System.getProperty("java.vm.version") + "\"");
            }
            try {
                ClassLoader classLoader = context.getClassLoader();
                if (classLoader == null) {
                    Log.e("MultiDex", "Context class loader is null. Must be running in test mode. Skip patching.");
                    return;
                }
                m15969d(context);
                File m15963j = m15963j(context, file2, str);
                C4593b c4593b = new C4593b(file, m15963j);
                IOException e = null;
                try {
                    m15961l(classLoader, m15963j, c4593b.m15945j(context, str2, false));
                } catch (IOException e2) {
                    if (z) {
                        Log.w("MultiDex", "Failed to install extracted secondary dex files, retrying with forced extraction", e2);
                        m15961l(classLoader, m15963j, c4593b.m15945j(context, str2, true));
                    } else {
                        throw e2;
                    }
                }
                try {
                    c4593b.close();
                } catch (IOException e3) {
                    e = e3;
                }
                if (e == null) {
                    return;
                }
                throw e;
            } catch (RuntimeException e4) {
                Log.w("MultiDex", "Failure while trying to obtain Context class loader. Must be running in test mode. Skip patching.", e4);
            }
        }
    }

    /* renamed from: j */
    public static File m15963j(Context context, File file, String str) {
        File file2 = new File(file, "code_cache");
        try {
            m15959n(file2);
        } catch (IOException unused) {
            file2 = new File(context.getFilesDir(), "code_cache");
            m15959n(file2);
        }
        File file3 = new File(file2, str);
        m15959n(file3);
        return file3;
    }

    /* renamed from: k */
    public static void m15962k(Context context) {
        Log.i("MultiDex", "Installing application");
        if (f18623b) {
            Log.i("MultiDex", "VM has multidex support, MultiDex support library is disabled.");
            return;
        }
        try {
            ApplicationInfo m15964i = m15964i(context);
            if (m15964i == null) {
                Log.i("MultiDex", "No ApplicationInfo available, i.e. running on a test Context: MultiDex support library is disabled.");
                return;
            }
            m15968e(context, new File(m15964i.sourceDir), new File(m15964i.dataDir), "secondary-dexes", "", true);
            Log.i("MultiDex", "install done");
        } catch (Exception e) {
            Log.e("MultiDex", "MultiDex installation failure", e);
            throw new RuntimeException("MultiDex installation failed (" + e.getMessage() + ").");
        }
    }

    /* renamed from: f */
    public static void m15967f(Object obj, String str, Object[] objArr) {
        Field m15966g = m15966g(obj, str);
        Object[] objArr2 = (Object[]) m15966g.get(obj);
        Object[] objArr3 = (Object[]) Array.newInstance(objArr2.getClass().getComponentType(), objArr2.length + objArr.length);
        System.arraycopy(objArr2, 0, objArr3, 0, objArr2.length);
        System.arraycopy(objArr, 0, objArr3, objArr2.length, objArr.length);
        m15966g.set(obj, objArr3);
    }

    /* renamed from: g */
    public static Field m15966g(Object obj, String str) {
        for (Class<?> cls = obj.getClass(); cls != null; cls = cls.getSuperclass()) {
            try {
                Field declaredField = cls.getDeclaredField(str);
                if (!declaredField.isAccessible()) {
                    declaredField.setAccessible(true);
                }
                return declaredField;
            } catch (NoSuchFieldException unused) {
            }
        }
        throw new NoSuchFieldException("Field " + str + " not found in " + obj.getClass());
    }

    /* renamed from: h */
    public static Method m15965h(Object obj, String str, Class<?>... clsArr) {
        for (Class<?> cls = obj.getClass(); cls != null; cls = cls.getSuperclass()) {
            try {
                Method declaredMethod = cls.getDeclaredMethod(str, clsArr);
                if (!declaredMethod.isAccessible()) {
                    declaredMethod.setAccessible(true);
                }
                return declaredMethod;
            } catch (NoSuchMethodException unused) {
            }
        }
        throw new NoSuchMethodException("Method " + str + " with parameters " + Arrays.asList(clsArr) + " not found in " + obj.getClass());
    }

    /* renamed from: i */
    public static ApplicationInfo m15964i(Context context) {
        try {
            return context.getApplicationInfo();
        } catch (RuntimeException e) {
            Log.w("MultiDex", "Failure while trying to obtain ApplicationInfo from Context. Must be running in test mode. Skip patching.", e);
            return null;
        }
    }

    /* renamed from: l */
    public static void m15961l(ClassLoader classLoader, File file, List<? extends File> list) {
        if (!list.isEmpty()) {
            if (Build.VERSION.SDK_INT >= 19) {
                C4592b.m15954a(classLoader, list, file);
            } else {
                C4587a.m15958a(classLoader, list);
            }
        }
    }

    /* renamed from: n */
    public static void m15959n(File file) {
        file.mkdir();
        if (!file.isDirectory()) {
            File parentFile = file.getParentFile();
            if (parentFile == null) {
                Log.e("MultiDex", "Failed to create dir " + file.getPath() + ". Parent file is null.");
            } else {
                Log.e("MultiDex", "Failed to create dir " + file.getPath() + ". parent file is a dir " + parentFile.isDirectory() + ", a file " + parentFile.isFile() + ", exists " + parentFile.exists() + ", readable " + parentFile.canRead() + ", writable " + parentFile.canWrite());
            }
            throw new IOException("Failed to create directory " + file.getPath());
        }
    }
}
