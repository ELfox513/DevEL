package com.esotericsoftware.kryo.serializers;

import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.Serializer;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import java.lang.reflect.Array;
/* loaded from: classes.dex */
public class DefaultArraySerializers {

    /* loaded from: classes.dex */
    public static class BooleanArraySerializer extends Serializer<boolean[]> {
        @Override // com.esotericsoftware.kryo.Serializer
        public boolean[] copy(Kryo kryo, boolean[] zArr) {
            int length = zArr.length;
            boolean[] zArr2 = new boolean[length];
            System.arraycopy(zArr, 0, zArr2, 0, length);
            return zArr2;
        }

        @Override // com.esotericsoftware.kryo.Serializer
        public boolean[] read(Kryo kryo, Input input, Class<? extends boolean[]> cls) {
            int readVarInt = input.readVarInt(true);
            if (readVarInt == 0) {
                return null;
            }
            int i = readVarInt - 1;
            boolean[] zArr = new boolean[i];
            for (int i2 = 0; i2 < i; i2++) {
                zArr[i2] = input.readBoolean();
            }
            return zArr;
        }

        @Override // com.esotericsoftware.kryo.Serializer
        public void write(Kryo kryo, Output output, boolean[] zArr) {
            if (zArr == null) {
                output.writeByte((byte) 0);
                return;
            }
            output.writeVarInt(zArr.length + 1, true);
            for (boolean z : zArr) {
                output.writeBoolean(z);
            }
        }

        public BooleanArraySerializer() {
            setAcceptsNull(true);
        }
    }

    /* loaded from: classes.dex */
    public static class ByteArraySerializer extends Serializer<byte[]> {
        @Override // com.esotericsoftware.kryo.Serializer
        public byte[] copy(Kryo kryo, byte[] bArr) {
            int length = bArr.length;
            byte[] bArr2 = new byte[length];
            System.arraycopy(bArr, 0, bArr2, 0, length);
            return bArr2;
        }

        @Override // com.esotericsoftware.kryo.Serializer
        public byte[] read(Kryo kryo, Input input, Class<? extends byte[]> cls) {
            int readVarInt = input.readVarInt(true);
            if (readVarInt == 0) {
                return null;
            }
            return input.readBytes(readVarInt - 1);
        }

        @Override // com.esotericsoftware.kryo.Serializer
        public void write(Kryo kryo, Output output, byte[] bArr) {
            if (bArr == null) {
                output.writeByte((byte) 0);
                return;
            }
            output.writeVarInt(bArr.length + 1, true);
            output.writeBytes(bArr);
        }

        public ByteArraySerializer() {
            setAcceptsNull(true);
        }
    }

    /* loaded from: classes.dex */
    public static class CharArraySerializer extends Serializer<char[]> {
        @Override // com.esotericsoftware.kryo.Serializer
        public char[] copy(Kryo kryo, char[] cArr) {
            int length = cArr.length;
            char[] cArr2 = new char[length];
            System.arraycopy(cArr, 0, cArr2, 0, length);
            return cArr2;
        }

        @Override // com.esotericsoftware.kryo.Serializer
        public char[] read(Kryo kryo, Input input, Class<? extends char[]> cls) {
            int readVarInt = input.readVarInt(true);
            if (readVarInt == 0) {
                return null;
            }
            return input.readChars(readVarInt - 1);
        }

        @Override // com.esotericsoftware.kryo.Serializer
        public void write(Kryo kryo, Output output, char[] cArr) {
            if (cArr == null) {
                output.writeByte((byte) 0);
                return;
            }
            output.writeVarInt(cArr.length + 1, true);
            output.writeChars(cArr, 0, cArr.length);
        }

        public CharArraySerializer() {
            setAcceptsNull(true);
        }
    }

    /* loaded from: classes.dex */
    public static class DoubleArraySerializer extends Serializer<double[]> {
        @Override // com.esotericsoftware.kryo.Serializer
        public double[] copy(Kryo kryo, double[] dArr) {
            int length = dArr.length;
            double[] dArr2 = new double[length];
            System.arraycopy(dArr, 0, dArr2, 0, length);
            return dArr2;
        }

        @Override // com.esotericsoftware.kryo.Serializer
        public double[] read(Kryo kryo, Input input, Class<? extends double[]> cls) {
            int readVarInt = input.readVarInt(true);
            if (readVarInt == 0) {
                return null;
            }
            return input.readDoubles(readVarInt - 1);
        }

        @Override // com.esotericsoftware.kryo.Serializer
        public void write(Kryo kryo, Output output, double[] dArr) {
            if (dArr == null) {
                output.writeByte((byte) 0);
                return;
            }
            output.writeVarInt(dArr.length + 1, true);
            output.writeDoubles(dArr, 0, dArr.length);
        }

        public DoubleArraySerializer() {
            setAcceptsNull(true);
        }
    }

