package p057f1;

import android.os.Build;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.ObjectOutputStream;
import java.util.Iterator;
import p209w0.C7105c;
import p209w0.EnumC7102a;
import p209w0.EnumC7116k;
import p209w0.EnumC7125n;
import p209w0.EnumC7130s;
/* renamed from: f1.v */
/* loaded from: classes.dex */
public class C3500v {

    /* renamed from: f1.v$a */
    /* loaded from: classes.dex */
    public static /* synthetic */ class C3501a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f15965a;

        /* renamed from: b */
        public static final /* synthetic */ int[] f15966b;

        /* renamed from: c */
        public static final /* synthetic */ int[] f15967c;

        /* renamed from: d */
        public static final /* synthetic */ int[] f15968d;

        static {
            int[] iArr = new int[EnumC7125n.values().length];
            f15968d = iArr;
            try {
                iArr[EnumC7125n.RUN_AS_NON_EXPEDITED_WORK_REQUEST.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f15968d[EnumC7125n.DROP_WORK_REQUEST.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            int[] iArr2 = new int[EnumC7116k.values().length];
            f15967c = iArr2;
            try {
                iArr2[EnumC7116k.NOT_REQUIRED.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f15967c[EnumC7116k.CONNECTED.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f15967c[EnumC7116k.UNMETERED.ordinal()] = 3;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f15967c[EnumC7116k.NOT_ROAMING.ordinal()] = 4;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f15967c[EnumC7116k.METERED.ordinal()] = 5;
            } catch (NoSuchFieldError unused7) {
            }
            int[] iArr3 = new int[EnumC7102a.values().length];
            f15966b = iArr3;
            try {
                iArr3[EnumC7102a.EXPONENTIAL.ordinal()] = 1;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f15966b[EnumC7102a.LINEAR.ordinal()] = 2;
            } catch (NoSuchFieldError unused9) {
            }
            int[] iArr4 = new int[EnumC7130s.values().length];
            f15965a = iArr4;
            try {
                iArr4[EnumC7130s.ENQUEUED.ordinal()] = 1;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f15965a[EnumC7130s.RUNNING.ordinal()] = 2;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f15965a[EnumC7130s.SUCCEEDED.ordinal()] = 3;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f15965a[EnumC7130s.FAILED.ordinal()] = 4;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f15965a[EnumC7130s.BLOCKED.ordinal()] = 5;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f15965a[EnumC7130s.CANCELLED.ordinal()] = 6;
            } catch (NoSuchFieldError unused15) {
            }
        }
    }

    /* renamed from: a */
    public static int m18759a(EnumC7102a enumC7102a) {
        int i = C3501a.f15966b[enumC7102a.ordinal()];
        if (i != 1) {
            if (i == 2) {
                return 1;
            }
            throw new IllegalArgumentException("Could not convert " + enumC7102a + " to int");
        }
        return 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:58:0x005a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:32:0x0053 -> B:33:0x0056). Please submit an issue!!! */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static p209w0.C7105c m18758b(byte[] r6) {
        /*
            w0.c r0 = new w0.c
            r0.<init>()
            if (r6 != 0) goto L8
            return r0
        L8:
            java.io.ByteArrayInputStream r1 = new java.io.ByteArrayInputStream
            r1.<init>(r6)
            r6 = 0
            java.io.ObjectInputStream r2 = new java.io.ObjectInputStream     // Catch: java.lang.Throwable -> L39 java.io.IOException -> L3d
            r2.<init>(r1)     // Catch: java.lang.Throwable -> L39 java.io.IOException -> L3d
            int r6 = r2.readInt()     // Catch: java.io.IOException -> L37 java.lang.Throwable -> L57
        L17:
            if (r6 <= 0) goto L2b
            java.lang.String r3 = r2.readUTF()     // Catch: java.io.IOException -> L37 java.lang.Throwable -> L57
            android.net.Uri r3 = android.net.Uri.parse(r3)     // Catch: java.io.IOException -> L37 java.lang.Throwable -> L57
            boolean r4 = r2.readBoolean()     // Catch: java.io.IOException -> L37 java.lang.Throwable -> L57
            r0.m2506a(r3, r4)     // Catch: java.io.IOException -> L37 java.lang.Throwable -> L57
            int r6 = r6 + (-1)
            goto L17
        L2b:
            r2.close()     // Catch: java.io.IOException -> L2f
            goto L33
        L2f:
            r6 = move-exception
            r6.printStackTrace()
        L33:
            r1.close()     // Catch: java.io.IOException -> L52
            goto L56
        L37:
            r6 = move-exception
            goto L41
        L39:
            r0 = move-exception
            r2 = r6
            r6 = r0
            goto L58
        L3d:
            r2 = move-exception
            r5 = r2
            r2 = r6
            r6 = r5
        L41:
            r6.printStackTrace()     // Catch: java.lang.Throwable -> L57
            if (r2 == 0) goto L4e
            r2.close()     // Catch: java.io.IOException -> L4a
            goto L4e
        L4a:
            r6 = move-exception
            r6.printStackTrace()
        L4e:
            r1.close()     // Catch: java.io.IOException -> L52
            goto L56
        L52:
            r6 = move-exception
            r6.printStackTrace()
        L56:
            return r0
        L57:
            r6 = move-exception
        L58:
            if (r2 == 0) goto L62
            r2.close()     // Catch: java.io.IOException -> L5e
            goto L62
        L5e:
            r0 = move-exception
            r0.printStackTrace()
        L62:
            r1.close()     // Catch: java.io.IOException -> L66
            goto L6a
        L66:
            r0 = move-exception
            r0.printStackTrace()
        L6a:
            goto L6c
        L6b:
            throw r6
        L6c:
            goto L6b
        */
        throw new UnsupportedOperationException("Method not decompiled: p057f1.C3500v.m18758b(byte[]):w0.c");
    }

    /* renamed from: d */
    public static EnumC7102a m18756d(int i) {
        if (i != 0) {
            if (i == 1) {
                return EnumC7102a.LINEAR;
            }
            throw new IllegalArgumentException("Could not convert " + i + " to BackoffPolicy");
        }
        return EnumC7102a.EXPONENTIAL;
    }

    /* renamed from: e */
    public static EnumC7116k m18755e(int i) {
        if (i != 0) {
            if (i != 1) {
                if (i != 2) {
                    if (i != 3) {
                        if (i != 4) {
                            if (Build.VERSION.SDK_INT >= 30 && i == 5) {
                                return EnumC7116k.TEMPORARILY_UNMETERED;
                            }
                            throw new IllegalArgumentException("Could not convert " + i + " to NetworkType");
                        }
                        return EnumC7116k.METERED;
                    }
                    return EnumC7116k.NOT_ROAMING;
                }
                return EnumC7116k.UNMETERED;
            }
            return EnumC7116k.CONNECTED;
        }
        return EnumC7116k.NOT_REQUIRED;
    }

    /* renamed from: f */
    public static EnumC7125n m18754f(int i) {
        if (i != 0) {
            if (i == 1) {
                return EnumC7125n.DROP_WORK_REQUEST;
            }
            throw new IllegalArgumentException("Could not convert " + i + " to OutOfQuotaPolicy");
        }
        return EnumC7125n.RUN_AS_NON_EXPEDITED_WORK_REQUEST;
    }

    /* renamed from: g */
    public static EnumC7130s m18753g(int i) {
        if (i != 0) {
            if (i != 1) {
                if (i != 2) {
                    if (i != 3) {
                        if (i != 4) {
                            if (i == 5) {
                                return EnumC7130s.CANCELLED;
                            }
                            throw new IllegalArgumentException("Could not convert " + i + " to State");
                        }
                        return EnumC7130s.BLOCKED;
                    }
                    return EnumC7130s.FAILED;
                }
                return EnumC7130s.SUCCEEDED;
            }
            return EnumC7130s.RUNNING;
        }
        return EnumC7130s.ENQUEUED;
    }

    /* renamed from: h */
    public static int m18752h(EnumC7116k enumC7116k) {
        int i = C3501a.f15967c[enumC7116k.ordinal()];
        if (i != 1) {
            if (i == 2) {
                return 1;
            }
            if (i == 3) {
                return 2;
            }
            if (i == 4) {
                return 3;
            }
            if (i == 5) {
                return 4;
            }
            if (Build.VERSION.SDK_INT >= 30 && enumC7116k == EnumC7116k.TEMPORARILY_UNMETERED) {
                return 5;
            }
            throw new IllegalArgumentException("Could not convert " + enumC7116k + " to int");
        }
        return 0;
    }

    /* renamed from: i */
    public static int m18751i(EnumC7125n enumC7125n) {
        int i = C3501a.f15968d[enumC7125n.ordinal()];
        if (i != 1) {
            if (i == 2) {
                return 1;
            }
            throw new IllegalArgumentException("Could not convert " + enumC7125n + " to int");
        }
        return 0;
    }

    /* renamed from: j */
    public static int m18750j(EnumC7130s enumC7130s) {
        switch (C3501a.f15965a[enumC7130s.ordinal()]) {
            case 1:
                return 0;
            case 2:
                return 1;
            case 3:
                return 2;
            case 4:
                return 3;
            case 5:
                return 4;
            case 6:
                return 5;
            default:
                throw new IllegalArgumentException("Could not convert " + enumC7130s + " to int");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:34:0x0067 -> B:35:0x006a). Please submit an issue!!! */
    /* renamed from: c */
    public static byte[] m18757c(C7105c c7105c) {
        ObjectOutputStream objectOutputStream;
        boolean hasNext;
        ObjectOutputStream objectOutputStream2 = null;
        ObjectOutputStream objectOutputStream3 = null;
        objectOutputStream2 = null;
        if (c7105c.m2504c() == 0) {
            return null;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            try {
                try {
                    objectOutputStream = new ObjectOutputStream(byteArrayOutputStream);
                } catch (Throwable th) {
                    th = th;
                }
            } catch (IOException e) {
                e = e;
            }
        } catch (IOException e2) {
            e2.printStackTrace();
            objectOutputStream2 = objectOutputStream2;
        }
        try {
            objectOutputStream.writeInt(c7105c.m2504c());
            Iterator<C7105c.C7106a> it = c7105c.m2505b().iterator();
            while (true) {
                hasNext = it.hasNext();
                if (hasNext != 0) {
                    C7105c.C7106a next = it.next();
                    objectOutputStream.writeUTF(next.m2503a().toString());
                    objectOutputStream.writeBoolean(next.m2502b());
                } else {
                    try {
                        break;
                    } catch (IOException e3) {
                        e3.printStackTrace();
                    }
                }
            }
            objectOutputStream.close();
            byteArrayOutputStream.close();
            objectOutputStream2 = hasNext;
        } catch (IOException e4) {
            e = e4;
            objectOutputStream3 = objectOutputStream;
            e.printStackTrace();
            if (objectOutputStream3 != null) {
                try {
                    objectOutputStream3.close();
                } catch (IOException e5) {
                    e5.printStackTrace();
                }
            }
            byteArrayOutputStream.close();
            objectOutputStream2 = objectOutputStream3;
            return byteArrayOutputStream.toByteArray();
        } catch (Throwable th2) {
            th = th2;
            objectOutputStream2 = objectOutputStream;
            if (objectOutputStream2 != null) {
                try {
                    objectOutputStream2.close();
                } catch (IOException e6) {
                    e6.printStackTrace();
                }
            }
            try {
                byteArrayOutputStream.close();
            } catch (IOException e7) {
                e7.printStackTrace();
            }
            throw th;
        }
        return byteArrayOutputStream.toByteArray();
    }
}
