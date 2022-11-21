package com.badlogic.gdx.utils;

import com.badlogic.gdx.math.Matrix3;
import com.badlogic.gdx.math.Matrix4;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.CharBuffer;
import java.nio.DoubleBuffer;
import java.nio.FloatBuffer;
import java.nio.IntBuffer;
import java.nio.LongBuffer;
import java.nio.ShortBuffer;
/* loaded from: classes.dex */
public final class BufferUtils {

    /* renamed from: a */
    public static Array<ByteBuffer> f6428a = new Array<>();

    /* renamed from: b */
    public static int f6429b = 0;

    public static native void clear(ByteBuffer byteBuffer, int i);

    public static void copy(float[] fArr, Buffer buffer, int i, int i2) {
        if (buffer instanceof ByteBuffer) {
            buffer.limit(i << 2);
        } else if (buffer instanceof FloatBuffer) {
            buffer.limit(i);
        }
        copyJni(fArr, buffer, i, i2);
        buffer.position(0);
    }

    private static native void copyJni(Buffer buffer, int i, Buffer buffer2, int i2, int i3);

    private static native void copyJni(byte[] bArr, int i, Buffer buffer, int i2, int i3);

    private static native void copyJni(char[] cArr, int i, Buffer buffer, int i2, int i3);

    private static native void copyJni(double[] dArr, int i, Buffer buffer, int i2, int i3);

    private static native void copyJni(float[] fArr, int i, Buffer buffer, int i2, int i3);

    private static native void copyJni(float[] fArr, Buffer buffer, int i, int i2);

    private static native void copyJni(int[] iArr, int i, Buffer buffer, int i2, int i3);

    private static native void copyJni(long[] jArr, int i, Buffer buffer, int i2, int i3);

    private static native void copyJni(short[] sArr, int i, Buffer buffer, int i2, int i3);

    private static native long find(Buffer buffer, int i, int i2, Buffer buffer2, int i3, int i4);

    private static native long find(Buffer buffer, int i, int i2, Buffer buffer2, int i3, int i4, float f);

    private static native long find(Buffer buffer, int i, int i2, float[] fArr, int i3, int i4);

    private static native long find(Buffer buffer, int i, int i2, float[] fArr, int i3, int i4, float f);

    private static native long find(float[] fArr, int i, int i2, Buffer buffer, int i3, int i4);

    private static native long find(float[] fArr, int i, int i2, Buffer buffer, int i3, int i4, float f);

    private static native long find(float[] fArr, int i, int i2, float[] fArr2, int i3, int i4);

    private static native long find(float[] fArr, int i, int i2, float[] fArr2, int i3, int i4, float f);

    public static long findFloats(Buffer buffer, int i, Buffer buffer2, int i2) {
        return find(buffer, m23682c(buffer), i, buffer2, m23682c(buffer2), i2);
    }

    private static native void freeMemory(ByteBuffer byteBuffer);

    public static int getAllocatedBytesUnsafe() {
        return f6429b;
    }

    private static native long getBufferAddress(Buffer buffer);

    public static long getUnsafeBufferAddress(Buffer buffer) {
        return getBufferAddress(buffer) + buffer.position();
    }

    private static native ByteBuffer newDisposableByteBuffer(int i);

    public static ByteBuffer newUnsafeByteBuffer(int i) {
        ByteBuffer newDisposableByteBuffer = newDisposableByteBuffer(i);
        newDisposableByteBuffer.order(ByteOrder.nativeOrder());
        f6429b += i;
        synchronized (f6428a) {
            f6428a.add(newDisposableByteBuffer);
        }
        return newDisposableByteBuffer;
    }

    public static void transform(Buffer buffer, int i, int i2, int i3, Matrix4 matrix4) {
        transform(buffer, i, i2, i3, matrix4, 0);
    }

    private static native void transformV2M3Jni(Buffer buffer, int i, int i2, float[] fArr, int i3);

    private static native void transformV2M3Jni(float[] fArr, int i, int i2, float[] fArr2, int i3);

    private static native void transformV2M4Jni(Buffer buffer, int i, int i2, float[] fArr, int i3);

