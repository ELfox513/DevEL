package net.bytebuddy.android;

import android.annotation.TargetApi;
import com.android.p030dx.command.dexer.DxContext;
import com.android.p030dx.dex.DexOptions;
import com.android.p030dx.dex.file.ClassDefItem;
import com.android.p030dx.dex.file.DexFile;
import com.android.p030dx.dex.p031cf.CfOptions;
import com.android.p030dx.dex.p031cf.CfTranslator;
import dalvik.system.BaseDexClassLoader;
import dalvik.system.DexClassLoader;
import edu.umd.cs.findbugs.annotations.SuppressFBWarnings;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.Writer;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import java.util.jar.JarEntry;
import java.util.jar.JarOutputStream;
import java.util.logging.Logger;
import net.bytebuddy.description.type.TypeDescription;
import net.bytebuddy.dynamic.loading.ClassLoadingStrategy;
import net.bytebuddy.pool.TypePool;
import net.bytebuddy.utility.RandomString;
import net.bytebuddy.utility.nullability.AlwaysNull;
import net.bytebuddy.utility.nullability.MaybeNull;
import p147p1.C5305f;
import p147p1.C5310j;
/* loaded from: classes2.dex */
public abstract class AndroidClassLoadingStrategy implements ClassLoadingStrategy<ClassLoader> {
    private static final String DEX_CLASS_FILE = "classes.dex";
    @AlwaysNull
    private static final String EMPTY_LIBRARY_PATH = null;
    private static final String JAR_FILE_EXTENSION = ".jar";
    private final DexProcessor dexProcessor;
    public final File privateDirectory;
    public final RandomString randomString;

    /* loaded from: classes2.dex */
    public interface DexProcessor {

        /* loaded from: classes2.dex */
        public interface Conversion {
            void drainTo(OutputStream outputStream);

            void register(String str, byte[] bArr);
        }

        /* loaded from: classes2.dex */
        public static class ForSdkCompiler implements DexProcessor {
            private static final String CLASS_FILE_EXTENSION = ".class";
            private static final int DEX_COMPATIBLE_API_VERSION = 13;
            private static final Dispatcher DISPATCHER;
            private static final boolean NOT_VERBOSE = false;
            @AlwaysNull
            private static final Writer NO_PRINT_OUTPUT;
            private final CfOptions dexCompilerOptions;
            private final DexOptions dexFileOptions;

            /* loaded from: classes2.dex */
            public class Conversion implements Conversion {
                private static final boolean NON_STRICT = false;
                private final DexFile dexFile;

                @Override // net.bytebuddy.android.AndroidClassLoadingStrategy.DexProcessor.Conversion
                public void drainTo(OutputStream outputStream) {
                    this.dexFile.writeTo(outputStream, ForSdkCompiler.NO_PRINT_OUTPUT, false);
                }

                public Conversion(DexFile dexFile) {
                    this.dexFile = dexFile;
                }

                @Override // net.bytebuddy.android.AndroidClassLoadingStrategy.DexProcessor.Conversion
                public void register(String str, byte[] bArr) {
                    C5305f c5305f = new C5305f(bArr, str.replace(TypePool.Default.LazyTypeDescription.GenericTypeToken.INNER_CLASS_PATH, '/') + ".class", false);
                    c5305f.m13562x(new C5310j());
                    this.dexFile.add(ForSdkCompiler.DISPATCHER.translate(c5305f, bArr, ForSdkCompiler.this.dexCompilerOptions, ForSdkCompiler.this.dexFileOptions, new DexFile(ForSdkCompiler.this.dexFileOptions)));
                }
            }

            /* loaded from: classes2.dex */
            public interface Dispatcher {

                /* loaded from: classes2.dex */
                public static class ForApi26LevelCompatibleVm implements Dispatcher {
                    private final Constructor<?> dxContext;
                    private final Method translate;

                    @Override // net.bytebuddy.android.AndroidClassLoadingStrategy.DexProcessor.ForSdkCompiler.Dispatcher
                    public void setTargetApi(DexOptions dexOptions, int i) {
                    }

                    @Override // net.bytebuddy.android.AndroidClassLoadingStrategy.DexProcessor.ForSdkCompiler.Dispatcher
                    public ClassDefItem translate(C5305f c5305f, byte[] bArr, CfOptions cfOptions, DexOptions dexOptions, DexFile dexFile) {
                        try {
                            return (ClassDefItem) this.translate.invoke(null, this.dxContext.newInstance(new Object[0]), c5305f, bArr, cfOptions, dexOptions, new DexFile(dexOptions));
                        } catch (IllegalAccessException e) {
                            throw new IllegalStateException("Cannot access an Android dex file translation method", e);
                        } catch (InstantiationException e2) {
                            throw new IllegalStateException("Cannot instantiate dex context", e2);
                        } catch (InvocationTargetException e3) {
                            throw new IllegalStateException("Cannot invoke Android dex file translation method", e3.getTargetException());
                        }
                    }

