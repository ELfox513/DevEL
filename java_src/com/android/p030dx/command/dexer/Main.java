package com.android.p030dx.command.dexer;

import com.android.p030dx.dex.DexOptions;
import com.android.p030dx.dex.file.ClassDefItem;
import com.android.p030dx.dex.file.DexFile;
import com.android.p030dx.dex.file.EncodedMethod;
import com.android.p030dx.dex.p031cf.CfOptions;
import com.android.p030dx.dex.p031cf.CfTranslator;
import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.IOException;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.PrintStream;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.jar.Attributes;
import java.util.jar.JarEntry;
import java.util.jar.JarOutputStream;
import java.util.jar.Manifest;
import net.bytebuddy.build.Plugin;
import net.bytebuddy.pool.TypePool;
import p102k1.C4409f;
import p102k1.C4420g;
import p111l1.C4558e;
import p129n1.C4729w;
import p147p1.C5298d;
import p147p1.C5305f;
import p147p1.C5310j;
import p156q1.C5399i;
import p165r1.C5524a;
import p168r4.C6226s;
import p192u1.C6854b;
import p192u1.EnumC6853a;
import p201v1.C6969a;
import p201v1.C6971c;
import p201v1.C6972d;
import p210w1.C7157q;
import p218x1.C7212d0;
import p218x1.C7214e0;
import p226y1.C7400a;
import p226y1.C7402c;
/* renamed from: com.android.dx.command.dexer.Main */
/* loaded from: classes.dex */
public class Main {
    private static final String DEX_EXTENSION = ".dex";
    private static final String DEX_PREFIX = "classes";
    private static final String IN_RE_CORE_CLASSES = "Ill-advised or mistaken usage of a core class (java.* or javax.*)\nwhen not building a core library.\n\nThis is often due to inadvertently including a core library file\nin your application's project, when using an IDE (such as\nEclipse). If you are sure you're not intentionally defining a\ncore class, then this is the most likely explanation of what's\ngoing on.\n\nHowever, you might actually be trying to define a class in a core\nnamespace, the source of which you may have taken, for example,\nfrom a non-Android virtual machine project. This will most\nassuredly not work. At a minimum, it jeopardizes the\ncompatibility of your app with future versions of the platform.\nIt is also often of questionable legality.\n\nIf you really intend to build a core library -- which is only\nappropriate as part of creating a full virtual machine\ndistribution, as opposed to compiling an application -- then use\nthe \"--core-library\" option to suppress this error message.\n\nIf you go ahead and use \"--core-library\" but are in fact\nbuilding an application, then be forewarned that your application\nwill still fail to build or run, at some point. Please be\nprepared for angry customers who find, for example, that your\napplication ceases to function once they upgrade their operating\nsystem. You will be to blame for this problem.\n\nIf you are legitimately using some code that happens to be in a\ncore package, then the easiest safe alternative you have is to\nrepackage that code. That is, move the classes in question into\nyour own package namespace. This means that they will never be in\nconflict with core system classes. JarJar is a tool that may help\nyou in this endeavor. If you find that you cannot do this, then\nthat is an indication that the path you are on will ultimately\nlead to pain, suffering, grief, and lamentation.\n";
    private static final String MANIFEST_NAME = "META-INF/MANIFEST.MF";
    private static final int MAX_FIELD_ADDED_DURING_DEX_CREATION = 9;
    private static final int MAX_METHOD_ADDED_DURING_DEX_CREATION = 2;
    private volatile boolean anyFilesProcessed;
    private Arguments args;
    private ExecutorService classDefItemConsumer;
    private ExecutorService classTranslatorPool;
    private final DxContext context;
    private ExecutorService dexOutPool;
    private DexFile outputDex;
    private TreeMap<String, byte[]> outputResources;
    private static final Attributes.Name CREATED_BY = new Attributes.Name("Created-By");
    private static final String[] JAVAX_CORE = {"accessibility", "crypto", "imageio", "management", "naming", "net", "print", "rmi", "security", "sip", "sound", "sql", "swing", "transaction", "xml"};
    private AtomicInteger errors = new AtomicInteger(0);
    private final List<byte[]> libraryDexBuffers = new ArrayList();
    private List<Future<Boolean>> addToDexFutures = new ArrayList();
    private List<Future<byte[]>> dexOutputFutures = new ArrayList();
    private Object dexRotationLock = new Object();
    private int maxMethodIdsInProcess = 0;
    private int maxFieldIdsInProcess = 0;
    private long minimumFileAge = 0;
    private Set<String> classesInMainDex = null;
    private List<byte[]> dexOutputArrays = new ArrayList();
    private OutputStreamWriter humanOutWriter = null;

    /* renamed from: com.android.dx.command.dexer.Main$Arguments */
    /* loaded from: classes.dex */
    public static class Arguments {
        private static final String INCREMENTAL_OPTION = "--incremental";
        private static final String INPUT_LIST_OPTION = "--input-list";
        private static final String MAIN_DEX_LIST_OPTION = "--main-dex-list";
        private static final String MINIMAL_MAIN_DEX_OPTION = "--minimal-main-dex";
        private static final String MULTI_DEX_OPTION = "--multi-dex";
        private static final String NUM_THREADS_OPTION = "--num-threads";
        public boolean allowAllInterfaceMethodInvokes;
        public CfOptions cfOptions;
        public final DxContext context;
        public boolean coreLibrary;
        public boolean debug;
        public DexOptions dexOptions;
        public String dontOptimizeListFile;
        public int dumpWidth;
        public boolean emptyOk;
        public String[] fileNames;
        public boolean forceJumbo;
        public String humanOutName;
        public boolean incremental;
        private List<String> inputList;
        public boolean jarOutput;
        public boolean keepClassesInJar;
        public boolean localInfo;
        public String mainDexListFile;
        public int maxNumberOfIdxPerDex;
        public String methodToDump;
        public int minSdkVersion;
        public boolean minimalMainDex;
        public boolean multiDex;
        public int numThreads;
        public boolean optimize;
        public String optimizeListFile;
        public String outName;
        private boolean outputIsDirectDex;
        private boolean outputIsDirectory;
        public int positionInfo;
        public boolean statistics;
        public boolean strictNameCheck;
        public boolean verbose;
        public boolean verboseDump;
        public boolean warnings;

        /* renamed from: com.android.dx.command.dexer.Main$Arguments$ArgumentsParser */
        /* loaded from: classes.dex */
        public static class ArgumentsParser {
            private final String[] arguments;
            private String current;
            private int index = 0;
            private String lastValue;

            public String getCurrent() {
                return this.current;
            }

            public String getLastValue() {
                return this.lastValue;
            }

