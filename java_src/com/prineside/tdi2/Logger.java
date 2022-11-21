package com.prineside.tdi2;

import com.badlogic.gdx.Application;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.Net;
import com.badlogic.gdx.net.HttpParametersUtils;
import com.badlogic.gdx.scenes.scene2d.utils.TextureRegionDrawable;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.DelayedRemovalArray;
import com.badlogic.gdx.utils.IntArray;
import com.badlogic.gdx.utils.Json;
import com.badlogic.gdx.utils.JsonWriter;
import com.badlogic.gdx.utils.ObjectMap;
import com.badlogic.gdx.utils.Timer;
import com.prineside.tdi2.enums.StaticSoundType;
import com.prineside.tdi2.managers.AuthManager;
import com.prineside.tdi2.managers.SettingsManager;
import com.prineside.tdi2.managers.UiManager;
import com.prineside.tdi2.p036ui.shared.Notifications;
import com.prineside.tdi2.utils.MaterialColor;
import com.prineside.tdi2.utils.MultiOutputStream;
import com.prineside.tdi2.utils.MultiOutputStreamSync;
import java.io.BufferedReader;
import java.io.ByteArrayOutputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.PrintStream;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.io.Writer;
import java.lang.Thread;
import java.nio.charset.Charset;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.Date;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Properties;
import java.util.zip.ZipEntry;
import java.util.zip.ZipOutputStream;
/* loaded from: classes2.dex */
public class Logger {
    public static Writer _logWriter = null;

    /* renamed from: a */
    public static int f8724a = 1;

    /* renamed from: b */
    public static ByteArrayOutputStream f8725b;

    /* renamed from: c */
    public static ByteArrayOutputStream f8726c;
    public static PrintStream stdOutPS = new PrintStream(new OutputStream() { // from class: com.prineside.tdi2.Logger.1
        @Override // java.io.OutputStream
        public void write(int i) {
        }
    });
    public static PrintStream stdErrPS = new PrintStream(new OutputStream() { // from class: com.prineside.tdi2.Logger.2
        @Override // java.io.OutputStream
        public void write(int i) {
        }
    });

    /* renamed from: d */
    public static MultiOutputStreamSync f8727d = null;

    /* renamed from: e */
    public static final LogEntry[] f8728e = new LogEntry[128];

    /* renamed from: f */
    public static int f8729f = 0;

    /* renamed from: g */
    public static boolean f8730g = false;

    /* renamed from: h */
    public static long f8731h = 0;

    /* renamed from: i */
    public static final DelayedRemovalArray<LoggerListener> f8732i = new DelayedRemovalArray<>();

    /* renamed from: j */
    public static final Array<LogEntry> f8733j = new Array<>(LogEntry.class);

    /* renamed from: k */
    public static final Array<LogEntry> f8734k = new Array<>(LogEntry.class);

    /* renamed from: l */
    public static final Array<LogEntry> f8735l = new Array<>(LogEntry.class);

    /* renamed from: m */
    public static boolean f8736m = false;

    /* renamed from: n */
    public static final Runnable f8737n = new Runnable() { // from class: com.prineside.tdi2.Logger.3
        @Override // java.lang.Runnable
        public void run() {
            synchronized (Logger.f8734k) {
                Logger.f8735l.clear();
                Logger.f8735l.addAll(Logger.f8734k);
                Logger.f8734k.clear();
            }
            Logger.f8732i.begin();
            Iterator it = Logger.f8732i.iterator();
            while (it.hasNext()) {
                LoggerListener loggerListener = (LoggerListener) it.next();
                Array.ArrayIterator it2 = Logger.f8735l.iterator();
                while (it2.hasNext()) {
                    loggerListener.newEntry((LogEntry) it2.next());
                }
            }
            Logger.f8732i.end();
            Array.ArrayIterator it3 = Logger.f8735l.iterator();
            while (it3.hasNext()) {
                ((LogEntry) it3.next()).f8741a = true;
            }
            boolean unused = Logger.f8736m = false;
        }
    };