    /* loaded from: classes.dex */
    public static class FloatArraySerializer extends Serializer<float[]> {
        @Override // com.esotericsoftware.kryo.Serializer
        public float[] copy(Kryo kryo, float[] fArr) {
            int length = fArr.length;
            float[] fArr2 = new float[length];
            System.arraycopy(fArr, 0, fArr2, 0, length);
            return fArr2;
        }

        @Override // com.esotericsoftware.kryo.Serializer
        public float[] read(Kryo kryo, Input input, Class<? extends float[]> cls) {
            int readVarInt = input.readVarInt(true);
            if (readVarInt == 0) {
                return null;
            }
            return input.readFloats(readVarInt - 1);
        }

        @Override // com.esotericsoftware.kryo.Serializer
        public void write(Kryo kryo, Output output, float[] fArr) {
            if (fArr == null) {
                output.writeByte((byte) 0);
                return;
            }
            output.writeVarInt(fArr.length + 1, true);
            output.writeFloats(fArr, 0, fArr.length);
        }

        public FloatArraySerializer() {
            setAcceptsNull(true);
        }
    }

    /* loaded from: classes.dex */
    public static class IntArraySerializer extends Serializer<int[]> {
        @Override // com.esotericsoftware.kryo.Serializer
        public int[] copy(Kryo kryo, int[] iArr) {
            int length = iArr.length;
            int[] iArr2 = new int[length];
            System.arraycopy(iArr, 0, iArr2, 0, length);
            return iArr2;
        }

        @Override // com.esotericsoftware.kryo.Serializer
        public int[] read(Kryo kryo, Input input, Class<? extends int[]> cls) {
            int readVarInt = input.readVarInt(true);
            if (readVarInt == 0) {
                return null;
            }
            return input.readInts(readVarInt - 1, false);
        }

        @Override // com.esotericsoftware.kryo.Serializer
        public void write(Kryo kryo, Output output, int[] iArr) {
            if (iArr == null) {
                output.writeByte((byte) 0);
                return;
            }
            output.writeVarInt(iArr.length + 1, true);
            output.writeInts(iArr, 0, iArr.length, false);
        }

        public IntArraySerializer() {
            setAcceptsNull(true);
        }
    }

    /* loaded from: classes.dex */
    public static class LongArraySerializer extends Serializer<long[]> {
        @Override // com.esotericsoftware.kryo.Serializer
        public long[] copy(Kryo kryo, long[] jArr) {
            int length = jArr.length;
            long[] jArr2 = new long[length];
            System.arraycopy(jArr, 0, jArr2, 0, length);
            return jArr2;
        }

        @Override // com.esotericsoftware.kryo.Serializer
        public long[] read(Kryo kryo, Input input, Class<? extends long[]> cls) {
            int readVarInt = input.readVarInt(true);
            if (readVarInt == 0) {
                return null;
            }
            return input.readLongs(readVarInt - 1, false);
        }

        @Override // com.esotericsoftware.kryo.Serializer
        public void write(Kryo kryo, Output output, long[] jArr) {
            if (jArr == null) {
                output.writeByte((byte) 0);
                return;
            }
            output.writeVarInt(jArr.length + 1, true);
            output.writeLongs(jArr, 0, jArr.length, false);
        }

        public LongArraySerializer() {
            setAcceptsNull(true);
        }
    }

    /* loaded from: classes.dex */
    public static class ObjectArraySerializer extends Serializer<Object[]> {

        /* renamed from: c */
        public boolean f7308c;

        /* renamed from: d */
        public boolean f7309d = true;

        /* renamed from: e */
        public final Class f7310e;

        public void setElementsAreSameType(boolean z) {
            this.f7308c = z;
        }

        public void setElementsCanBeNull(boolean z) {
            this.f7309d = z;
        }

        @Override // com.esotericsoftware.kryo.Serializer
        public Object[] copy(Kryo kryo, Object[] objArr) {
            int length = objArr.length;
            Object[] objArr2 = (Object[]) Array.newInstance(objArr.getClass().getComponentType(), length);
            kryo.reference(objArr2);
            for (int i = 0; i < length; i++) {
                objArr2[i] = kryo.copy(objArr[i]);
            }
            return objArr2;
        }

        @Override // com.esotericsoftware.kryo.Serializer
        public Object[] read(Kryo kryo, Input input, Class<? extends Object[]> cls) {
            int readVarInt = input.readVarInt(true);
            if (readVarInt == 0) {
                return null;
            }
            int i = readVarInt - 1;
            Object[] objArr = (Object[]) Array.newInstance(cls.getComponentType(), i);
            kryo.reference(objArr);
            Class componentType = cls.getComponentType();
            int i2 = 0;
            if (this.f7308c || kryo.isFinal(componentType)) {
                Serializer serializer = kryo.getSerializer(componentType);
                if (this.f7309d) {
                    while (i2 < i) {
                        objArr[i2] = kryo.readObjectOrNull(input, componentType, serializer);
                        i2++;
                    }
                } else {
                    while (i2 < i) {
                        objArr[i2] = kryo.readObject(input, componentType, serializer);
                        i2++;
                    }
                }
            } else {
                while (i2 < i) {
                    objArr[i2] = kryo.readClassAndObject(input);
                    i2++;
                }
            }
            return objArr;
        }