                    public ForApi26LevelCompatibleVm(Method method, Constructor<?> constructor) {
                        this.translate = method;
                        this.dxContext = constructor;
                    }
                }

                /* loaded from: classes2.dex */
                public static class ForLegacyVm implements Dispatcher {
                    private final Field targetApi;
                    private final Method translate;

                    @Override // net.bytebuddy.android.AndroidClassLoadingStrategy.DexProcessor.ForSdkCompiler.Dispatcher
                    public void setTargetApi(DexOptions dexOptions, int i) {
                        try {
                            this.targetApi.set(dexOptions, Integer.valueOf(i));
                        } catch (IllegalAccessException e) {
                            throw new IllegalStateException("Cannot access an Android dex file translation method", e);
                        }
                    }

                    @Override // net.bytebuddy.android.AndroidClassLoadingStrategy.DexProcessor.ForSdkCompiler.Dispatcher
                    public ClassDefItem translate(C5305f c5305f, byte[] bArr, CfOptions cfOptions, DexOptions dexOptions, DexFile dexFile) {
                        try {
                            return (ClassDefItem) this.translate.invoke(null, c5305f, bArr, cfOptions, dexOptions, new DexFile(dexOptions));
                        } catch (IllegalAccessException e) {
                            throw new IllegalStateException("Cannot access an Android dex file translation method", e);
                        } catch (InvocationTargetException e2) {
                            throw new IllegalStateException("Cannot invoke Android dex file translation method", e2.getTargetException());
                        }
                    }

                    public ForLegacyVm(Method method, Field field) {
                        this.translate = method;
                        this.targetApi = field;
                    }
                }

                void setTargetApi(DexOptions dexOptions, int i);

                ClassDefItem translate(C5305f c5305f, byte[] bArr, CfOptions cfOptions, DexOptions dexOptions, DexFile dexFile);

                /* loaded from: classes2.dex */
                public static class Unavailable implements Dispatcher {
                    private final String message;

                    @Override // net.bytebuddy.android.AndroidClassLoadingStrategy.DexProcessor.ForSdkCompiler.Dispatcher
                    public void setTargetApi(DexOptions dexOptions, int i) {
                        throw new IllegalStateException("Could not resolve dispatcher: " + this.message);
                    }

                    @Override // net.bytebuddy.android.AndroidClassLoadingStrategy.DexProcessor.ForSdkCompiler.Dispatcher
                    public ClassDefItem translate(C5305f c5305f, byte[] bArr, CfOptions cfOptions, DexOptions dexOptions, DexFile dexFile) {
                        throw new IllegalStateException("Could not resolve dispatcher: " + this.message);
                    }

                    public Unavailable(String str) {
                        this.message = str;
                    }
                }
            }

            @Override // net.bytebuddy.android.AndroidClassLoadingStrategy.DexProcessor
            public Conversion create() {
                return new Conversion(new DexFile(this.dexFileOptions));
            }

            static {
                Dispatcher unavailable;
                try {
                    try {
                        try {
                            unavailable = new Dispatcher.ForApi26LevelCompatibleVm(CfTranslator.class.getMethod("translate", DxContext.class, C5305f.class, byte[].class, CfOptions.class, DexOptions.class, DexFile.class), DxContext.class.getConstructor(new Class[0]));
                        } catch (Throwable unused) {
                            unavailable = new Dispatcher.ForLegacyVm(CfTranslator.class.getMethod("translate", C5305f.class, byte[].class, CfOptions.class, DexOptions.class, DexFile.class), DexOptions.class.getField("targetApiLevel"));
                        }
                    } catch (Throwable unused2) {
                        unavailable = new Dispatcher.ForLegacyVm(CfTranslator.class.getMethod("translate", C5305f.class, byte[].class, CfOptions.class, DexOptions.class, DexFile.class), DexOptions.class.getField("minSdkVersion"));
                    }
                } catch (Throwable th) {
                    unavailable = new Dispatcher.Unavailable(th.getMessage());
                }
                DISPATCHER = unavailable;
                NO_PRINT_OUTPUT = null;
            }

            public static DexProcessor makeDefault() {
                DexOptions dexOptions = new DexOptions();
                DISPATCHER.setTargetApi(dexOptions, 13);
                return new ForSdkCompiler(dexOptions, new CfOptions());
            }