    /* renamed from: o */
    public static final IntArray f8738o = new IntArray();

    /* loaded from: classes2.dex */
    public enum EntryType {
        DEBUG,
        ERROR
    }

    /* loaded from: classes2.dex */
    public interface LoggerListener {
        void newEntry(LogEntry logEntry);
    }

    public static void error(String str, String str2) {
        Application application = Gdx.app;
        if (application != null) {
            application.error("<(" + str, str2);
        } else {
            PrintStream printStream = System.err;
            printStream.println("<(" + str + ": " + str2);
        }
        try {
            m21944i(addToLog(EntryType.ERROR, str, str2));
        } catch (Exception unused) {
        }
    }

    /* renamed from: f */
    public static void m21947f(String str, String str2, String str3) {
        try {
            ZipOutputStream zipOutputStream = new ZipOutputStream(new FileOutputStream(str2));
            zipOutputStream.putNextEntry(new ZipEntry(str3));
            byte[] readAllBytes = Files.readAllBytes(Paths.get(str, new String[0]));
            zipOutputStream.write(readAllBytes, 0, readAllBytes.length);
            zipOutputStream.closeEntry();
            zipOutputStream.close();
        } catch (FileNotFoundException unused) {
            System.err.format("fileToZip: The file %s does not exist", str);
        } catch (Exception e) {
            PrintStream printStream = System.err;
            printStream.println("fileToZip: (" + str + ", " + str2 + ") error: " + e);
        }
    }

    public static void flushEndlessLogs(boolean z) {
        String str;
        FileOutputStream fileOutputStream;
        FileOutputStream fileOutputStream2 = null;
        try {
            try {
                if (Game.f8589i instanceof HeadlessReplayValidationGame) {
                    str = "log-" + ((HeadlessReplayValidationGame) Game.f8589i).instanceName + ".txt";
                } else {
                    str = "log.txt";
                }
                fileOutputStream = new FileOutputStream(str, true);
            } catch (Exception e) {
                e = e;
            }
        } catch (Throwable th) {
            th = th;
        }
        try {
            synchronized (f8727d.synchronizer) {
                f8725b.writeTo(fileOutputStream);
                f8725b.reset();
            }
            fileOutputStream.close();
            if (z) {
                long size = Files.size(Paths.get(str, new String[0]));
                if (size > 134217728) {
                    PrintStream printStream = System.out;
                    StringBuilder sb = new StringBuilder();
                    sb.append("Rotating logs #");
                    int i = f8724a;
                    f8724a = i + 1;
                    sb.append(i);
                    sb.append(", size: ");
                    sb.append(size / 1024);
                    sb.append("kb");
                    printStream.println(sb.toString());
                    m21943j();
                }
            }
        } catch (Exception e2) {
            e = e2;
            fileOutputStream2 = fileOutputStream;
            e.printStackTrace();
            if (fileOutputStream2 != null) {
                try {
                    fileOutputStream2.close();
                } catch (IOException e3) {
                    e3.printStackTrace();
                }
            }
        } catch (Throwable th2) {
            th = th2;
            fileOutputStream2 = fileOutputStream;
            if (fileOutputStream2 != null) {
                try {
                    fileOutputStream2.close();
                } catch (IOException e4) {
                    e4.printStackTrace();
                }
            }
            throw th;
        }
    }

    public static Array<LogEntry> getLog(int i, boolean z) {
        if (i >= 1) {
            f8733j.clear();
            for (int i2 = f8729f - 1; i2 >= 0; i2--) {
                if (z || f8728e[i2].f8741a) {
                    f8733j.add(f8728e[i2]);
                }
                i--;
                if (i == 0) {
                    break;
                }
            }
            if (i != 0 && f8730g) {
                for (int i3 = 127; i3 >= f8729f; i3--) {
                    if (z || f8728e[i3].f8741a) {
                        f8733j.add(f8728e[i3]);
                    }
                    i--;
                    if (i == 0) {
                        break;
                    }
                }
            }
            return f8733j;
        }
        throw new IllegalArgumentException("Size can't be less than 1");
    }

