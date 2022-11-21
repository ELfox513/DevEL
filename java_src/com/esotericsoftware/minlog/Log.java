package com.esotericsoftware.minlog;

import java.io.PrintWriter;
import java.io.StringWriter;
import net.bytebuddy.pool.TypePool;
/* loaded from: classes.dex */
public class Log {
    public static final int LEVEL_DEBUG = 2;
    public static final int LEVEL_ERROR = 5;
    public static final int LEVEL_INFO = 3;
    public static final int LEVEL_NONE = 6;
    public static final int LEVEL_TRACE = 1;
    public static final int LEVEL_WARN = 4;

    /* renamed from: a */
    public static int f7599a = 3;
    public static boolean ERROR = true;
    public static boolean WARN = true;
    public static boolean INFO = true;
    public static boolean DEBUG = false;
    public static boolean TRACE = false;

    /* renamed from: b */
    public static Logger f7600b = new Logger();

    /* loaded from: classes.dex */
    public static class Logger {

        /* renamed from: a */
        public final long f7601a = System.currentTimeMillis();

        public void print(String str) {
            System.out.println(str);
        }

        public void log(int i, String str, String str2, Throwable th) {
            StringBuilder sb = new StringBuilder(256);
            long currentTimeMillis = System.currentTimeMillis() - this.f7601a;
            long j = currentTimeMillis / 60000;
            long j2 = (currentTimeMillis / 1000) % 60;
            if (j <= 9) {
                sb.append('0');
            }
            sb.append(j);
            sb.append(':');
            if (j2 <= 9) {
                sb.append('0');
            }
            sb.append(j2);
            if (i != 1) {
                if (i != 2) {
                    if (i != 3) {
                        if (i != 4) {
                            if (i == 5) {
                                sb.append(" ERROR: ");
                            }
                        } else {
                            sb.append("  WARN: ");
                        }
                    } else {
                        sb.append("  INFO: ");
                    }
                } else {
                    sb.append(" DEBUG: ");
                }
            } else {
                sb.append(" TRACE: ");
            }
            if (str != null) {
                sb.append(TypePool.Default.LazyTypeDescription.GenericTypeToken.COMPONENT_TYPE_PATH);
                sb.append(str);
                sb.append("] ");
            }
            sb.append(str2);
            if (th != null) {
                StringWriter stringWriter = new StringWriter(256);
                th.printStackTrace(new PrintWriter(stringWriter));
                sb.append('\n');
                sb.append(stringWriter.toString().trim());
            }
            print(sb.toString());
        }
    }

    public static void DEBUG() {
        set(2);
    }

    public static void ERROR() {
        set(5);
    }

    public static void INFO() {
        set(3);
    }

    public static void NONE() {
        set(6);
    }

    public static void TRACE() {
        set(1);
    }

    public static void WARN() {
        set(4);
    }

    public static void debug(String str, Throwable th) {
        if (DEBUG) {
            f7600b.log(2, null, str, th);
        }
    }

    public static void error(String str, Throwable th) {
        if (ERROR) {
            f7600b.log(5, null, str, th);
        }
    }

    public static void info(String str, Throwable th) {
        if (INFO) {
            f7600b.log(3, null, str, th);
        }
    }

    public static void setLogger(Logger logger) {
        f7600b = logger;
    }

    public static void trace(String str, Throwable th) {
        if (TRACE) {
            f7600b.log(1, null, str, th);
        }
    }

    public static void warn(String str, Throwable th) {
        if (WARN) {
            f7600b.log(4, null, str, th);
        }
    }

    public static void debug(String str, String str2, Throwable th) {
        if (DEBUG) {
            f7600b.log(2, str, str2, th);
        }
    }

    public static void error(String str, String str2, Throwable th) {
        if (ERROR) {
            f7600b.log(5, str, str2, th);
        }
    }

    public static void info(String str, String str2, Throwable th) {
        if (INFO) {
            f7600b.log(3, str, str2, th);
        }
    }

    public static void set(int i) {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        f7599a = i;
        boolean z5 = false;
        if (i <= 5) {
            z = true;
        } else {
            z = false;
        }
        ERROR = z;
        if (i <= 4) {
            z2 = true;
        } else {
            z2 = false;
        }
        WARN = z2;
        if (i <= 3) {
            z3 = true;
        } else {
            z3 = false;
        }
        INFO = z3;
        if (i <= 2) {
            z4 = true;
        } else {
            z4 = false;
        }
        DEBUG = z4;
        if (i <= 1) {
            z5 = true;
        }
        TRACE = z5;
    }

    public static void trace(String str, String str2, Throwable th) {
        if (TRACE) {
            f7600b.log(1, str, str2, th);
        }
    }

    public static void warn(String str, String str2, Throwable th) {
        if (WARN) {
            f7600b.log(4, str, str2, th);
        }
    }

    public static void debug(String str) {
        if (DEBUG) {
            f7600b.log(2, null, str, null);
        }
    }

    public static void error(String str) {
        if (ERROR) {
            f7600b.log(5, null, str, null);
        }
    }

    public static void info(String str) {
        if (INFO) {
            f7600b.log(3, null, str, null);
        }
    }

    public static void trace(String str) {
        if (TRACE) {
            f7600b.log(1, null, str, null);
        }
    }

    public static void warn(String str) {
        if (WARN) {
            f7600b.log(4, null, str, null);
        }
    }

    public static void debug(String str, String str2) {
        if (DEBUG) {
            f7600b.log(2, str, str2, null);
        }
    }

    public static void error(String str, String str2) {
        if (ERROR) {
            f7600b.log(5, str, str2, null);
        }
    }

    public static void info(String str, String str2) {
        if (INFO) {
            f7600b.log(3, str, str2, null);
        }
    }

    public static void trace(String str, String str2) {
        if (TRACE) {
            f7600b.log(1, str, str2, null);
        }
    }

    public static void warn(String str, String str2) {
        if (WARN) {
            f7600b.log(4, str, str2, null);
        }
    }
}