            public ForSdkCompiler(DexOptions dexOptions, CfOptions cfOptions) {
                this.dexFileOptions = dexOptions;
                this.dexCompilerOptions = cfOptions;
            }
        }

        Conversion create();
    }

    @TargetApi(3)
    /* loaded from: classes2.dex */
    public static class Injecting extends AndroidClassLoadingStrategy {
        private static final Dispatcher DISPATCHER;

        /* loaded from: classes2.dex */
        public interface Dispatcher {

            /* loaded from: classes2.dex */
            public static class ForAndroidPVm implements Dispatcher {
                @AlwaysNull
                private static final dalvik.system.DexFile NO_RETURN_VALUE = null;
                private final Method addDexPath;

                @Override // net.bytebuddy.android.AndroidClassLoadingStrategy.Injecting.Dispatcher
                @MaybeNull
                public dalvik.system.DexFile loadDex(File file, File file2, @MaybeNull ClassLoader classLoader, RandomString randomString) {
                    if (classLoader instanceof BaseDexClassLoader) {
                        try {
                            this.addDexPath.invoke(classLoader, file2.getAbsolutePath(), Boolean.TRUE);
                            return NO_RETURN_VALUE;
                        } catch (IllegalAccessException e) {
                            throw new IllegalStateException("Cannot access BaseDexClassLoader#addDexPath(String, boolean)", e);
                        } catch (InvocationTargetException e2) {
                            Throwable targetException = e2.getTargetException();
                            if (targetException instanceof IOException) {
                                throw ((IOException) targetException);
                            }
                            throw new IllegalStateException("Cannot invoke BaseDexClassLoader#addDexPath(String, boolean)", targetException);
                        }
                    }
                    throw new IllegalArgumentException("On Android P, a class injection can only be applied to BaseDexClassLoader: " + classLoader);
                }

                public ForAndroidPVm(Method method) {
                    this.addDexPath = method;
                }

                @Override // net.bytebuddy.android.AndroidClassLoadingStrategy.Injecting.Dispatcher
                public Class<?> loadClass(@MaybeNull dalvik.system.DexFile dexFile, @MaybeNull ClassLoader classLoader, TypeDescription typeDescription) {
                    try {
                        return Class.forName(typeDescription.getName(), false, classLoader);
                    } catch (ClassNotFoundException e) {
                        throw new IllegalStateException("Could not locate " + typeDescription, e);
                    }
                }
            }

            @MaybeNull
            Class<?> loadClass(dalvik.system.DexFile dexFile, @MaybeNull ClassLoader classLoader, TypeDescription typeDescription);

            @MaybeNull
            dalvik.system.DexFile loadDex(File file, File file2, @MaybeNull ClassLoader classLoader, RandomString randomString);

            /* loaded from: classes2.dex */
            public enum ForLegacyVm implements Dispatcher {
                INSTANCE;
                
                private static final String EXTENSION = ".data";
                private static final int NO_FLAGS = 0;

                @Override // net.bytebuddy.android.AndroidClassLoadingStrategy.Injecting.Dispatcher
                @MaybeNull
                public Class<?> loadClass(dalvik.system.DexFile dexFile, @MaybeNull ClassLoader classLoader, TypeDescription typeDescription) {
                    return dexFile.loadClass(typeDescription.getName(), classLoader);
                }

                @Override // net.bytebuddy.android.AndroidClassLoadingStrategy.Injecting.Dispatcher
                @MaybeNull
                public dalvik.system.DexFile loadDex(File file, File file2, @MaybeNull ClassLoader classLoader, RandomString randomString) {
                    String absolutePath = file2.getAbsolutePath();
                    String absolutePath2 = file.getAbsolutePath();
                    return dalvik.system.DexFile.loadDex(absolutePath, new File(absolutePath2, randomString.nextString() + EXTENSION).getAbsolutePath(), 0);
                }
            }
        }

        public Injecting(File file) {
            this(file, DexProcessor.ForSdkCompiler.makeDefault());
        }

        static {
            Dispatcher dispatcher;
            try {
                dispatcher = new Dispatcher.ForAndroidPVm(BaseDexClassLoader.class.getMethod("addDexPath", String.class, Boolean.TYPE));
            } catch (Throwable unused) {
                dispatcher = Dispatcher.ForLegacyVm.INSTANCE;
            }
            DISPATCHER = dispatcher;
        }

        public Injecting(File file, DexProcessor dexProcessor) {
            super(file, dexProcessor);
        }