    public static void handleThreadExceptions(Thread thread) {
        m21946g(thread, null, true);
    }

    public static void handleThreadExceptionsForgiving(Thread thread) {
        m21946g(thread, null, false);
    }

    public static void log(String str, String str2) {
        if (str2 == null) {
            str2 = "(empty message)";
        }
        Application application = Gdx.app;
        if (application != null) {
            application.log("<(" + str, str2);
        } else {
            PrintStream printStream = System.out;
            printStream.println("<(" + str + ": " + str2);
        }
        try {
            m21944i(addToLog(EntryType.DEBUG, str, str2));
        } catch (Exception unused) {
        }
    }

    public static void report(String str) {
        report(str, null);
    }

    /* loaded from: classes2.dex */
    public static class LogEntry {

        /* renamed from: a */
        public boolean f8741a;
        public final Date date;
        public EntryType entryType;
        public String message;
        public String tag;
        public Throwable throwable;

        public LogEntry() {
            Date date = new Date();
            this.date = date;
            this.entryType = EntryType.DEBUG;
            this.tag = "";
            date.setTime(System.currentTimeMillis());
        }
    }

    public static void addListener(LoggerListener loggerListener) {
        if (loggerListener != null) {
            DelayedRemovalArray<LoggerListener> delayedRemovalArray = f8732i;
            if (!delayedRemovalArray.contains(loggerListener, true)) {
                delayedRemovalArray.add(loggerListener);
                return;
            }
            return;
        }
        throw new IllegalArgumentException("listener is null");
    }