            private boolean getNextValue() {
                int i = this.index;
                String[] strArr = this.arguments;
                if (i >= strArr.length) {
                    return false;
                }
                this.current = strArr[i];
                this.index = i + 1;
                return true;
            }

            public boolean getNext() {
                int i = this.index;
                String[] strArr = this.arguments;
                if (i >= strArr.length) {
                    return false;
                }
                String str = strArr[i];
                this.current = str;
                if (str.equals("--") || !this.current.startsWith("--")) {
                    return false;
                }
                this.index++;
                return true;
            }

            public String[] getRemaining() {
                String[] strArr = this.arguments;
                int length = strArr.length;
                int i = this.index;
                int i2 = length - i;
                String[] strArr2 = new String[i2];
                if (i2 > 0) {
                    System.arraycopy(strArr, i, strArr2, 0, i2);
                }
                return strArr2;
            }

            public ArgumentsParser(String[] strArr) {
                this.arguments = strArr;
            }

            public boolean isArg(String str) {
                int length = str.length();
                if (length > 0) {
                    int i = length - 1;
                    if (str.charAt(i) == '=') {
                        if (this.current.startsWith(str)) {
                            this.lastValue = this.current.substring(length);
                            return true;
                        }
                        String substring = str.substring(0, i);
                        if (!this.current.equals(substring)) {
                            return false;
                        }
                        if (getNextValue()) {
                            this.lastValue = this.current;
                            return true;
                        }
                        System.err.println("Missing value after parameter " + substring);
                        throw new C5524a();
                    }
                }
                return this.current.equals(str);
            }
        }

        public Arguments(DxContext dxContext) {
            this.debug = false;
            this.warnings = true;
            this.verbose = false;
            this.verboseDump = false;
            this.coreLibrary = false;
            this.methodToDump = null;
            this.dumpWidth = 0;
            this.outName = null;
            this.humanOutName = null;
            this.strictNameCheck = true;
            this.emptyOk = false;
            this.jarOutput = false;
            this.keepClassesInJar = false;
            this.minSdkVersion = 13;
            this.positionInfo = 2;
            this.localInfo = true;
            this.incremental = false;
            this.forceJumbo = false;
            this.allowAllInterfaceMethodInvokes = false;
            this.optimize = true;
            this.optimizeListFile = null;
            this.dontOptimizeListFile = null;
            this.numThreads = 1;
            this.multiDex = false;
            this.mainDexListFile = null;
            this.minimalMainDex = false;
            this.maxNumberOfIdxPerDex = 65536;
            this.inputList = null;
            this.outputIsDirectory = false;
            this.outputIsDirectDex = false;
            this.context = dxContext;
        }