        @Override // net.bytebuddy.android.AndroidClassLoadingStrategy
        public Map<TypeDescription, Class<?>> doLoad(@MaybeNull ClassLoader classLoader, Set<TypeDescription> set, File file) {
            dalvik.system.DexFile loadDex = DISPATCHER.loadDex(this.privateDirectory, file, classLoader, this.randomString);
            try {
                HashMap hashMap = new HashMap();
                for (TypeDescription typeDescription : set) {
                    synchronized (classLoader) {
                        Class<?> loadClass = DISPATCHER.loadClass(loadDex, classLoader, typeDescription);
                        if (loadClass != null) {
                            hashMap.put(typeDescription, loadClass);
                        } else {
                            throw new IllegalStateException("Could not load " + typeDescription);
                        }
                    }
                }
                return hashMap;
            } finally {
                if (loadDex != null) {
                    loadDex.close();
                }
            }
        }

        @Override // net.bytebuddy.android.AndroidClassLoadingStrategy, net.bytebuddy.dynamic.loading.ClassLoadingStrategy
        public Map<TypeDescription, Class<?>> load(@MaybeNull ClassLoader classLoader, Map<TypeDescription, byte[]> map) {
            if (classLoader != null) {
                return super.load(classLoader, map);
            }
            throw new IllegalArgumentException("Cannot inject classes into the bootstrap class loader on Android");
        }
    }

    @TargetApi(3)
    /* loaded from: classes2.dex */
    public static class Wrapping extends AndroidClassLoadingStrategy {
        public Wrapping(File file) {
            this(file, DexProcessor.ForSdkCompiler.makeDefault());
        }

        public Wrapping(File file, DexProcessor dexProcessor) {
            super(file, dexProcessor);
        }

        @Override // net.bytebuddy.android.AndroidClassLoadingStrategy
        @SuppressFBWarnings(justification = "Android discourages the use of access controllers", value = {"DP_CREATE_CLASSLOADER_INSIDE_DO_PRIVILEGED"})
        public Map<TypeDescription, Class<?>> doLoad(@MaybeNull ClassLoader classLoader, Set<TypeDescription> set, File file) {
            DexClassLoader dexClassLoader = new DexClassLoader(file.getAbsolutePath(), this.privateDirectory.getAbsolutePath(), AndroidClassLoadingStrategy.EMPTY_LIBRARY_PATH, classLoader);
            HashMap hashMap = new HashMap();
            for (TypeDescription typeDescription : set) {
                try {
                    hashMap.put(typeDescription, Class.forName(typeDescription.getName(), false, dexClassLoader));
                } catch (ClassNotFoundException e) {
                    throw new IllegalStateException("Cannot load " + typeDescription, e);
                }
            }
            return hashMap;
        }
    }

    public abstract Map<TypeDescription, Class<?>> doLoad(@MaybeNull ClassLoader classLoader, Set<TypeDescription> set, File file);

    @Override // net.bytebuddy.dynamic.loading.ClassLoadingStrategy
    public Map<TypeDescription, Class<?>> load(@MaybeNull ClassLoader classLoader, Map<TypeDescription, byte[]> map) {
        DexProcessor.Conversion create = this.dexProcessor.create();
        for (Map.Entry<TypeDescription, byte[]> entry : map.entrySet()) {
            create.register(entry.getKey().getName(), entry.getValue());
        }
        File file = this.privateDirectory;
        File file2 = new File(file, this.randomString.nextString() + JAR_FILE_EXTENSION);
        try {
            try {
                if (file2.createNewFile()) {
                    JarOutputStream jarOutputStream = new JarOutputStream(new FileOutputStream(file2));
                    try {
                        jarOutputStream.putNextEntry(new JarEntry(DEX_CLASS_FILE));
                        create.drainTo(jarOutputStream);
                        jarOutputStream.closeEntry();
                        jarOutputStream.close();
                        return doLoad(classLoader, map.keySet(), file2);
                    } catch (Throwable th) {
                        jarOutputStream.close();
                        throw th;
                    }
                }
                throw new IllegalStateException("Cannot create " + file2);
            } catch (IOException e) {
                throw new IllegalStateException("Cannot write to zip file " + file2, e);
            }
        } finally {
            if (!file2.delete()) {
                Logger logger = Logger.getLogger("net.bytebuddy");
                logger.warning("Could not delete " + file2);
            }
        }
    }

    public AndroidClassLoadingStrategy(File file, DexProcessor dexProcessor) {
        if (file.isDirectory()) {
            this.privateDirectory = file;
            this.dexProcessor = dexProcessor;
            this.randomString = new RandomString();
            return;
        }
        throw new IllegalArgumentException("Not a directory " + file);
    }
}