    private static native void transformV2M4Jni(float[] fArr, int i, int i2, float[] fArr2, int i3);

    private static native void transformV3M3Jni(Buffer buffer, int i, int i2, float[] fArr, int i3);

    private static native void transformV3M3Jni(float[] fArr, int i, int i2, float[] fArr2, int i3);

    private static native void transformV3M4Jni(Buffer buffer, int i, int i2, float[] fArr, int i3);

    private static native void transformV3M4Jni(float[] fArr, int i, int i2, float[] fArr2, int i3);

    private static native void transformV4M4Jni(Buffer buffer, int i, int i2, float[] fArr, int i3);

    private static native void transformV4M4Jni(float[] fArr, int i, int i2, float[] fArr2, int i3);

    /* renamed from: a */
    public static int m23684a(Buffer buffer, int i) {
        if (buffer instanceof ByteBuffer) {
            return i;
        }
        if (buffer instanceof ShortBuffer) {
            return i >>> 1;
        }
        if (buffer instanceof CharBuffer) {
            return i >>> 1;
        }
        if (buffer instanceof IntBuffer) {
            return i >>> 2;
        }
        if (buffer instanceof LongBuffer) {
            return i >>> 3;
        }
        if (buffer instanceof FloatBuffer) {
            return i >>> 2;
        }
        if (buffer instanceof DoubleBuffer) {
            return i >>> 3;
        }
        throw new GdxRuntimeException("Can't copy to a " + buffer.getClass().getName() + " instance");
    }

    /* renamed from: b */
    public static int m23683b(Buffer buffer, int i) {
        if (buffer instanceof ByteBuffer) {
            return i;
        }
        if (buffer instanceof ShortBuffer) {
            return i << 1;
        }
        if (buffer instanceof CharBuffer) {
            return i << 1;
        }
        if (buffer instanceof IntBuffer) {
            return i << 2;
        }
        if (buffer instanceof LongBuffer) {
            return i << 3;
        }
        if (buffer instanceof FloatBuffer) {
            return i << 2;
        }
        if (buffer instanceof DoubleBuffer) {
            return i << 3;
        }
        throw new GdxRuntimeException("Can't copy to a " + buffer.getClass().getName() + " instance");
    }

    /* renamed from: c */
    public static int m23682c(Buffer buffer) {
        if (buffer instanceof ByteBuffer) {
            return buffer.position();
        }
        if (buffer instanceof ShortBuffer) {
            return buffer.position() << 1;
        }
        if (buffer instanceof CharBuffer) {
            return buffer.position() << 1;
        }
        if (buffer instanceof IntBuffer) {
            return buffer.position() << 2;
        }
        if (buffer instanceof LongBuffer) {
            return buffer.position() << 3;
        }
        if (buffer instanceof FloatBuffer) {
            return buffer.position() << 2;
        }
        if (buffer instanceof DoubleBuffer) {
            return buffer.position() << 3;
        }
        throw new GdxRuntimeException("Can't copy to a " + buffer.getClass().getName() + " instance");
    }

    public static long findFloats(float[] fArr, int i, Buffer buffer, int i2) {
        return find(fArr, 0, i, buffer, m23682c(buffer), i2);
    }

    public static boolean isUnsafeByteBuffer(ByteBuffer byteBuffer) {
        boolean contains;
        synchronized (f6428a) {
            contains = f6428a.contains(byteBuffer, true);
        }
        return contains;
    }

    public static CharBuffer newCharBuffer(int i) {
        ByteBuffer allocateDirect = ByteBuffer.allocateDirect(i * 2);
        allocateDirect.order(ByteOrder.nativeOrder());
        return allocateDirect.asCharBuffer();
    }

    public static DoubleBuffer newDoubleBuffer(int i) {
        ByteBuffer allocateDirect = ByteBuffer.allocateDirect(i * 8);
        allocateDirect.order(ByteOrder.nativeOrder());
        return allocateDirect.asDoubleBuffer();
    }

    public static FloatBuffer newFloatBuffer(int i) {
        ByteBuffer allocateDirect = ByteBuffer.allocateDirect(i * 4);
        allocateDirect.order(ByteOrder.nativeOrder());
        return allocateDirect.asFloatBuffer();
    }