        @Override // com.esotericsoftware.kryo.Serializer
        public void write(Kryo kryo, Output output, Object[] objArr) {
            int i = 0;
            if (objArr == null) {
                output.writeByte((byte) 0);
                return;
            }
            int length = objArr.length;
            output.writeVarInt(length + 1, true);
            Class<?> componentType = objArr.getClass().getComponentType();
            if (!this.f7308c && !kryo.isFinal(componentType)) {
                while (i < length) {
                    kryo.writeClassAndObject(output, objArr[i]);
                    i++;
                }
                return;
            }
            Serializer serializer = kryo.getSerializer(componentType);
            if (this.f7309d) {
                while (i < length) {
                    kryo.writeObjectOrNull(output, objArr[i], serializer);
                    i++;
                }
                return;
            }
            while (i < length) {
                kryo.writeObject(output, objArr[i], serializer);
                i++;
            }
        }

        public ObjectArraySerializer(Kryo kryo, Class cls) {
            boolean z;
            setAcceptsNull(true);
            this.f7310e = cls;
            if ((cls.getComponentType().getModifiers() & 16) != 0) {
                z = true;
            } else {
                z = false;
            }
            if (z) {
                setElementsAreSameType(true);
            }
        }
    }

    /* loaded from: classes.dex */
    public static class ShortArraySerializer extends Serializer<short[]> {
        @Override // com.esotericsoftware.kryo.Serializer
        public short[] copy(Kryo kryo, short[] sArr) {
            int length = sArr.length;
            short[] sArr2 = new short[length];
            System.arraycopy(sArr, 0, sArr2, 0, length);
            return sArr2;
        }

        @Override // com.esotericsoftware.kryo.Serializer
        public short[] read(Kryo kryo, Input input, Class<? extends short[]> cls) {
            int readVarInt = input.readVarInt(true);
            if (readVarInt == 0) {
                return null;
            }
            return input.readShorts(readVarInt - 1);
        }

        @Override // com.esotericsoftware.kryo.Serializer
        public void write(Kryo kryo, Output output, short[] sArr) {
            if (sArr == null) {
                output.writeByte((byte) 0);
                return;
            }
            output.writeVarInt(sArr.length + 1, true);
            output.writeShorts(sArr, 0, sArr.length);
        }

        public ShortArraySerializer() {
            setAcceptsNull(true);
        }
    }

    /* loaded from: classes.dex */
    public static class StringArraySerializer extends Serializer<String[]> {
        @Override // com.esotericsoftware.kryo.Serializer
        public String[] copy(Kryo kryo, String[] strArr) {
            int length = strArr.length;
            String[] strArr2 = new String[length];
            System.arraycopy(strArr, 0, strArr2, 0, length);
            return strArr2;
        }

        @Override // com.esotericsoftware.kryo.Serializer
        public String[] read(Kryo kryo, Input input, Class<? extends String[]> cls) {
            int readVarInt = input.readVarInt(true);
            if (readVarInt == 0) {
                return null;
            }
            int i = readVarInt - 1;
            String[] strArr = new String[i];
            int i2 = 0;
            if (kryo.getReferences() && kryo.getReferenceResolver().useReferences(String.class)) {
                Serializer serializer = kryo.getSerializer(String.class);
                while (i2 < i) {
                    strArr[i2] = (String) kryo.readObjectOrNull(input, String.class, serializer);
                    i2++;
                }
            } else {
                while (i2 < i) {
                    strArr[i2] = input.readString();
                    i2++;
                }
            }
            return strArr;
        }

        @Override // com.esotericsoftware.kryo.Serializer
        public void write(Kryo kryo, Output output, String[] strArr) {
            int i = 0;
            if (strArr == null) {
                output.writeByte((byte) 0);
                return;
            }
            output.writeVarInt(strArr.length + 1, true);
            if (kryo.getReferences() && kryo.getReferenceResolver().useReferences(String.class)) {
                Serializer serializer = kryo.getSerializer(String.class);
                int length = strArr.length;
                while (i < length) {
                    kryo.writeObjectOrNull(output, strArr[i], serializer);
                    i++;
                }
                return;
            }
            int length2 = strArr.length;
            while (i < length2) {
                output.writeString(strArr[i]);
                i++;
            }
        }

        public StringArraySerializer() {
            setAcceptsNull(true);
        }
    }
}
