package com.esotericsoftware.kryo.unsafe;

import com.esotericsoftware.kryo.KryoException;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import sun.misc.Unsafe;
import sun.nio.ch.DirectBuffer;
/* loaded from: classes.dex */
public class UnsafeUtil {

    /* renamed from: a */
    public static Constructor<? extends ByteBuffer> f7376a;

    /* renamed from: b */
    public static Method f7377b;
    public static final long booleanArrayBaseOffset;
    public static final long byteArrayBaseOffset;

    /* renamed from: c */
    public static Method f7378c;
    public static final long charArrayBaseOffset;
    public static final long doubleArrayBaseOffset;
    public static final long floatArrayBaseOffset;
    public static final long intArrayBaseOffset;
    public static final long longArrayBaseOffset;
    public static final long shortArrayBaseOffset;
    public static final Unsafe unsafe;

    public static boolean isNewDirectBufferAvailable() {
        return f7376a != null;
    }

    /* JADX WARN: Removed duplicated region for block: B:51:0x00b5  */
    static {
        /*
            Method dump skipped, instructions count: 302
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.esotericsoftware.kryo.unsafe.UnsafeUtil.<clinit>():void");
    }

    public static void dispose(ByteBuffer byteBuffer) {
        Method method;
        if ((byteBuffer instanceof DirectBuffer) && (method = f7377b) != null) {
            try {
                f7378c.invoke(method.invoke(byteBuffer, new Object[0]), new Object[0]);
            } catch (Throwable unused) {
            }
        }
    }

    public static ByteBuffer newDirectBuffer(long j, int i) {
        Constructor<? extends ByteBuffer> constructor = f7376a;
        if (constructor != null) {
            try {
                return constructor.newInstance(Long.valueOf(j), Integer.valueOf(i));
            } catch (Exception e) {
                throw new KryoException("Error creating a ByteBuffer at address: " + j, e);
            }
        }
        throw new UnsupportedOperationException("No direct ByteBuffer constructor is available.");
    }
}