    public static IntBuffer newIntBuffer(int i) {
        ByteBuffer allocateDirect = ByteBuffer.allocateDirect(i * 4);
        allocateDirect.order(ByteOrder.nativeOrder());
        return allocateDirect.asIntBuffer();
    }

    public static LongBuffer newLongBuffer(int i) {
        ByteBuffer allocateDirect = ByteBuffer.allocateDirect(i * 8);
        allocateDirect.order(ByteOrder.nativeOrder());
        return allocateDirect.asLongBuffer();
    }

    public static ShortBuffer newShortBuffer(int i) {
        ByteBuffer allocateDirect = ByteBuffer.allocateDirect(i * 2);
        allocateDirect.order(ByteOrder.nativeOrder());
        return allocateDirect.asShortBuffer();
    }

    public static void transform(float[] fArr, int i, int i2, int i3, Matrix4 matrix4) {
        transform(fArr, i, i2, i3, matrix4, 0);
    }

    public static void disposeUnsafeByteBuffer(ByteBuffer byteBuffer) {
        int capacity = byteBuffer.capacity();
        synchronized (f6428a) {
            if (!f6428a.removeValue(byteBuffer, true)) {
                throw new IllegalArgumentException("buffer not allocated with newUnsafeByteBuffer or already disposed");
            }
        }
        f6429b -= capacity;
        freeMemory(byteBuffer);
    }

    public static long findFloats(Buffer buffer, int i, float[] fArr, int i2) {
        return find(buffer, m23682c(buffer), i, fArr, 0, i2);
    }

    public static ByteBuffer newByteBuffer(int i) {
        ByteBuffer allocateDirect = ByteBuffer.allocateDirect(i);
        allocateDirect.order(ByteOrder.nativeOrder());
        return allocateDirect;
    }

    public static void transform(Buffer buffer, int i, int i2, int i3, Matrix4 matrix4, int i4) {
        if (i == 2) {
            transformV2M4Jni(buffer, i2, i3, matrix4.val, m23682c(buffer) + i4);
        } else if (i == 3) {
            transformV3M4Jni(buffer, i2, i3, matrix4.val, m23682c(buffer) + i4);
        } else if (i == 4) {
            transformV4M4Jni(buffer, i2, i3, matrix4.val, m23682c(buffer) + i4);
        } else {
            throw new IllegalArgumentException();
        }
    }

    public static long findFloats(float[] fArr, int i, float[] fArr2, int i2) {
        return find(fArr, 0, i, fArr2, 0, i2);
    }

    public static long findFloats(Buffer buffer, int i, Buffer buffer2, int i2, float f) {
        return find(buffer, m23682c(buffer), i, buffer2, m23682c(buffer2), i2, f);
    }

    public static void copy(byte[] bArr, int i, Buffer buffer, int i2) {
        buffer.limit(buffer.position() + m23684a(buffer, i2));
        copyJni(bArr, i, buffer, m23682c(buffer), i2);
    }

    public static long findFloats(float[] fArr, int i, Buffer buffer, int i2, float f) {
        return find(fArr, 0, i, buffer, m23682c(buffer), i2, f);
    }

    public static long findFloats(Buffer buffer, int i, float[] fArr, int i2, float f) {
        return find(buffer, m23682c(buffer), i, fArr, 0, i2, f);
    }

    public static ByteBuffer newUnsafeByteBuffer(ByteBuffer byteBuffer) {
        f6429b += byteBuffer.capacity();
        synchronized (f6428a) {
            f6428a.add(byteBuffer);
        }
        return byteBuffer;
    }

    public static void transform(float[] fArr, int i, int i2, int i3, Matrix4 matrix4, int i4) {
        if (i == 2) {
            transformV2M4Jni(fArr, i2, i3, matrix4.val, i4);
        } else if (i == 3) {
            transformV3M4Jni(fArr, i2, i3, matrix4.val, i4);
        } else if (i == 4) {
            transformV4M4Jni(fArr, i2, i3, matrix4.val, i4);
        } else {
            throw new IllegalArgumentException();
        }
    }

