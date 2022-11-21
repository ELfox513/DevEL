package androidx.work;

import android.util.Log;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.ObjectOutputStream;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import p209w0.AbstractC7114j;
/* renamed from: androidx.work.b */
/* loaded from: classes.dex */
public final class C0380b {

    /* renamed from: b */
    public static final String f1364b = AbstractC7114j.m2489f("Data");

    /* renamed from: c */
    public static final C0380b f1365c = new C0381a().m26655a();

    /* renamed from: a */
    public Map<String, Object> f1366a;

    /* renamed from: androidx.work.b$a */
    /* loaded from: classes.dex */
    public static final class C0381a {

        /* renamed from: a */
        public Map<String, Object> f1367a = new HashMap();

        /* renamed from: c */
        public C0381a m26653c(C0380b c0380b) {
            m26652d(c0380b.f1366a);
            return this;
        }

        /* renamed from: e */
        public C0381a m26651e(String str, int i) {
            this.f1367a.put(str, Integer.valueOf(i));
            return this;
        }

        /* renamed from: f */
        public C0381a m26650f(String str, String str2) {
            this.f1367a.put(str, str2);
            return this;
        }

        /* renamed from: a */
        public C0380b m26655a() {
            C0380b c0380b = new C0380b(this.f1367a);
            C0380b.m26656l(c0380b);
            return c0380b;
        }

        /* renamed from: b */
        public C0381a m26654b(String str, Object obj) {
            if (obj == null) {
                this.f1367a.put(str, null);
            } else {
                Class<?> cls = obj.getClass();
                if (cls != Boolean.class && cls != Byte.class && cls != Integer.class && cls != Long.class && cls != Float.class && cls != Double.class && cls != String.class && cls != Boolean[].class && cls != Byte[].class && cls != Integer[].class && cls != Long[].class && cls != Float[].class && cls != Double[].class && cls != String[].class) {
                    if (cls == boolean[].class) {
                        this.f1367a.put(str, C0380b.m26667a((boolean[]) obj));
                    } else if (cls == byte[].class) {
                        this.f1367a.put(str, C0380b.m26666b((byte[]) obj));
                    } else if (cls == int[].class) {
                        this.f1367a.put(str, C0380b.m26663e((int[]) obj));
                    } else if (cls == long[].class) {
                        this.f1367a.put(str, C0380b.m26662f((long[]) obj));
                    } else if (cls == float[].class) {
                        this.f1367a.put(str, C0380b.m26664d((float[]) obj));
                    } else if (cls == double[].class) {
                        this.f1367a.put(str, C0380b.m26665c((double[]) obj));
                    } else {
                        throw new IllegalArgumentException(String.format("Key %s has invalid type %s", str, cls));
                    }
                } else {
                    this.f1367a.put(str, obj);
                }
            }
            return this;
        }

        /* renamed from: d */
        public C0381a m26652d(Map<String, Object> map) {
            for (Map.Entry<String, Object> entry : map.entrySet()) {
                m26654b(entry.getKey(), entry.getValue());
            }
            return this;
        }
    }

    public C0380b() {
    }

    /* renamed from: a */
    public static Boolean[] m26667a(boolean[] zArr) {
        Boolean[] boolArr = new Boolean[zArr.length];
        for (int i = 0; i < zArr.length; i++) {
            boolArr[i] = Boolean.valueOf(zArr[i]);
        }
        return boolArr;
    }

    /* renamed from: b */
    public static Byte[] m26666b(byte[] bArr) {
        Byte[] bArr2 = new Byte[bArr.length];
        for (int i = 0; i < bArr.length; i++) {
            bArr2[i] = Byte.valueOf(bArr[i]);
        }
        return bArr2;
    }

    /* renamed from: c */
    public static Double[] m26665c(double[] dArr) {
        Double[] dArr2 = new Double[dArr.length];
        for (int i = 0; i < dArr.length; i++) {
            dArr2[i] = Double.valueOf(dArr[i]);
        }
        return dArr2;
    }

    /* renamed from: d */
    public static Float[] m26664d(float[] fArr) {
        Float[] fArr2 = new Float[fArr.length];
        for (int i = 0; i < fArr.length; i++) {
            fArr2[i] = Float.valueOf(fArr[i]);
        }
        return fArr2;
    }

    /* renamed from: e */
    public static Integer[] m26663e(int[] iArr) {
        Integer[] numArr = new Integer[iArr.length];
        for (int i = 0; i < iArr.length; i++) {
            numArr[i] = Integer.valueOf(iArr[i]);
        }
        return numArr;
    }