    public static synchronized LogEntry addToLog(EntryType entryType, String str, String str2) {
        LogEntry logEntry;
        synchronized (Logger.class) {
            if (str == null) {
                str = "null";
            }
            if (str2 == null) {
                str2 = "null";
            }
            try {
                if (str2.length() > 2048) {
                    str2 = str2.substring(0, 2048);
                }
                int i = f8729f;
                f8729f = i + 1;
                LogEntry[] logEntryArr = f8728e;
                if (logEntryArr[i] == null) {
                    logEntryArr[i] = new LogEntry();
                }
                logEntry = logEntryArr[i];
                logEntry.f8741a = false;
                logEntry.entryType = entryType;
                logEntry.tag = str;
                logEntry.message = str2;
                logEntry.throwable = null;
                if (f8729f == 128) {
                    f8729f = 0;
                    f8730g = true;
                }
                Writer writer = _logWriter;
                if (writer != null) {
                    try {
                        writer.append((CharSequence) entryType.name()).append(' ').append((CharSequence) str).append(' ').append((CharSequence) str2).append((CharSequence) "\n");
                    } catch (IOException e) {
                        _logWriter = null;
                        Gdx.app.error("Logger", "failed to write log", e);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return logEntry;
    }

    /* renamed from: g */
    public static void m21946g(Thread thread, ActionResolver actionResolver, final boolean z) {
        Game game;
        IntArray intArray = f8738o;
        if (intArray.contains(thread.hashCode())) {
            PrintStream printStream = System.out;
            printStream.println("skipped handleThreadExceptions for thread " + thread + " " + thread.getName() + " - already handled");
            return;
        }
        intArray.add(thread.hashCode());
        PrintStream printStream2 = System.out;
        printStream2.println("started handling uncaught exceptions on thread " + thread + " " + thread.getName());
        if (actionResolver == null && (game = Game.f8589i) != null) {
            actionResolver = game.actionResolver;
        }
        if (actionResolver != null) {
            actionResolver.handleThreadExceptions(thread);
        } else {
            System.out.println("handleThreadExceptions - actionResolver is not specified, it won't handle exceptions on thread");
        }
        final Thread.UncaughtExceptionHandler uncaughtExceptionHandler = thread.getUncaughtExceptionHandler();
        thread.setUncaughtExceptionHandler(new Thread.UncaughtExceptionHandler() { // from class: com.prineside.tdi2.v1
            @Override // java.lang.Thread.UncaughtExceptionHandler
            public final void uncaughtException(Thread thread2, Throwable th) {
                Logger.m21945h(uncaughtExceptionHandler, z, thread2, th);
            }
        });
        PrintStream printStream3 = System.out;
        printStream3.println("Listening for exceptions in thread " + thread.getName() + " (" + thread.getId() + ")");
    }

    public static void handleThreadExceptions(Thread thread, ActionResolver actionResolver) {
        m21946g(thread, actionResolver, true);
    }

    public static void handleThreadExceptionsForgiving(Thread thread, ActionResolver actionResolver) {
        m21946g(thread, actionResolver, false);
    }

    public static void handleUncaughtException(Thread thread, Throwable th) {
        String byteArrayOutputStream;
        if (!Config.isHeadless()) {
            try {
                Json json = new Json(JsonWriter.OutputType.json);
                StringWriter stringWriter = new StringWriter();
                json.setWriter(stringWriter);
                json.writeObjectStart();
                json.writeValue("type", th.getClass().getName());
                json.writeValue("thread", thread.getName());
                json.writeValue("message", th.getMessage());
                StringWriter stringWriter2 = new StringWriter();
                th.printStackTrace(new PrintWriter(stringWriter2));
                json.writeValue("stacktrace", stringWriter2.toString());
                ByteArrayOutputStream byteArrayOutputStream2 = f8726c;
                if (byteArrayOutputStream2 == null) {
                    byteArrayOutputStream = "";
                } else {
                    byteArrayOutputStream = byteArrayOutputStream2.toString();
                }
                json.writeValue("stderr", byteArrayOutputStream);
                json.writeObjectEnd();
                Gdx.files.local("cache/crash-report.json").writeString(stringWriter.toString(), false, "UTF-8");
            } catch (Exception e) {
                System.err.println("failed to write crash report:" + e.getMessage());
            }
        }
        System.err.println("Handling uncaught exception in thread " + thread.getName() + " (" + th.getMessage() + ")");
        th.printStackTrace();
        Writer writer = _logWriter;
        if (writer != null) {
            try {
                writer.append((CharSequence) "Exception in thread ").append((CharSequence) thread.getName()).append((CharSequence) "\n");
                _logWriter.append((CharSequence) th.getClass().getName()).append((CharSequence) ": ").append((CharSequence) th.getMessage()).append((CharSequence) "\n");
                StackTraceElement[] stackTrace = th.getStackTrace();
                if (stackTrace != null) {
                    for (StackTraceElement stackTraceElement : stackTrace) {
                        _logWriter.append((CharSequence) "  at ").append((CharSequence) stackTraceElement.toString()).append((CharSequence) "\n");
                    }
                }
            } catch (IOException unused) {
            }
        }
        try {
            if (Config.isHeadless() || Gdx.app.getType() == Application.ApplicationType.Desktop) {
                PrintWriter printWriter = new PrintWriter(Gdx.files.local("exceptions.log").write(true));
                printWriter.append("Exception in thread ").append((CharSequence) thread.getName()).append(":\n");
                th.printStackTrace(printWriter);
                Game game = Game.f8589i;
                if (game instanceof HeadlessReplayValidationGame) {
                    printWriter.append("\nReplay: ").append((CharSequence) ((HeadlessReplayValidationGame) game).currentReplay);
                }
                printWriter.append("\n\n");
                printWriter.close();
            }
        } catch (Exception unused2) {
        }
        if (!Config.isHeadless()) {
            report("UE in " + thread.getName() + ": " + th.getMessage(), th);
        }
    }

    /* renamed from: i */
    public static void m21944i(LogEntry logEntry) {
        if (f8732i.size == 0) {
            return;
        }
        Array<LogEntry> array = f8734k;
        synchronized (array) {
            array.add(logEntry);
        }
        Application application = Gdx.app;
        if (application != null && !f8736m) {
            f8736m = true;
            application.postRunnable(f8737n);
        }
    }

    /* renamed from: j */
    public static void m21943j() {
        String str;
        if (Game.f8589i instanceof HeadlessReplayValidationGame) {
            str = "log-" + ((HeadlessReplayValidationGame) Game.f8589i).instanceName + ".txt";
        } else {
            str = "log.txt";
        }
        if (Gdx.files.local(str + ".1").exists()) {
            m21947f(str + ".1", str + ".1.zip", str);
        }
        for (int i = 4; i >= 1; i--) {
            String str2 = str + "." + i + ".zip";
            if (Gdx.files.local(str2).exists()) {
                Gdx.files.local(str2).moveTo(Gdx.files.local(str + "." + (i + 1) + ".zip"));
            }
        }
        if (Gdx.files.local(str).exists()) {
            Gdx.files.local(str).moveTo(Gdx.files.local(str + ".1"));
        }
    }

    public static void removeListener(LoggerListener loggerListener) {
        if (loggerListener != null) {
            f8732i.removeValue(loggerListener, true);
            return;
        }
        throw new IllegalArgumentException("listener is null");
    }

    public static void report(String str, Throwable th) {
        ActionResolver actionResolver;
        AuthManager authManager;
        SettingsManager settingsManager;
        if (Game.getRealTickCount() - f8731h < 500000) {
            error("Logger", "Cancelled report - too frequent");
        } else if (Game.f8589i.actionResolver.isAppModified()) {
            error("Logger", "Cancelled report - app is modified");
        } else if (Config.isModdingMode()) {
            error("Logger", "Cancelled report - modding mode");
        } else if (Config.isHeadless()) {
            error("Logger", "Cancelled report - headless mode");
        } else {
            Game game = Game.f8589i;
            if (game != null && (settingsManager = game.settingsManager) != null && !settingsManager.isBugReportsEnabled()) {
                error("Logger", "Cancelled report - disabled");
                return;
            }
            f8731h = Game.getRealTickCount();
            Json json = new Json(JsonWriter.OutputType.json);
            StringWriter stringWriter = new StringWriter();
            json.setWriter(stringWriter);
            json.writeObjectStart();
            json.writeValue("current", Thread.currentThread().getName());
            json.writeArrayStart("threads");
            try {
                for (Thread thread : Thread.getAllStackTraces().keySet()) {
                    json.writeObjectStart();
                    json.writeValue("name", thread.getName());
                    json.writeValue("state", thread.getState().name());
                    json.writeArrayStart("trace");
                    int i = 0;
                    for (StackTraceElement stackTraceElement : thread.getStackTrace()) {
                        json.writeValue(stackTraceElement.toString());
                        i++;
                        if (i == 5) {
                            break;
                        }
                    }
                    json.writeArrayEnd();
                    json.writeObjectEnd();
                }
            } catch (Exception unused) {
            }
            json.writeObjectEnd();
            json.writeObjectEnd();
            try {
                Net.HttpRequest httpRequest = new Net.HttpRequest(Net.HttpMethods.POST);
                httpRequest.setUrl(Config.LOGGER_REPORT_URL);
                HashMap hashMap = new HashMap();
                Application application = Gdx.app;
                String str2 = "(no stdOut)";
                if (application != null && application.getType() == Application.ApplicationType.Android) {
                    try {
                        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(Runtime.getRuntime().exec("logcat -d").getInputStream()));
                        StringBuilder sb = new StringBuilder();
                        while (true) {
                            String readLine = bufferedReader.readLine();
                            if (readLine == null) {
                                break;
                            }
                            sb.append(readLine);
                            sb.append('\n');
                        }
                        StringBuilder sb2 = new StringBuilder();
                        ByteArrayOutputStream byteArrayOutputStream = f8725b;
                        sb2.append(byteArrayOutputStream == null ? "(no stdOut)" : byteArrayOutputStream.toString());
                        sb2.append("\n\nLogcat:\n");
                        sb2.append(sb.toString());
                        hashMap.put("stdout", sb2.toString());
                    } catch (Exception e) {
                        StringBuilder sb3 = new StringBuilder();
                        ByteArrayOutputStream byteArrayOutputStream2 = f8725b;
                        sb3.append(byteArrayOutputStream2 == null ? "(no stdOut)" : byteArrayOutputStream2.toString());
                        sb3.append("\n\nFailed to get logcat: ");
                        sb3.append(e.getMessage());
                        hashMap.put("stdout", sb3.toString());
                    }
                } else {
                    ByteArrayOutputStream byteArrayOutputStream3 = f8725b;
                    hashMap.put("stdout", byteArrayOutputStream3 == null ? "(no stdOut)" : byteArrayOutputStream3.toString());
                }
                ByteArrayOutputStream byteArrayOutputStream4 = f8726c;
                if (byteArrayOutputStream4 != null) {
                    str2 = byteArrayOutputStream4.toString();
                }
                hashMap.put("stderr", str2);
                hashMap.put("reason", str);
                Application application2 = Gdx.app;
                hashMap.put("os", application2 == null ? "unknown" : application2.getType().name());
                Game game2 = Game.f8589i;
                if (game2 != null && (authManager = game2.authManager) != null) {
                    hashMap.put("playerid", authManager.getPlayerIdCached());
                } else {
                    hashMap.put("playerid", "G-0000-0000-000000");
                }
                Game game3 = Game.f8589i;
                if (game3 != null && (actionResolver = game3.actionResolver) != null) {
                    ObjectMap<String, String> deviceInfo = actionResolver.getDeviceInfo();
                    Json json2 = new Json(JsonWriter.OutputType.json);
                    StringWriter stringWriter2 = new StringWriter();
                    json2.setWriter(stringWriter2);
                    json2.writeObjectStart();
                    if (Game.f8589i.localeManager != null) {
                        try {
                            json2.writeValue("g.locale", Charset.defaultCharset() + "," + Game.f8589i.localeManager.getLocale() + "," + Game.f8589i.localeManager.i18n.getLocale());
                        } catch (Exception unused2) {
                        }
                    }
                    ObjectMap.Entries<String, String> it = deviceInfo.iterator();
                    while (it.hasNext()) {
                        ObjectMap.Entry next = it.next();
                        json2.writeValue((String) next.key, next.value);
                    }
                    json2.writeObjectStart("s.properties");
                    try {
                        Properties properties = System.getProperties();
                        Enumeration<?> propertyNames = properties.propertyNames();
                        while (propertyNames.hasMoreElements()) {
                            Object nextElement = propertyNames.nextElement();
                            Object obj = properties.get(nextElement);
                            if (obj != null) {
                                json2.writeValue(nextElement.toString(), ((String) obj).trim());
                            }
                        }
                    } catch (Exception e2) {
                        e2.printStackTrace();
                    }
                    json2.writeObjectEnd();
                    json2.writeObjectStart("s.runtime");
                    try {
                        Runtime runtime = Runtime.getRuntime();
                        json2.writeValue("proc_av", Integer.valueOf(runtime.availableProcessors()));
                        json2.writeValue("mem_free", Long.valueOf(runtime.freeMemory()));
                        json2.writeValue("mem_max", Long.valueOf(runtime.maxMemory()));
                        json2.writeValue("mem_total", Long.valueOf(runtime.totalMemory()));
                    } catch (Exception e3) {
                        e3.printStackTrace();
                    }
                    json2.writeObjectEnd();
                    json2.writeObjectStart("s.graphics");
                    try {
                        json2.writeValue("type", Gdx.graphics.getGLVersion().getType().toString());
                        json2.writeValue("version", Gdx.graphics.getGLVersion().getMajorVersion() + "." + Gdx.graphics.getGLVersion().getMinorVersion() + "." + Gdx.graphics.getGLVersion().getReleaseVersion());
                        json2.writeValue("renderer", Gdx.graphics.getGLVersion().getRendererString());
                        json2.writeValue("vendor", Gdx.graphics.getGLVersion().getVendorString());
                        json2.writeValue("bb_size", Gdx.graphics.getBackBufferWidth() + "x" + Gdx.graphics.getBackBufferHeight());
                        json2.writeValue("density", Float.valueOf(Gdx.graphics.getDensity()));
                        json2.writeValue("max_txt_size", Integer.valueOf(Config.getMaxTextureSize()));
                    } catch (Exception e4) {
                        e4.printStackTrace();
                    }
                    json2.writeObjectEnd();
                    json2.writeObjectEnd();
                    hashMap.put("device", stringWriter2.toString());
                }
                hashMap.put("threads", stringWriter.toString());
                if (th != null) {
                    StringWriter stringWriter3 = new StringWriter();
                    th.printStackTrace(new PrintWriter(stringWriter3));
                    hashMap.put("stacktrace", stringWriter3.toString());
                    hashMap.put("exception", String.valueOf(th.getMessage()));
                }
                httpRequest.setContent(HttpParametersUtils.convertHttpParameters(hashMap));
                final boolean[] zArr = {false};
                Gdx.f38302net.sendHttpRequest(httpRequest, new Net.HttpResponseListener() { // from class: com.prineside.tdi2.Logger.5
                    @Override // com.badlogic.gdx.Net.HttpResponseListener
                    public void cancelled() {
                        System.out.println("Logger.report: cancelled");
                        zArr[0] = true;
                    }

                    @Override // com.badlogic.gdx.Net.HttpResponseListener
                    public void failed(Throwable th2) {
                        PrintStream printStream = System.out;
                        printStream.println("Logger.report: Error sending report: " + th2.getMessage());
                        zArr[0] = true;
                    }

                    @Override // com.badlogic.gdx.Net.HttpResponseListener
                    public void handleHttpResponse(Net.HttpResponse httpResponse) {
                        try {
                            String resultAsString = httpResponse.getResultAsString();
                            PrintStream printStream = System.out;
                            printStream.println("Logger.report: " + resultAsString);
                        } catch (Exception e5) {
                            PrintStream printStream2 = System.out;
                            printStream2.println("Logger.report: Exception: " + e5.getMessage());
                            e5.printStackTrace();
                        }
                        zArr[0] = true;
                    }
                });
                Gdx.app.error("Logger", "Sent report");
                for (int i2 = 0; i2 < 40; i2++) {
                    if (zArr[0]) {
                        return;
                    }
                    Thread.sleep(50L);
                }
            } catch (Exception e5) {
                Gdx.app.log("Logger", "Failed (" + e5.getMessage() + ")");
                e5.printStackTrace();
            }
        }
    }

    public static void dispose() {
        if (Config.isHeadless()) {
            flushEndlessLogs(false);
        }
        Writer writer = _logWriter;
        if (writer != null) {
            try {
                writer.close();
            } catch (IOException unused) {
            }
            _logWriter = null;
        }
    }

    /* renamed from: h */
    public static /* synthetic */ void m21945h(Thread.UncaughtExceptionHandler uncaughtExceptionHandler, boolean z, Thread thread, Throwable th) {
        handleUncaughtException(thread, th);
        if (uncaughtExceptionHandler != null) {
            uncaughtExceptionHandler.uncaughtException(thread, th);
        }
        if (z) {
            dispose();
            Gdx.app.exit();
        }
    }

    public static void init(ActionResolver actionResolver) {
        if (!Config.isHeadless()) {
            try {
                f8725b = new ByteArrayOutputStream();
                f8726c = new ByteArrayOutputStream();
                PrintStream printStream = new PrintStream(new MultiOutputStream(System.out, f8725b));
                stdOutPS = printStream;
                System.setOut(printStream);
                PrintStream printStream2 = new PrintStream(new MultiOutputStream(System.err, f8726c));
                stdErrPS = printStream2;
                System.setErr(printStream2);
                System.out.println("Hooked to System.out");
            } catch (Exception e) {
                PrintStream printStream3 = System.err;
                printStream3.println("Failed to hook to System.out: " + e.getMessage());
            }
            handleThreadExceptions(Thread.currentThread(), actionResolver);
            return;
        }
        throw new IllegalStateException("Is headless");
    }

    public static void initHeadless() {
        if (Config.isHeadless()) {
            try {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                f8725b = byteArrayOutputStream;
                f8726c = byteArrayOutputStream;
                f8727d = new MultiOutputStreamSync(System.out, f8725b);
                PrintStream printStream = new PrintStream(f8727d);
                stdOutPS = printStream;
                System.setOut(printStream);
                System.setErr(stdOutPS);
                m21943j();
                Timer.schedule(new Timer.Task() { // from class: com.prineside.tdi2.Logger.4
                    @Override // com.badlogic.gdx.utils.Timer.Task, java.lang.Runnable
                    public void run() {
                        Logger.flushEndlessLogs(true);
                    }
                }, 3.0f, 3.0f, -1);
                System.out.println("Hooked to System.out");
            } catch (Exception e) {
                PrintStream printStream2 = System.err;
                printStream2.println("Failed to hook to System.out: " + e.getMessage());
            }
            handleThreadExceptions(Thread.currentThread(), null);
            return;
        }
        throw new IllegalStateException("Not headless");
    }

    public static void error(String str, String str2, Throwable th) {
        SettingsManager settingsManager;
        UiManager uiManager;
        Notifications notifications;
        Application application = Gdx.app;
        if (application != null) {
            application.error("<(" + str, str2);
        } else {
            PrintStream printStream = System.err;
            printStream.println("<(" + str + ": " + str2);
        }
        LogEntry addToLog = addToLog(EntryType.ERROR, str, str2);
        addToLog.throwable = th;
        th.printStackTrace();
        m21944i(addToLog);
        try {
            Game game = Game.f8589i;
            if (game == null || !game.isInMainThread() || (settingsManager = Game.f8589i.settingsManager) == null || !settingsManager.isInDebugMode() || (uiManager = Game.f8589i.uiManager) == null || (notifications = uiManager.notifications) == null) {
                return;
            }
            notifications.add(str + ":" + str2 + "\n" + th.getMessage(), new TextureRegionDrawable(Game.f8589i.assetManager.getTextureRegions("enemy-type-boss-metaphor-creep").first()), MaterialColor.RED.P900, StaticSoundType.ENEMY_REACHED);
        } catch (Exception unused) {
        }
    }

    public static void log(String str, String str2, Throwable th) {
        if (str2 == null) {
            str2 = "(empty message)";
        }
        Application application = Gdx.app;
        if (application != null) {
            application.log("<(" + str, str2, th);
        } else {
            PrintStream printStream = System.out;
            printStream.println("<(" + str + ": " + str2);
            th.printStackTrace(System.out);
        }
        try {
            LogEntry addToLog = addToLog(EntryType.DEBUG, str, str2);
            addToLog.throwable = th;
            m21944i(addToLog);
        } catch (Exception unused) {
        }
    }
}