    public static void copy(short[] sArr, int i, Buffer buffer, int i2) {
        int i3 = i2 << 1;
        buffer.limit(buffer.position() + m23684a(buffer, i3));
        copyJni(sArr, i, buffer, m23682c(buffer), i3);
    }

    public static long findFloats(float[] fArr, int i, float[] fArr2, int i2, float f) {
        return find(fArr, 0, i, fArr2, 0, i2, f);
    }

    public static void copy(char[] cArr, int i, int i2, Buffer buffer) {
        copyJni(cArr, i, buffer, m23682c(buffer), i2 << 1);
    }

    public static void copy(int[] iArr, int i, int i2, Buffer buffer) {
        copyJni(iArr, i, buffer, m23682c(buffer), i2 << 2);
    }

    public static void transform(Buffer buffer, int i, int i2, int i3, Matrix3 matrix3) {
        transform(buffer, i, i2, i3, matrix3, 0);
    }

    public static void copy(long[] jArr, int i, int i2, Buffer buffer) {
        copyJni(jArr, i, buffer, m23682c(buffer), i2 << 3);
    }

    public static void transform(float[] fArr, int i, int i2, int i3, Matrix3 matrix3) {
        transform(fArr, i, i2, i3, matrix3, 0);
    }

    public static void copy(float[] fArr, int i, int i2, Buffer buffer) {
        copyJni(fArr, i, buffer, m23682c(buffer), i2 << 2);
    }

    public static void transform(Buffer buffer, int i, int i2, int i3, Matrix3 matrix3, int i4) {
        if (i == 2) {
            transformV2M3Jni(buffer, i2, i3, matrix3.val, m23682c(buffer) + i4);
        } else if (i == 3) {
            transformV3M3Jni(buffer, i2, i3, matrix3.val, m23682c(buffer) + i4);
        } else {
            throw new IllegalArgumentException();
        }
    }

    public static void copy(double[] dArr, int i, int i2, Buffer buffer) {
        copyJni(dArr, i, buffer, m23682c(buffer), i2 << 3);
    }

    public static void copy(char[] cArr, int i, Buffer buffer, int i2) {
        int i3 = i2 << 1;
        buffer.limit(buffer.position() + m23684a(buffer, i3));
        copyJni(cArr, i, buffer, m23682c(buffer), i3);
    }

    public static void transform(float[] fArr, int i, int i2, int i3, Matrix3 matrix3, int i4) {
        if (i == 2) {
            transformV2M3Jni(fArr, i2, i3, matrix3.val, i4);
        } else if (i == 3) {
            transformV3M3Jni(fArr, i2, i3, matrix3.val, i4);
        } else {
            throw new IllegalArgumentException();
        }
    }

    public static void copy(int[] iArr, int i, Buffer buffer, int i2) {
        int i3 = i2 << 2;
        buffer.limit(buffer.position() + m23684a(buffer, i3));
        copyJni(iArr, i, buffer, m23682c(buffer), i3);
    }

    public static void copy(long[] jArr, int i, Buffer buffer, int i2) {
        int i3 = i2 << 3;
        buffer.limit(buffer.position() + m23684a(buffer, i3));
        copyJni(jArr, i, buffer, m23682c(buffer), i3);
    }

    public static void copy(float[] fArr, int i, Buffer buffer, int i2) {
        int i3 = i2 << 2;
        buffer.limit(buffer.position() + m23684a(buffer, i3));
        copyJni(fArr, i, buffer, m23682c(buffer), i3);
    }

    public static void copy(double[] dArr, int i, Buffer buffer, int i2) {
        int i3 = i2 << 3;
        buffer.limit(buffer.position() + m23684a(buffer, i3));
        copyJni(dArr, i, buffer, m23682c(buffer), i3);
    }

    public static void copy(Buffer buffer, Buffer buffer2, int i) {
        int m23683b = m23683b(buffer, i);
        buffer2.limit(buffer2.position() + m23684a(buffer2, m23683b));
        copyJni(buffer, m23682c(buffer), buffer2, m23682c(buffer2), m23683b);
    }
}