    /* renamed from: f */
    public static Long[] m26662f(long[] jArr) {
        Long[] lArr = new Long[jArr.length];
        for (int i = 0; i < jArr.length; i++) {
            lArr[i] = Long.valueOf(jArr[i]);
        }
        return lArr;
    }

    public boolean equals(Object obj) {
        boolean z;
        if (this == obj) {
            return true;
        }
        if (obj == null || C0380b.class != obj.getClass()) {
            return false;
        }
        C0380b c0380b = (C0380b) obj;
        Set<String> keySet = this.f1366a.keySet();
        if (!keySet.equals(c0380b.f1366a.keySet())) {
            return false;
        }
        for (String str : keySet) {
            Object obj2 = this.f1366a.get(str);
            Object obj3 = c0380b.f1366a.get(str);
            if (obj2 != null && obj3 != null) {
                if ((obj2 instanceof Object[]) && (obj3 instanceof Object[])) {
                    z = Arrays.deepEquals((Object[]) obj2, (Object[]) obj3);
                    continue;
                } else {
                    z = obj2.equals(obj3);
                    continue;
                }
            } else if (obj2 == obj3) {
                z = true;
                continue;
            } else {
                z = false;
                continue;
            }
            if (!z) {
                return false;
            }
        }
        return true;
    }

    public int hashCode() {
        return this.f1366a.hashCode() * 31;
    }

    /* renamed from: i */
    public Map<String, Object> m26659i() {
        return Collections.unmodifiableMap(this.f1366a);
    }

    /* renamed from: k */
    public int m26657k() {
        return this.f1366a.size();
    }

    public C0380b(C0380b c0380b) {
        this.f1366a = new HashMap(c0380b.f1366a);
    }