        private void parseFlags(ArgumentsParser argumentsParser) {
            int i;
            while (argumentsParser.getNext()) {
                if (argumentsParser.isArg("--debug")) {
                    this.debug = true;
                } else if (argumentsParser.isArg("--no-warning")) {
                    this.warnings = false;
                } else if (argumentsParser.isArg("--verbose")) {
                    this.verbose = true;
                } else if (argumentsParser.isArg("--verbose-dump")) {
                    this.verboseDump = true;
                } else if (argumentsParser.isArg("--no-files")) {
                    this.emptyOk = true;
                } else if (argumentsParser.isArg("--no-optimize")) {
                    this.optimize = false;
                } else if (argumentsParser.isArg("--no-strict")) {
                    this.strictNameCheck = false;
                } else if (argumentsParser.isArg("--core-library")) {
                    this.coreLibrary = true;
                } else if (argumentsParser.isArg("--statistics")) {
                    this.statistics = true;
                } else if (argumentsParser.isArg("--optimize-list=")) {
                    if (this.dontOptimizeListFile == null) {
                        this.optimize = true;
                        this.optimizeListFile = argumentsParser.getLastValue();
                    } else {
                        this.context.err.println("--optimize-list and --no-optimize-list are incompatible.");
                        throw new C5524a();
                    }
                } else if (argumentsParser.isArg("--no-optimize-list=")) {
                    if (this.dontOptimizeListFile == null) {
                        this.optimize = true;
                        this.dontOptimizeListFile = argumentsParser.getLastValue();
                    } else {
                        this.context.err.println("--optimize-list and --no-optimize-list are incompatible.");
                        throw new C5524a();
                    }
                } else if (argumentsParser.isArg("--keep-classes")) {
                    this.keepClassesInJar = true;
                } else if (argumentsParser.isArg("--output=")) {
                    this.outName = argumentsParser.getLastValue();
                    if (new File(this.outName).isDirectory()) {
                        this.jarOutput = false;
                        this.outputIsDirectory = true;
                    } else if (C4558e.m16009a(this.outName)) {
                        this.jarOutput = true;
                    } else if (!this.outName.endsWith(Main.DEX_EXTENSION) && !this.outName.equals("-")) {
                        PrintStream printStream = this.context.err;
                        printStream.println("unknown output extension: " + this.outName);
                        throw new C5524a();
                    } else {
                        this.jarOutput = false;
                        this.outputIsDirectDex = true;
                    }
                } else if (argumentsParser.isArg("--dump-to=")) {
                    this.humanOutName = argumentsParser.getLastValue();
                } else if (argumentsParser.isArg("--dump-width=")) {
                    this.dumpWidth = Integer.parseInt(argumentsParser.getLastValue());
                } else if (argumentsParser.isArg("--dump-method=")) {
                    this.methodToDump = argumentsParser.getLastValue();
                    this.jarOutput = false;
                } else if (argumentsParser.isArg("--positions=")) {
                    String intern = argumentsParser.getLastValue().intern();
                    if (intern == "none") {
                        this.positionInfo = 1;
                    } else if (intern == "important") {
                        this.positionInfo = 3;
                    } else if (intern == "lines") {
                        this.positionInfo = 2;
                    } else {
                        PrintStream printStream2 = this.context.err;
                        printStream2.println("unknown positions option: " + intern);
                        throw new C5524a();
                    }
                } else if (argumentsParser.isArg("--no-locals")) {
                    this.localInfo = false;
                } else if (argumentsParser.isArg("--num-threads=")) {
                    this.numThreads = Integer.parseInt(argumentsParser.getLastValue());
                } else if (argumentsParser.isArg(INCREMENTAL_OPTION)) {
                    this.incremental = true;
                } else if (argumentsParser.isArg("--force-jumbo")) {
                    this.forceJumbo = true;
                } else if (argumentsParser.isArg(MULTI_DEX_OPTION)) {
                    this.multiDex = true;
                } else if (argumentsParser.isArg("--main-dex-list=")) {
                    this.mainDexListFile = argumentsParser.getLastValue();
                } else if (argumentsParser.isArg(MINIMAL_MAIN_DEX_OPTION)) {
                    this.minimalMainDex = true;
                } else if (argumentsParser.isArg("--set-max-idx-number=")) {
                    this.maxNumberOfIdxPerDex = Integer.parseInt(argumentsParser.getLastValue());
                } else if (argumentsParser.isArg("--input-list=")) {
                    File file = new File(argumentsParser.getLastValue());
                    try {
                        this.inputList = new ArrayList();
                        Main.readPathsFromFile(file.getAbsolutePath(), this.inputList);
                    } catch (IOException unused) {
                        PrintStream printStream3 = this.context.err;
                        printStream3.println("Unable to read input list file: " + file.getName());
                        throw new C5524a();
                    }
                } else if (argumentsParser.isArg("--min-sdk-version=")) {
                    String lastValue = argumentsParser.getLastValue();
                    try {
                        i = Integer.parseInt(lastValue);
                    } catch (NumberFormatException unused2) {
                        i = -1;
                    }
                    if (i >= 1) {
                        this.minSdkVersion = i;
                    } else {
                        PrintStream printStream4 = System.err;
                        printStream4.println("improper min-sdk-version option: " + lastValue);
                        throw new C5524a();
                    }
                } else if (argumentsParser.isArg("--allow-all-interface-method-invokes")) {
                    this.allowAllInterfaceMethodInvokes = true;
                } else {
                    PrintStream printStream5 = this.context.err;
                    printStream5.println("unknown option: " + argumentsParser.getCurrent());
                    throw new C5524a();
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void parse(String[] strArr) {
            ArgumentsParser argumentsParser = new ArgumentsParser(strArr);
            parseFlags(argumentsParser);
            this.fileNames = argumentsParser.getRemaining();
            List<String> list = this.inputList;
            if (list != null && !list.isEmpty()) {
                this.inputList.addAll(Arrays.asList(this.fileNames));
                List<String> list2 = this.inputList;
                this.fileNames = (String[]) list2.toArray(new String[list2.size()]);
            }
            if (this.fileNames.length == 0) {
                if (!this.emptyOk) {
                    this.context.err.println("no input files specified");
                    throw new C5524a();
                }
            } else if (this.emptyOk) {
                this.context.out.println("ignoring input files");
            }
            if (this.humanOutName == null && this.methodToDump != null) {
                this.humanOutName = "-";
            }
            String str = this.mainDexListFile;
            if (str != null && !this.multiDex) {
                this.context.err.println("--main-dex-list is only supported in combination with --multi-dex");
                throw new C5524a();
            } else if (this.minimalMainDex && (str == null || !this.multiDex)) {
                this.context.err.println("--minimal-main-dex is only supported in combination with --multi-dex and --main-dex-list");
                throw new C5524a();
            } else {
                boolean z = this.multiDex;
                if (z && this.incremental) {
                    this.context.err.println("--incremental is not supported with --multi-dex");
                    throw new C5524a();
                } else if (z && this.outputIsDirectDex) {
                    PrintStream printStream = this.context.err;
                    printStream.println("Unsupported output \"" + this.outName + "\". " + MULTI_DEX_OPTION + " supports only archive or directory output");
                    throw new C5524a();
                } else {
                    if (this.outputIsDirectory && !z) {
                        this.outName = new File(this.outName, "classes.dex").getPath();
                    }
                    makeOptionsObjects();
                }
            }
        }

        public void makeOptionsObjects() {
            CfOptions cfOptions = new CfOptions();
            this.cfOptions = cfOptions;
            cfOptions.positionInfo = this.positionInfo;
            cfOptions.localInfo = this.localInfo;
            cfOptions.strictNameCheck = this.strictNameCheck;
            cfOptions.optimize = this.optimize;
            cfOptions.optimizeListFile = this.optimizeListFile;
            cfOptions.dontOptimizeListFile = this.dontOptimizeListFile;
            cfOptions.statistics = this.statistics;
            if (this.warnings) {
                cfOptions.warn = this.context.err;
            } else {
                cfOptions.warn = this.context.f3074a;
            }
            DexOptions dexOptions = new DexOptions(this.context.err);
            this.dexOptions = dexOptions;
            dexOptions.minSdkVersion = this.minSdkVersion;
            dexOptions.forceJumbo = this.forceJumbo;
            dexOptions.allowAllInterfaceMethodInvokes = this.allowAllInterfaceMethodInvokes;
        }

        public Arguments() {
            this(new DxContext());
        }

        public void parseFlags(String[] strArr) {
            parseFlags(new ArgumentsParser(strArr));
        }
    }

    /* renamed from: com.android.dx.command.dexer.Main$BestEffortMainDexListFilter */
    /* loaded from: classes.dex */
    public class BestEffortMainDexListFilter implements C5298d.InterfaceC5303e {

        /* renamed from: a */
        public Map<String, List<String>> f3076a = new HashMap();

        public BestEffortMainDexListFilter() {
            for (String str : Main.this.classesInMainDex) {
                String fixPath = Main.fixPath(str);
                String simpleName = getSimpleName(fixPath);
                List<String> list = this.f3076a.get(simpleName);
                if (list == null) {
                    list = new ArrayList<>(1);
                    this.f3076a.put(simpleName, list);
                }
                list.add(fixPath);
            }
        }

        private String getSimpleName(String str) {
            int lastIndexOf = str.lastIndexOf(47);
            if (lastIndexOf >= 0) {
                return str.substring(lastIndexOf + 1);
            }
            return str;
        }

        @Override // p147p1.C5298d.InterfaceC5303e
        public boolean accept(String str) {
            if (!str.endsWith(".class")) {
                return true;
            }
            String fixPath = Main.fixPath(str);
            List<String> list = this.f3076a.get(getSimpleName(fixPath));
            if (list != null) {
                for (String str2 : list) {
                    if (fixPath.endsWith(str2)) {
                        return true;
                    }
                }
                return false;
            }
            return false;
        }
    }

    /* renamed from: com.android.dx.command.dexer.Main$ClassDefItemConsumer */
    /* loaded from: classes.dex */
    public class ClassDefItemConsumer implements Callable<Boolean> {

        /* renamed from: a */
        public String f3078a;

        /* renamed from: b */
        public Future<ClassDefItem> f3079b;

        /* renamed from: c */
        public int f3080c;

        /* renamed from: d */
        public int f3081d;

        private ClassDefItemConsumer(String str, Future<ClassDefItem> future, int i, int i2) {
            this.f3078a = str;
            this.f3079b = future;
            this.f3080c = i;
            this.f3081d = i2;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.concurrent.Callable
        public Boolean call() {
            try {
                try {
                    ClassDefItem classDefItem = this.f3079b.get();
                    if (classDefItem != null) {
                        Main.this.addClassToDex(classDefItem);
                        Main.this.updateStatus(true);
                    }
                    Boolean bool = Boolean.TRUE;
                    if (Main.this.args.multiDex) {
                        synchronized (Main.this.dexRotationLock) {
                            Main.this.maxMethodIdsInProcess -= this.f3080c;
                            Main.this.maxFieldIdsInProcess -= this.f3081d;
                            Main.this.dexRotationLock.notifyAll();
                        }
                    }
                    return bool;
                } catch (ExecutionException e) {
                    Throwable cause = e.getCause();
                    if (cause instanceof Exception) {
                        throw ((Exception) cause);
                    }
                    throw e;
                }
            } catch (Throwable th) {
                if (Main.this.args.multiDex) {
                    synchronized (Main.this.dexRotationLock) {
                        Main.this.maxMethodIdsInProcess -= this.f3080c;
                        Main.this.maxFieldIdsInProcess -= this.f3081d;
                        Main.this.dexRotationLock.notifyAll();
                    }
                }
                throw th;
            }
        }
    }

    /* renamed from: com.android.dx.command.dexer.Main$ClassParserTask */
    /* loaded from: classes.dex */
    public class ClassParserTask implements Callable<C5305f> {

        /* renamed from: a */
        public String f3083a;

        /* renamed from: b */
        public byte[] f3084b;

        private ClassParserTask(String str, byte[] bArr) {
            this.f3083a = str;
            this.f3084b = bArr;
        }

        @Override // java.util.concurrent.Callable
        public C5305f call() {
            return Main.this.parseClass(this.f3083a, this.f3084b);
        }
    }

    /* renamed from: com.android.dx.command.dexer.Main$ClassTranslatorTask */
    /* loaded from: classes.dex */
    public class ClassTranslatorTask implements Callable<ClassDefItem> {

        /* renamed from: a */
        public String f3086a;

        /* renamed from: b */
        public byte[] f3087b;

        /* renamed from: c */
        public C5305f f3088c;

        private ClassTranslatorTask(String str, byte[] bArr, C5305f c5305f) {
            this.f3086a = str;
            this.f3087b = bArr;
            this.f3088c = c5305f;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.concurrent.Callable
        public ClassDefItem call() {
            return Main.this.translateClass(this.f3087b, this.f3088c);
        }
    }

    /* renamed from: com.android.dx.command.dexer.Main$DexWriter */
    /* loaded from: classes.dex */
    public class DexWriter implements Callable<byte[]> {
        private final DexFile dexFile;

        private DexWriter(DexFile dexFile) {
            this.dexFile = dexFile;
        }

        @Override // java.util.concurrent.Callable
        public byte[] call() {
            return Main.this.writeDex(this.dexFile);
        }
    }

    /* renamed from: com.android.dx.command.dexer.Main$DirectClassFileConsumer */
    /* loaded from: classes.dex */
    public class DirectClassFileConsumer implements Callable<Boolean> {

        /* renamed from: a */
        public String f3091a;

        /* renamed from: b */
        public byte[] f3092b;

        /* renamed from: c */
        public Future<C5305f> f3093c;

        private DirectClassFileConsumer(String str, byte[] bArr, Future<C5305f> future) {
            this.f3091a = str;
            this.f3092b = bArr;
            this.f3093c = future;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.concurrent.Callable
        public Boolean call() {
            return call(this.f3093c.get());
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Can't wrap try/catch for region: R(6:23|(2:28|(4:30|31|d2|35)(1:36))|37|38|31|d2) */
        /* JADX WARN: Removed duplicated region for block: B:29:0x00d3 A[Catch: all -> 0x00fa, TRY_ENTER, TryCatch #4 {, blocks: (B:6:0x0030, B:7:0x0036, B:11:0x005d, B:13:0x006e, B:23:0x00ab, B:24:0x00bf, B:15:0x0080, B:17:0x0088, B:20:0x0091, B:22:0x00a5, B:27:0x00cc, B:28:0x00d2, B:26:0x00c3, B:29:0x00d3, B:30:0x00f7, B:8:0x0037, B:9:0x005b), top: B:45:0x0030 }] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.lang.Boolean call(p147p1.C5305f r11) {
            /*
                Method dump skipped, instructions count: 318
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.p030dx.command.dexer.Main.DirectClassFileConsumer.call(p1.f):java.lang.Boolean");
        }
    }

    /* renamed from: com.android.dx.command.dexer.Main$FileBytesConsumer */
    /* loaded from: classes.dex */
    public class FileBytesConsumer implements C5298d.InterfaceC5302d {
        private FileBytesConsumer() {
        }

        @Override // p147p1.C5298d.InterfaceC5302d
        public boolean processFileBytes(String str, long j, byte[] bArr) {
            return Main.this.processFileBytes(str, j, bArr);
        }

        @Override // p147p1.C5298d.InterfaceC5302d
        public void onException(Exception exc) {
            if (!(exc instanceof StopProcessing)) {
                if (exc instanceof C4729w) {
                    Main.this.context.err.println("\nEXCEPTION FROM SIMULATION:");
                    PrintStream printStream = Main.this.context.err;
                    printStream.println(exc.getMessage() + "\n");
                    Main.this.context.err.println(((C4729w) exc).m16012b());
                } else if (exc instanceof C5399i) {
                    Main.this.context.err.println("\nPARSE ERROR:");
                    C5399i c5399i = (C5399i) exc;
                    if (Main.this.args.debug) {
                        c5399i.printStackTrace(Main.this.context.err);
                    } else {
                        c5399i.m16011c(Main.this.context.err);
                    }
                } else {
                    Main.this.context.err.println("\nUNEXPECTED TOP-LEVEL EXCEPTION:");
                    exc.printStackTrace(Main.this.context.err);
                }
                Main.this.errors.incrementAndGet();
                return;
            }
            throw ((StopProcessing) exc);
        }

        @Override // p147p1.C5298d.InterfaceC5302d
        public void onProcessArchiveStart(File file) {
            if (Main.this.args.verbose) {
                PrintStream printStream = Main.this.context.out;
                printStream.println("processing archive " + file + "...");
            }
        }
    }

    /* renamed from: com.android.dx.command.dexer.Main$MainDexListFilter */
    /* loaded from: classes.dex */
    public class MainDexListFilter implements C5298d.InterfaceC5303e {
        private MainDexListFilter() {
        }

        @Override // p147p1.C5298d.InterfaceC5303e
        public boolean accept(String str) {
            if (str.endsWith(".class")) {
                return Main.this.classesInMainDex.contains(Main.fixPath(str));
            }
            return true;
        }
    }

    /* renamed from: com.android.dx.command.dexer.Main$NotFilter */
    /* loaded from: classes.dex */
    public static class NotFilter implements C5298d.InterfaceC5303e {
        private final C5298d.InterfaceC5303e filter;

        @Override // p147p1.C5298d.InterfaceC5303e
        public boolean accept(String str) {
            return !this.filter.accept(str);
        }

        private NotFilter(C5298d.InterfaceC5303e interfaceC5303e) {
            this.filter = interfaceC5303e;
        }
    }

    /* renamed from: com.android.dx.command.dexer.Main$StopProcessing */
    /* loaded from: classes.dex */
    public static class StopProcessing extends RuntimeException {
        private StopProcessing() {
        }
    }

    private static String getDexFileName(int i) {
        if (i == 0) {
            return "classes.dex";
        }
        return DEX_PREFIX + (i + 1) + DEX_EXTENSION;
    }

    private byte[] mergeIncremental(byte[] bArr, File file) {
        C4409f c4409f;
        C4409f c4409f2;
        if (bArr != null) {
            c4409f = new C4409f(bArr);
        } else {
            c4409f = null;
        }
        if (file.exists()) {
            c4409f2 = new C4409f(file);
        } else {
            c4409f2 = null;
        }
        if (c4409f == null && c4409f2 == null) {
            return null;
        }
        if (c4409f == null) {
            c4409f = c4409f2;
        } else if (c4409f2 != null) {
            c4409f = new C6854b(new C4409f[]{c4409f, c4409f2}, EnumC6853a.KEEP_FIRST, this.context).m3174r();
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        c4409f.m16616y(byteArrayOutputStream);
        return byteArrayOutputStream.toByteArray();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void readPathsFromFile(String str, Collection<String> collection) {
        BufferedReader bufferedReader = null;
        try {
            BufferedReader bufferedReader2 = new BufferedReader(new FileReader(str));
            while (true) {
                try {
                    String readLine = bufferedReader2.readLine();
                    if (readLine != null) {
                        collection.add(fixPath(readLine));
                    } else {
                        bufferedReader2.close();
                        return;
                    }
                } catch (Throwable th) {
                    th = th;
                    bufferedReader = bufferedReader2;
                    if (bufferedReader != null) {
                        bufferedReader.close();
                    }
                    throw th;
                }
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public static int run(Arguments arguments) {
        return new Main(new DxContext()).runDx(arguments);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateStatus(boolean z) {
        this.anyFilesProcessed = z | this.anyFilesProcessed;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public byte[] writeDex(DexFile dexFile) {
        byte[] dex;
        try {
            Arguments arguments = this.args;
            if (arguments.methodToDump != null) {
                dexFile.toDex(null, false);
                dumpMethod(dexFile, this.args.methodToDump, this.humanOutWriter);
                dex = null;
            } else {
                dex = dexFile.toDex(this.humanOutWriter, arguments.verboseDump);
            }
            if (this.args.statistics) {
                this.context.out.println(dexFile.getStatistics().toHuman());
            }
            OutputStreamWriter outputStreamWriter = this.humanOutWriter;
            if (outputStreamWriter != null) {
                outputStreamWriter.flush();
            }
            return dex;
        } catch (Exception e) {
            if (this.args.debug) {
                this.context.err.println("\ntrouble writing output:");
                e.printStackTrace(this.context.err);
            } else {
                this.context.err.println("\ntrouble writing output: " + e.getMessage());
            }
            return null;
        }
    }

    /* renamed from: com.android.dx.command.dexer.Main$RemoveModuleInfoFilter */
    /* loaded from: classes.dex */
    public static class RemoveModuleInfoFilter implements C5298d.InterfaceC5303e {
        public final C5298d.InterfaceC5303e delegate;

        @Override // p147p1.C5298d.InterfaceC5303e
        public boolean accept(String str) {
            return this.delegate.accept(str) && !Plugin.Engine.MODULE_INFO.equals(str);
        }

        public RemoveModuleInfoFilter(C5298d.InterfaceC5303e interfaceC5303e) {
            this.delegate = interfaceC5303e;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean addClassToDex(ClassDefItem classDefItem) {
        synchronized (this.outputDex) {
            this.outputDex.add(classDefItem);
        }
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0029, code lost:
        if (java.util.Arrays.binarySearch(com.android.p030dx.command.dexer.Main.JAVAX_CORE, r6.substring(6, r0)) >= 0) goto L3;
     */
    /* JADX WARN: Removed duplicated region for block: B:14:0x002e A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:15:0x002f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void checkClassName(java.lang.String r6) {
        /*
            r5 = this;
            java.lang.String r0 = "java/"
            boolean r0 = r6.startsWith(r0)
            r1 = 0
            r2 = 1
            if (r0 == 0) goto Lc
        La:
            r1 = 1
            goto L2c
        Lc:
            java.lang.String r0 = "javax/"
            boolean r0 = r6.startsWith(r0)
            if (r0 == 0) goto L2c
            r0 = 47
            r3 = 6
            int r0 = r6.indexOf(r0, r3)
            r4 = -1
            if (r0 != r4) goto L1f
            goto La
        L1f:
            java.lang.String r0 = r6.substring(r3, r0)
            java.lang.String[] r3 = com.android.p030dx.command.dexer.Main.JAVAX_CORE
            int r0 = java.util.Arrays.binarySearch(r3, r0)
            if (r0 < 0) goto L2c
            goto La
        L2c:
            if (r1 != 0) goto L2f
            return
        L2f:
            com.android.dx.command.dexer.DxContext r0 = r5.context
            java.io.PrintStream r0 = r0.err
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "\ntrouble processing \""
            r1.append(r2)
            r1.append(r6)
            java.lang.String r6 = "\":\n\n"
            r1.append(r6)
            java.lang.String r6 = "Ill-advised or mistaken usage of a core class (java.* or javax.*)\nwhen not building a core library.\n\nThis is often due to inadvertently including a core library file\nin your application's project, when using an IDE (such as\nEclipse). If you are sure you're not intentionally defining a\ncore class, then this is the most likely explanation of what's\ngoing on.\n\nHowever, you might actually be trying to define a class in a core\nnamespace, the source of which you may have taken, for example,\nfrom a non-Android virtual machine project. This will most\nassuredly not work. At a minimum, it jeopardizes the\ncompatibility of your app with future versions of the platform.\nIt is also often of questionable legality.\n\nIf you really intend to build a core library -- which is only\nappropriate as part of creating a full virtual machine\ndistribution, as opposed to compiling an application -- then use\nthe \"--core-library\" option to suppress this error message.\n\nIf you go ahead and use \"--core-library\" but are in fact\nbuilding an application, then be forewarned that your application\nwill still fail to build or run, at some point. Please be\nprepared for angry customers who find, for example, that your\napplication ceases to function once they upgrade their operating\nsystem. You will be to blame for this problem.\n\nIf you are legitimately using some code that happens to be in a\ncore package, then the easiest safe alternative you have is to\nrepackage that code. That is, move the classes in question into\nyour own package namespace. This means that they will never be in\nconflict with core system classes. JarJar is a tool that may help\nyou in this endeavor. If you find that you cannot do this, then\nthat is an indication that the path you are on will ultimately\nlead to pain, suffering, grief, and lamentation.\n"
            r1.append(r6)
            java.lang.String r6 = r1.toString()
            r0.println(r6)
            java.util.concurrent.atomic.AtomicInteger r6 = r5.errors
            r6.incrementAndGet()
            com.android.dx.command.dexer.Main$StopProcessing r6 = new com.android.dx.command.dexer.Main$StopProcessing
            r0 = 0
            r6.<init>()
            goto L5e
        L5d:
            throw r6
        L5e:
            goto L5d
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.p030dx.command.dexer.Main.checkClassName(java.lang.String):void");
    }

    private void closeOutput(OutputStream outputStream) {
        if (outputStream == null) {
            return;
        }
        outputStream.flush();
        if (outputStream != this.context.out) {
            outputStream.close();
        }
    }

    private void createDexFile() {
        DexFile dexFile = new DexFile(this.args.dexOptions);
        this.outputDex = dexFile;
        int i = this.args.dumpWidth;
        if (i != 0) {
            dexFile.setDumpWidth(i);
        }
    }

    private void dumpMethod(DexFile dexFile, String str, OutputStreamWriter outputStreamWriter) {
        boolean endsWith = str.endsWith("*");
        int lastIndexOf = str.lastIndexOf(46);
        if (lastIndexOf > 0 && lastIndexOf != str.length() - 1) {
            String replace = str.substring(0, lastIndexOf).replace(TypePool.Default.LazyTypeDescription.GenericTypeToken.INNER_CLASS_PATH, '/');
            String substring = str.substring(lastIndexOf + 1);
            ClassDefItem classOrNull = dexFile.getClassOrNull(replace);
            if (classOrNull == null) {
                PrintStream printStream = this.context.err;
                printStream.println("no such class: " + replace);
                return;
            }
            if (endsWith) {
                substring = substring.substring(0, substring.length() - 1);
            }
            ArrayList<EncodedMethod> methods = classOrNull.getMethods();
            TreeMap treeMap = new TreeMap();
            Iterator<EncodedMethod> it = methods.iterator();
            while (it.hasNext()) {
                EncodedMethod next = it.next();
                String m2112u = next.getName().m2112u();
                if ((endsWith && m2112u.startsWith(substring)) || (!endsWith && m2112u.equals(substring))) {
                    treeMap.put(next.getRef().m2053u(), next);
                }
            }
            if (treeMap.size() == 0) {
                PrintStream printStream2 = this.context.err;
                printStream2.println("no such method: " + str);
                return;
            }
            PrintWriter printWriter = new PrintWriter(outputStreamWriter);
            for (EncodedMethod encodedMethod : treeMap.values()) {
                encodedMethod.debugPrint(printWriter, this.args.verboseDump);
                C7212d0 sourceFile = classOrNull.getSourceFile();
                if (sourceFile != null) {
                    printWriter.println("  source file: " + sourceFile.m2116C());
                }
                C6971c methodAnnotations = classOrNull.getMethodAnnotations(encodedMethod.getRef());
                C6972d parameterAnnotations = classOrNull.getParameterAnnotations(encodedMethod.getRef());
                if (methodAnnotations != null) {
                    printWriter.println("  method annotations:");
                    Iterator<C6969a> it2 = methodAnnotations.m2826D().iterator();
                    while (it2.hasNext()) {
                        printWriter.println("    " + it2.next());
                    }
                }
                if (parameterAnnotations != null) {
                    printWriter.println("  parameter annotations:");
                    int size = parameterAnnotations.size();
                    for (int i = 0; i < size; i++) {
                        printWriter.println("    parameter " + i);
                        Iterator<C6969a> it3 = parameterAnnotations.m2821z(i).m2826D().iterator();
                        while (it3.hasNext()) {
                            printWriter.println("      " + it3.next());
                        }
                    }
                }
            }
            printWriter.flush();
            return;
        }
        PrintStream printStream3 = this.context.err;
        printStream3.println("bogus fully-qualified method name: " + str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String fixPath(String str) {
        if (File.separatorChar == '\\') {
            str = str.replace('\\', '/');
        }
        int lastIndexOf = str.lastIndexOf("/./");
        if (lastIndexOf != -1) {
            return str.substring(lastIndexOf + 3);
        }
        if (str.startsWith("./")) {
            return str.substring(2);
        }
        return str;
    }

    public static void main(String[] strArr) {
        DxContext dxContext = new DxContext();
        Arguments arguments = new Arguments(dxContext);
        arguments.parse(strArr);
        int runDx = new Main(dxContext).runDx(arguments);
        if (runDx != 0) {
            System.exit(runDx);
        }
    }

    private Manifest makeManifest() {
        Attributes attributes;
        Manifest manifest;
        String str;
        byte[] bArr = this.outputResources.get(MANIFEST_NAME);
        if (bArr == null) {
            manifest = new Manifest();
            attributes = manifest.getMainAttributes();
            attributes.put(Attributes.Name.MANIFEST_VERSION, "1.0");
        } else {
            Manifest manifest2 = new Manifest(new ByteArrayInputStream(bArr));
            Attributes mainAttributes = manifest2.getMainAttributes();
            this.outputResources.remove(MANIFEST_NAME);
            attributes = mainAttributes;
            manifest = manifest2;
        }
        Attributes.Name name = CREATED_BY;
        String value = attributes.getValue(name);
        if (value == null) {
            str = "";
        } else {
            str = value + " + ";
        }
        attributes.put(name, str + "dx 1.16");
        attributes.putValue("Dex-Location", "classes.dex");
        return manifest;
    }

    private byte[] mergeLibraryDexBuffers(byte[] bArr) {
        ArrayList arrayList = new ArrayList();
        if (bArr != null) {
            arrayList.add(new C4409f(bArr));
        }
        for (byte[] bArr2 : this.libraryDexBuffers) {
            arrayList.add(new C4409f(bArr2));
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return new C6854b((C4409f[]) arrayList.toArray(new C4409f[arrayList.size()]), EnumC6853a.FAIL, this.context).m3174r().m16630k();
    }

    private OutputStream openOutput(String str) {
        if (!str.equals("-") && !str.startsWith("-.")) {
            return new FileOutputStream(str);
        }
        return this.context.out;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public C5305f parseClass(String str, byte[] bArr) {
        C5305f c5305f = new C5305f(bArr, str, this.args.cfOptions.strictNameCheck);
        c5305f.m13562x(C5310j.f19903a);
        c5305f.m13576j();
        return c5305f;
    }

    private boolean processClass(String str, byte[] bArr) {
        if (!this.args.coreLibrary) {
            checkClassName(str);
        }
        try {
            new DirectClassFileConsumer(str, bArr, null).call(new ClassParserTask(str, bArr).call());
            return true;
        } catch (C5399i e) {
            throw e;
        } catch (Exception e2) {
            throw new RuntimeException("Exception parsing classes", e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean processFileBytes(String str, long j, byte[] bArr) {
        boolean z;
        boolean endsWith = str.endsWith(".class");
        boolean equals = str.equals("classes.dex");
        if (this.outputResources != null) {
            z = true;
        } else {
            z = false;
        }
        if (!endsWith && !equals && !z) {
            if (this.args.verbose) {
                PrintStream printStream = this.context.out;
                printStream.println("ignored resource " + str);
            }
            return false;
        }
        if (this.args.verbose) {
            PrintStream printStream2 = this.context.out;
            printStream2.println("processing " + str + "...");
        }
        String fixPath = fixPath(str);
        if (endsWith) {
            if (z && this.args.keepClassesInJar) {
                synchronized (this.outputResources) {
                    this.outputResources.put(fixPath, bArr);
                }
            }
            if (j < this.minimumFileAge) {
                return true;
            }
            processClass(fixPath, bArr);
            return false;
        } else if (equals) {
            synchronized (this.libraryDexBuffers) {
                this.libraryDexBuffers.add(bArr);
            }
            return true;
        } else {
            synchronized (this.outputResources) {
                this.outputResources.put(fixPath, bArr);
            }
            return true;
        }
    }

    private void processOne(String str, C5298d.InterfaceC5303e interfaceC5303e) {
        if (new C5298d(str, true, interfaceC5303e, new FileBytesConsumer()).m13603c()) {
            updateStatus(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void rotateDexFile() {
        DexFile dexFile = this.outputDex;
        if (dexFile != null) {
            ExecutorService executorService = this.dexOutPool;
            if (executorService != null) {
                this.dexOutputFutures.add(executorService.submit(new DexWriter(dexFile)));
            } else {
                this.dexOutputArrays.add(writeDex(dexFile));
            }
        }
        createDexFile();
    }

    private int runMonoDex() {
        File file;
        byte[] writeDex;
        String str;
        Arguments arguments = this.args;
        if (arguments.incremental) {
            if (arguments.outName == null) {
                this.context.err.println("error: no incremental output name specified");
                return -1;
            }
            file = new File(this.args.outName);
            if (file.exists()) {
                this.minimumFileAge = file.lastModified();
            }
        } else {
            file = null;
        }
        if (!processAllFiles()) {
            return 1;
        }
        if (this.args.incremental && !this.anyFilesProcessed) {
            return 0;
        }
        if (this.outputDex.isEmpty() && this.args.humanOutName == null) {
            writeDex = null;
        } else {
            writeDex = writeDex(this.outputDex);
            if (writeDex == null) {
                return 2;
            }
        }
        if (this.args.incremental) {
            writeDex = mergeIncremental(writeDex, file);
        }
        byte[] mergeLibraryDexBuffers = mergeLibraryDexBuffers(writeDex);
        Arguments arguments2 = this.args;
        if (arguments2.jarOutput) {
            this.outputDex = null;
            if (mergeLibraryDexBuffers != null) {
                this.outputResources.put("classes.dex", mergeLibraryDexBuffers);
            }
            if (!createJar(this.args.outName)) {
                return 3;
            }
        } else if (mergeLibraryDexBuffers != null && (str = arguments2.outName) != null) {
            OutputStream openOutput = openOutput(str);
            openOutput.write(mergeLibraryDexBuffers);
            closeOutput(openOutput);
        }
        return 0;
    }

    private int runMultiDex() {
        if (this.args.mainDexListFile != null) {
            HashSet hashSet = new HashSet();
            this.classesInMainDex = hashSet;
            readPathsFromFile(this.args.mainDexListFile, hashSet);
        }
        this.dexOutPool = Executors.newFixedThreadPool(this.args.numThreads);
        if (!processAllFiles()) {
            return 1;
        }
        if (this.libraryDexBuffers.isEmpty()) {
            DexFile dexFile = this.outputDex;
            if (dexFile != null) {
                this.dexOutputFutures.add(this.dexOutPool.submit(new DexWriter(dexFile)));
                this.outputDex = null;
            }
            try {
                this.dexOutPool.shutdown();
                if (this.dexOutPool.awaitTermination(600L, TimeUnit.SECONDS)) {
                    for (Future<byte[]> future : this.dexOutputFutures) {
                        this.dexOutputArrays.add(future.get());
                    }
                    Arguments arguments = this.args;
                    if (arguments.jarOutput) {
                        for (int i = 0; i < this.dexOutputArrays.size(); i++) {
                            this.outputResources.put(getDexFileName(i), this.dexOutputArrays.get(i));
                        }
                        if (!createJar(this.args.outName)) {
                            return 3;
                        }
                    } else if (arguments.outName != null) {
                        File file = new File(this.args.outName);
                        for (int i2 = 0; i2 < this.dexOutputArrays.size(); i2++) {
                            FileOutputStream fileOutputStream = new FileOutputStream(new File(file, getDexFileName(i2)));
                            try {
                                fileOutputStream.write(this.dexOutputArrays.get(i2));
                                closeOutput(fileOutputStream);
                            } catch (Throwable th) {
                                closeOutput(fileOutputStream);
                                throw th;
                            }
                        }
                    }
                    return 0;
                }
                throw new RuntimeException("Timed out waiting for dex writer threads.");
            } catch (InterruptedException unused) {
                this.dexOutPool.shutdownNow();
                throw new RuntimeException("A dex writer thread has been interrupted.");
            } catch (Exception unused2) {
                this.dexOutPool.shutdownNow();
                throw new RuntimeException("Unexpected exception in dex writer thread");
            }
        }
        throw new C4420g("Library dex files are not supported in multi-dex mode");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ClassDefItem translateClass(byte[] bArr, C5305f c5305f) {
        try {
            DxContext dxContext = this.context;
            Arguments arguments = this.args;
            return CfTranslator.translate(dxContext, c5305f, bArr, arguments.cfOptions, arguments.dexOptions, this.outputDex);
        } catch (C5399i e) {
            this.context.err.println("\ntrouble processing:");
            if (this.args.debug) {
                e.printStackTrace(this.context.err);
            } else {
                e.m16011c(this.context.err);
            }
            this.errors.incrementAndGet();
            return null;
        }
    }

    public int runDx(Arguments arguments) {
        OutputStream outputStream;
        this.errors.set(0);
        this.libraryDexBuffers.clear();
        this.args = arguments;
        arguments.makeOptionsObjects();
        String str = this.args.humanOutName;
        if (str != null) {
            outputStream = openOutput(str);
            this.humanOutWriter = new OutputStreamWriter(outputStream);
        } else {
            outputStream = null;
        }
        try {
            if (this.args.multiDex) {
                return runMultiDex();
            }
            return runMonoDex();
        } finally {
            closeOutput(outputStream);
        }
    }

    public Main(DxContext dxContext) {
        this.context = dxContext;
    }

    public static void clearInternTables() {
        C7400a.m1570c();
        C7157q.m2359h();
        C7214e0.m2099n();
        C7402c.m1530d();
    }

    private boolean createJar(String str) {
        try {
            Manifest makeManifest = makeManifest();
            OutputStream openOutput = openOutput(str);
            JarOutputStream jarOutputStream = new JarOutputStream(openOutput, makeManifest);
            for (Map.Entry<String, byte[]> entry : this.outputResources.entrySet()) {
                String key = entry.getKey();
                byte[] value = entry.getValue();
                JarEntry jarEntry = new JarEntry(key);
                int length = value.length;
                if (this.args.verbose) {
                    PrintStream printStream = this.context.out;
                    printStream.println("writing " + key + "; size " + length + "...");
                }
                jarEntry.setSize(length);
                jarOutputStream.putNextEntry(jarEntry);
                jarOutputStream.write(value);
                jarOutputStream.closeEntry();
            }
            jarOutputStream.finish();
            jarOutputStream.flush();
            closeOutput(openOutput);
            return true;
        } catch (Exception e) {
            if (this.args.debug) {
                this.context.err.println("\ntrouble writing output:");
                e.printStackTrace(this.context.err);
                return false;
            }
            PrintStream printStream2 = this.context.err;
            printStream2.println("\ntrouble writing output: " + e.getMessage());
            return false;
        }
    }

    private boolean processAllFiles() {
        String str;
        C5298d.InterfaceC5303e bestEffortMainDexListFilter;
        createDexFile();
        if (this.args.jarOutput) {
            this.outputResources = new TreeMap<>();
        }
        this.anyFilesProcessed = false;
        String[] strArr = this.args.fileNames;
        Arrays.sort(strArr);
        int i = this.args.numThreads;
        this.classTranslatorPool = new ThreadPoolExecutor(i, i, 0L, TimeUnit.SECONDS, new ArrayBlockingQueue(this.args.numThreads * 2, true), new ThreadPoolExecutor.CallerRunsPolicy());
        this.classDefItemConsumer = Executors.newSingleThreadExecutor();
        try {
            Arguments arguments = this.args;
            if (arguments.mainDexListFile != null) {
                if (arguments.strictNameCheck) {
                    bestEffortMainDexListFilter = new MainDexListFilter();
                } else {
                    bestEffortMainDexListFilter = new BestEffortMainDexListFilter();
                }
                for (String str2 : strArr) {
                    processOne(str2, bestEffortMainDexListFilter);
                }
                if (this.dexOutputFutures.size() <= 0) {
                    if (this.args.minimalMainDex) {
                        synchronized (this.dexRotationLock) {
                            while (true) {
                                if (this.maxMethodIdsInProcess <= 0 && this.maxFieldIdsInProcess <= 0) {
                                    break;
                                }
                                try {
                                    this.dexRotationLock.wait();
                                } catch (InterruptedException unused) {
                                }
                            }
                        }
                        rotateDexFile();
                    }
                    RemoveModuleInfoFilter removeModuleInfoFilter = new RemoveModuleInfoFilter(new NotFilter(bestEffortMainDexListFilter));
                    for (String str3 : strArr) {
                        processOne(str3, removeModuleInfoFilter);
                    }
                } else {
                    throw new C4420g("Too many classes in --main-dex-list, main dex capacity exceeded");
                }
            } else {
                RemoveModuleInfoFilter removeModuleInfoFilter2 = new RemoveModuleInfoFilter(C5298d.f19870e);
                for (String str4 : strArr) {
                    processOne(str4, removeModuleInfoFilter2);
                }
            }
        } catch (StopProcessing unused2) {
        }
        try {
            this.classTranslatorPool.shutdown();
            ExecutorService executorService = this.classTranslatorPool;
            TimeUnit timeUnit = TimeUnit.SECONDS;
            executorService.awaitTermination(600L, timeUnit);
            this.classDefItemConsumer.shutdown();
            this.classDefItemConsumer.awaitTermination(600L, timeUnit);
            for (Future<Boolean> future : this.addToDexFutures) {
                try {
                    future.get();
                } catch (ExecutionException e) {
                    if (this.errors.incrementAndGet() < 10) {
                        if (this.args.debug) {
                            this.context.err.println("Uncaught translation error:");
                            e.getCause().printStackTrace(this.context.err);
                        } else {
                            this.context.err.println("Uncaught translation error: " + e.getCause());
                        }
                    } else {
                        throw new InterruptedException("Too many errors");
                    }
                }
            }
            int i2 = this.errors.get();
            if (i2 != 0) {
                PrintStream printStream = this.context.err;
                StringBuilder sb = new StringBuilder();
                sb.append(i2);
                sb.append(" error");
                if (i2 == 1) {
                    str = "";
                } else {
                    str = C6226s.f31189J;
                }
                sb.append(str);
                sb.append("; aborting");
                printStream.println(sb.toString());
                return false;
            } else if (this.args.incremental && !this.anyFilesProcessed) {
                return true;
            } else {
                if (!this.anyFilesProcessed && !this.args.emptyOk) {
                    this.context.err.println("no classfiles specified");
                    return false;
                }
                Arguments arguments2 = this.args;
                if (arguments2.optimize && arguments2.statistics) {
                    DxContext dxContext = this.context;
                    dxContext.codeStatistics.dumpStatistics(dxContext.out);
                }
                return true;
            }
        } catch (InterruptedException e2) {
            this.classTranslatorPool.shutdownNow();
            this.classDefItemConsumer.shutdownNow();
            throw new RuntimeException("Translation has been interrupted", e2);
        } catch (Exception e3) {
            this.classTranslatorPool.shutdownNow();
            this.classDefItemConsumer.shutdownNow();
            e3.printStackTrace(this.context.out);
            throw new RuntimeException("Unexpected exception in translator thread.", e3);
        }
    }
}