    /* JADX WARN: Removed duplicated region for block: B:55:0x004e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x006b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:35:0x005d -> B:36:0x0062). Please submit an issue!!! */
    /* renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static androidx.work.C0380b m26661g(byte[] r7) {
        /*
            java.lang.String r0 = "Error in Data#fromByteArray: "
            int r1 = r7.length
            r2 = 10240(0x2800, float:1.4349E-41)
            if (r1 > r2) goto L80
            java.util.HashMap r1 = new java.util.HashMap
            r1.<init>()
            java.io.ByteArrayInputStream r2 = new java.io.ByteArrayInputStream
            r2.<init>(r7)
            r7 = 0
            java.io.ObjectInputStream r3 = new java.io.ObjectInputStream     // Catch: java.lang.Throwable -> L3d java.lang.ClassNotFoundException -> L41 java.io.IOException -> L43
            r3.<init>(r2)     // Catch: java.lang.Throwable -> L3d java.lang.ClassNotFoundException -> L41 java.io.IOException -> L43
            int r7 = r3.readInt()     // Catch: java.lang.ClassNotFoundException -> L39 java.io.IOException -> L3b java.lang.Throwable -> L68
        L1b:
            if (r7 <= 0) goto L2b
            java.lang.String r4 = r3.readUTF()     // Catch: java.lang.ClassNotFoundException -> L39 java.io.IOException -> L3b java.lang.Throwable -> L68
            java.lang.Object r5 = r3.readObject()     // Catch: java.lang.ClassNotFoundException -> L39 java.io.IOException -> L3b java.lang.Throwable -> L68
            r1.put(r4, r5)     // Catch: java.lang.ClassNotFoundException -> L39 java.io.IOException -> L3b java.lang.Throwable -> L68
            int r7 = r7 + (-1)
            goto L1b
        L2b:
            r3.close()     // Catch: java.io.IOException -> L2f
            goto L35
        L2f:
            r7 = move-exception
            java.lang.String r3 = androidx.work.C0380b.f1364b
            android.util.Log.e(r3, r0, r7)
        L35:
            r2.close()     // Catch: java.io.IOException -> L5c
            goto L62
        L39:
            r7 = move-exception
            goto L47
        L3b:
            r7 = move-exception
            goto L47
        L3d:
            r1 = move-exception
            r3 = r7
            r7 = r1
            goto L69
        L41:
            r3 = move-exception
            goto L44
        L43:
            r3 = move-exception
        L44:
            r6 = r3
            r3 = r7
            r7 = r6
        L47:
            java.lang.String r4 = androidx.work.C0380b.f1364b     // Catch: java.lang.Throwable -> L68
            android.util.Log.e(r4, r0, r7)     // Catch: java.lang.Throwable -> L68
            if (r3 == 0) goto L58
            r3.close()     // Catch: java.io.IOException -> L52
            goto L58
        L52:
            r7 = move-exception
            java.lang.String r3 = androidx.work.C0380b.f1364b
            android.util.Log.e(r3, r0, r7)
        L58:
            r2.close()     // Catch: java.io.IOException -> L5c
            goto L62
        L5c:
            r7 = move-exception
            java.lang.String r2 = androidx.work.C0380b.f1364b
            android.util.Log.e(r2, r0, r7)
        L62:
            androidx.work.b r7 = new androidx.work.b
            r7.<init>(r1)
            return r7
        L68:
            r7 = move-exception
        L69:
            if (r3 == 0) goto L75
            r3.close()     // Catch: java.io.IOException -> L6f
            goto L75
        L6f:
            r1 = move-exception
            java.lang.String r3 = androidx.work.C0380b.f1364b
            android.util.Log.e(r3, r0, r1)
        L75:
            r2.close()     // Catch: java.io.IOException -> L79
            goto L7f
        L79:
            r1 = move-exception
            java.lang.String r2 = androidx.work.C0380b.f1364b
            android.util.Log.e(r2, r0, r1)
        L7f:
            throw r7
        L80:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r0 = "Data cannot occupy more than 10240 bytes when serialized"
            r7.<init>(r0)
            goto L89
        L88:
            throw r7
        L89:
            goto L88
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.work.C0380b.m26661g(byte[]):androidx.work.b");
    }

    /* renamed from: l */
    public static byte[] m26656l(C0380b c0380b) {
        ObjectOutputStream objectOutputStream;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        ObjectOutputStream objectOutputStream2 = null;
        try {
            try {
                objectOutputStream = new ObjectOutputStream(byteArrayOutputStream);
            } catch (Throwable th) {
                th = th;
            }
        } catch (IOException e) {
            e = e;
        }
        try {
            objectOutputStream.writeInt(c0380b.m26657k());
            for (Map.Entry<String, Object> entry : c0380b.f1366a.entrySet()) {
                objectOutputStream.writeUTF(entry.getKey());
                objectOutputStream.writeObject(entry.getValue());
            }
            try {
                objectOutputStream.close();
            } catch (IOException e2) {
                Log.e(f1364b, "Error in Data#toByteArray: ", e2);
            }
            try {
                byteArrayOutputStream.close();
            } catch (IOException e3) {
                Log.e(f1364b, "Error in Data#toByteArray: ", e3);
            }
            if (byteArrayOutputStream.size() <= 10240) {
                return byteArrayOutputStream.toByteArray();
            }
            throw new IllegalStateException("Data cannot occupy more than 10240 bytes when serialized");
        } catch (IOException e4) {
            e = e4;
            objectOutputStream2 = objectOutputStream;
            Log.e(f1364b, "Error in Data#toByteArray: ", e);
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            if (objectOutputStream2 != null) {
                try {
                    objectOutputStream2.close();
                } catch (IOException e5) {
                    Log.e(f1364b, "Error in Data#toByteArray: ", e5);
                }
            }
            try {
                byteArrayOutputStream.close();
            } catch (IOException e6) {
                Log.e(f1364b, "Error in Data#toByteArray: ", e6);
            }
            return byteArray;
        } catch (Throwable th2) {
            th = th2;
            objectOutputStream2 = objectOutputStream;
            if (objectOutputStream2 != null) {
                try {
                    objectOutputStream2.close();
                } catch (IOException e7) {
                    Log.e(f1364b, "Error in Data#toByteArray: ", e7);
                }
            }
            try {
                byteArrayOutputStream.close();
            } catch (IOException e8) {
                Log.e(f1364b, "Error in Data#toByteArray: ", e8);
            }
            throw th;
        }
    }

    /* renamed from: h */
    public int m26660h(String str, int i) {
        Object obj = this.f1366a.get(str);
        if (obj instanceof Integer) {
            return ((Integer) obj).intValue();
        }
        return i;
    }

    /* renamed from: j */
    public String m26658j(String str) {
        Object obj = this.f1366a.get(str);
        if (obj instanceof String) {
            return (String) obj;
        }
        return null;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("Data {");
        if (!this.f1366a.isEmpty()) {
            for (String str : this.f1366a.keySet()) {
                sb.append(str);
                sb.append(" : ");
                Object obj = this.f1366a.get(str);
                if (obj instanceof Object[]) {
                    sb.append(Arrays.toString((Object[]) obj));
                } else {
                    sb.append(obj);
                }
                sb.append(", ");
            }
        }
        sb.append("}");
        return sb.toString();
    }

    public C0380b(Map<String, ?> map) {
        this.f1366a = new HashMap(map);
    }
}
