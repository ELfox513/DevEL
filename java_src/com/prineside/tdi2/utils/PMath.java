package com.prineside.tdi2.utils;

import com.badlogic.gdx.math.MathUtils;
import com.badlogic.gdx.math.RandomXS128;
import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.IntArray;
import com.badlogic.gdx.utils.IntIntMap;
import com.badlogic.gdx.utils.ObjectSet;
import com.badlogic.gdx.utils.StringBuilder;
import com.esotericsoftware.kryo.p035io.Input;
import com.prineside.luaj.LuaDouble;
import com.prineside.luaj.LuaTable;
import com.prineside.luaj.LuaValue;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.GameListener;
import com.prineside.tdi2.GameSystemProvider;
import com.prineside.tdi2.ListenerGroup;
import com.prineside.tdi2.Logger;
import com.prineside.tdi2.serializers.ArraySerializer;
import com.prineside.tdi2.serializers.FloatArraySerializer;
import com.prineside.tdi2.serializers.GameStateSerializer;
import com.prineside.tdi2.serializers.IntArraySerializer;
import com.prineside.tdi2.serializers.IntIntMapSerializer;
import com.prineside.tdi2.serializers.IntMapSerializer;
import com.prineside.tdi2.serializers.IntSetSerializer;
import com.prineside.tdi2.serializers.ObjectMapSerializer;
import com.prineside.tdi2.serializers.ObjectSetSerializer;
import com.prineside.tdi2.serializers.RandomXS128Serializer;
import com.prineside.tdi2.serializers.RectangleSerializer;
import com.prineside.tdi2.serializers.Vector2Serializer;
import com.prineside.tdi2.systems.ScriptSystem;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.util.Calendar;
import java.util.Date;
import net.bytebuddy.description.type.TypeDescription;
/* loaded from: classes2.dex */
public class PMath {

    /* renamed from: a */
    public static final Vector2 f15109a = new Vector2();

    /* renamed from: b */
    public static final ObjectSet<Class> f15110b;

    /* renamed from: c */
    public static final String[] f15111c;

    /* renamed from: d */
    public static final ClassComparator[] f15112d;

    /* renamed from: e */
    public static LuaDouble f15113e;

    /* renamed from: f */
    public static LuaDouble f15114f;

    /* loaded from: classes2.dex */
    public static abstract class ClassComparator<T> {
        public abstract void compare(T t, T t2, StringBuilder stringBuilder, Array<String> array, int i, IntIntMap intIntMap, boolean z);

        public abstract Class<T> forClass();
    }

    /* loaded from: classes2.dex */
    public static class Sin {

        /* renamed from: a */
        public static final float[] f15115a = new float[8192];

        static {
            float f;
            for (int i = 0; i < 8192; i++) {
                f15115a[i] = (float) StrictMath.sin(((i + 0.5f) / 8192.0f) * 6.2831855f);
            }
            for (int i2 = 0; i2 < 360; i2 += 90) {
                f15115a[((int) (22.755556f * i2)) & 8191] = (float) StrictMath.sin(f * 0.017453292f);
            }
        }
    }

    /* loaded from: classes2.dex */
    public static class WeakReferenceComparator extends ClassComparator<WeakReference> {
        public WeakReferenceComparator() {
        }

        @Override // com.prineside.tdi2.utils.PMath.ClassComparator
        public /* bridge */ /* synthetic */ void compare(WeakReference weakReference, WeakReference weakReference2, StringBuilder stringBuilder, Array array, int i, IntIntMap intIntMap, boolean z) {
            compare2(weakReference, weakReference2, stringBuilder, (Array<String>) array, i, intIntMap, z);
        }

        @Override // com.prineside.tdi2.utils.PMath.ClassComparator
        public Class<WeakReference> forClass() {
            return WeakReference.class;
        }

        /* renamed from: compare  reason: avoid collision after fix types in other method */
        public void compare2(WeakReference weakReference, WeakReference weakReference2, StringBuilder stringBuilder, Array<String> array, int i, IntIntMap intIntMap, boolean z) {
            array.add(".get()");
            PMath.compareObjects(weakReference.get(), weakReference2.get(), stringBuilder, array, i - 1, intIntMap, z);
            array.pop();
        }
    }

    /* renamed from: a */
    public static boolean m19831a(float f, float f2, float f3, float f4, float f5) {
        if (f5 == 0.0f) {
            return false;
        }
        float f6 = f3 - f;
        float f7 = f4 - f2;
        return (f6 * f6) + (f7 * f7) <= f5;
    }

    public static int addWithoutOverflow(int i, int i2) {
        if (willAdditionOverflow(i, i2)) {
            return Integer.MAX_VALUE;
        }
        return i + i2;
    }

    public static boolean circleIntersectsCircle(float f, float f2, float f3, float f4, float f5, float f6) {
        float f7 = f - f4;
        float f8 = f2 - f5;
        float f9 = f3 + f6;
        return f9 * f9 > (f7 * f7) + (f8 * f8);
    }

    public static boolean circleIntersectsRect(float f, float f2, float f3, float f4, float f5, float f6, float f7) {
        if (StrictMath.pow(f - MathUtils.clamp(f, f4, f6 + f4), 2.0d) + StrictMath.pow(f2 - MathUtils.clamp(f2, f5, f7 + f5), 2.0d) < f3 * f3) {
            return true;
        }
        return false;
    }

    public static boolean compareFingerprints(String str, Enum[] enumArr, byte[] bArr, Input input) {
        boolean z = false;
        for (Enum r3 : enumArr) {
            if (input.readByte() != bArr[r3.ordinal()]) {
                Logger.log(str, "FP: " + r3.name());
                z = true;
            }
        }
        return z;
    }

    public static void compareObjects(Object obj, Object obj2, StringBuilder stringBuilder, Array<String> array, int i, IntIntMap intIntMap, boolean z) {
        compareObjects(obj, obj2, stringBuilder, array, i, intIntMap, z, null);
    }

    public static float cos(float f) {
        return Sin.f15115a[((int) ((f + 1.5707964f) * 1303.7972f)) & 8191];
    }

    public static float cosDeg(float f) {
        return Sin.f15115a[((int) ((f + 90.0f) * 22.755556f)) & 8191];
    }

    public static long generateNewId() {
        return (Game.getTimestampSeconds() << 32) + FastRandom.random.nextInt();
    }

    public static float getAngleBetweenPoints(float f, float f2, float f3, float f4) {
        return (MathUtils.atan2(f4 - f2, f3 - f) * 57.295776f) - 90.0f;
    }

    public static int getByChance(RandomXS128 randomXS128, int[] iArr, int i) {
        if (i % 2 == 0) {
            int i2 = 0;
            for (int i3 = 0; i3 < i; i3 += 2) {
                i2 += iArr[i3];
            }
            int nextInt = randomXS128.nextInt(i2);
            int i4 = 0;
            for (int i5 = 0; i5 < i; i5 += 2) {
                int i6 = iArr[i5];
                if (nextInt < i4 + i6) {
                    return iArr[i5 + 1];
                }
                i4 += i6;
            }
            throw new RuntimeException("Something gone wrong");
        }
        throw new IllegalArgumentException("chances must contain pairs (chance, index)");
    }

    public static float getDistanceBetweenPoints(float f, float f2, float f3, float f4) {
        float f5 = f - f3;
        float f6 = f2 - f4;
        return (float) StrictMath.sqrt((f5 * f5) + (f6 * f6));
    }

    public static void getPointByAngleFromPoint(float f, float f2, float f3, float f4, Vector2 vector2) {
        float f5 = f3 * 0.017453292f;
        vector2.f5527x = f + ((-sin(f5)) * f4);
        vector2.f5528y = f2 + (f4 * cos(f5));
    }

    public static float getSquareDistanceBetweenPoints(float f, float f2, float f3, float f4) {
        float f5 = f - f3;
        float f6 = f2 - f4;
        return (f5 * f5) + (f6 * f6);
    }

    public static int hash(float f) {
        return hash(Float.floatToIntBits(f));
    }

    public static int hash(int i) {
        return i;
    }

    public static int hash(boolean z) {
        return z ? 1 : 0;
    }

    public static int intHash(byte[] bArr, int i, int i2) {
        int i3 = i2 + i;
        int i4 = 1;
        while (i < i3) {
            i4 = (i4 * 23) + bArr[i];
            i++;
        }
        return i4;
    }

    public static float loopedDistance(float f, float f2, float f3) {
        float f4 = (((f % f3) + f3) % f3) - (((f2 % f3) + f3) % f3);
        float f5 = f4 - f3;
        float f6 = f3 + f4;
        float abs = StrictMath.abs(f4);
        float abs2 = StrictMath.abs(f5);
        float abs3 = StrictMath.abs(f6);
        if (abs <= abs2 && abs <= abs3) {
            return f4;
        }
        if (abs2 <= abs && abs2 <= abs3) {
            return f5;
        }
        return f6;
    }

    public static void main(String[] strArr) {
    }

    public static int multiplyWithoutOverflow(int i, int i2) {
        if (i >= 0 && i2 >= 0) {
            long j = i * i2;
            if (j > 2147483647L || j < 0) {
                return Integer.MAX_VALUE;
            }
            return i * i2;
        }
        throw new IllegalArgumentException("left and right must be positive, " + i + " and " + i2 + " given");
    }

    public static float normalizeAngle(float f) {
        return ((f % 360.0f) + 360.0f) % 360.0f;
    }

    public static float randomTriangular(RandomXS128 randomXS128) {
        return randomXS128.nextFloat() - randomXS128.nextFloat();
    }

    public static float sin(float f) {
        return Sin.f15115a[((int) (f * 1303.7972f)) & 8191];
    }

    public static float sinDeg(float f) {
        return Sin.f15115a[((int) (f * 22.755556f)) & 8191];
    }

    public static boolean willAdditionOverflow(int i, int i2) {
        if (i2 >= 0 || i2 == Integer.MIN_VALUE) {
            return ((i ^ (i2 + i)) & ((i ^ i2) ^ (-1))) < 0;
        }
        return willSubtractionOverflow(i, -i2);
    }

    public static boolean willSubtractionOverflow(int i, int i2) {
        if (i2 < 0) {
            return willAdditionOverflow(i, -i2);
        }
        return ((i ^ (i - i2)) & (i ^ i2)) < 0;
    }

    static {
        ObjectSet<Class> objectSet = new ObjectSet<>();
        f15110b = objectSet;
        objectSet.add(Character.class);
        objectSet.add(Byte.class);
        objectSet.add(Short.class);
        objectSet.add(Long.class);
        objectSet.add(Float.class);
        objectSet.add(Integer.class);
        objectSet.add(Double.class);
        objectSet.add(Boolean.class);
        objectSet.add(String.class);
        f15111c = new String[8192];
        f15112d = new ClassComparator[]{ArraySerializer.CLASS_COMPARATOR, RandomXS128Serializer.CLASS_COMPARATOR, Vector2Serializer.CLASS_COMPARATOR, IntIntMapSerializer.CLASS_COMPARATOR, IntSetSerializer.CLASS_COMPARATOR, IntArraySerializer.CLASS_COMPARATOR, FloatArraySerializer.CLASS_COMPARATOR, RectangleSerializer.CLASS_COMPARATOR, ObjectSetSerializer.CLASS_COMPARATOR, ObjectMapSerializer.CLASS_COMPARATOR, IntMapSerializer.CLASS_COMPARATOR, ListenerGroup.CLASS_COMPARATOR, CheatSafeInt.CLASS_COMPARATOR, CheatSafeLong.CLASS_COMPARATOR, GameSystemProvider.CLASS_COMPARATOR, ScriptSystem.CLASS_COMPARATOR, LuaTable.CLASS_COMPARATOR, new WeakReferenceComparator()};
    }

    public static LuaDouble cachedLuaDouble1(double d) {
        if (f15113e == null) {
            f15113e = (LuaDouble) LuaValue.valueOf(0.1d);
        }
        f15113e.setDirectly(d);
        return f15113e;
    }

    public static LuaDouble cachedLuaDouble2(double d) {
        if (f15114f == null) {
            f15114f = (LuaDouble) LuaValue.valueOf(0.1d);
        }
        f15114f.setDirectly(d);
        return f15114f;
    }

    public static void compareObjects(Object obj, Object obj2, StringBuilder stringBuilder, Array<String> array, int i, IntIntMap intIntMap, boolean z, Enum[] enumArr) {
        Enum[] enumArr2;
        ClassComparator classComparator;
        Field field;
        int i2;
        Array<Field> array2;
        String str;
        Enum[] enumArr3;
        String str2;
        String str3;
        String str4;
        String name;
        if (i < 0) {
            if (z) {
                stringBuilder.append("> too deep\n");
            }
        } else if (obj != obj2) {
            if (obj != null && obj2 != null) {
                if (intIntMap.get(obj.hashCode(), -1) == obj2.hashCode() || intIntMap.get(obj2.hashCode(), -1) == obj.hashCode()) {
                    if (z) {
                        stringBuilder.append("> skipped (already compared) ");
                        for (int i3 = 0; i3 < array.size; i3++) {
                            stringBuilder.append(array.items[i3]);
                        }
                        stringBuilder.append("\n");
                        return;
                    }
                    return;
                }
                intIntMap.put(obj.hashCode(), obj2.hashCode());
            }
            if (z) {
                stringBuilder.append("> comparing ");
                for (int i4 = 0; i4 < array.size; i4++) {
                    stringBuilder.append(array.items[i4]);
                }
                stringBuilder.append("\n");
            }
            if ((obj == null && obj2 != null) || (obj2 == null && obj != null)) {
                for (int i5 = 0; i5 < array.size; i5++) {
                    stringBuilder.append(array.items[i5]);
                }
                stringBuilder.append(": one object is null\n");
            } else if (obj != null) {
                if (obj.getClass() != obj2.getClass()) {
                    for (int i6 = 0; i6 < array.size; i6++) {
                        stringBuilder.append(array.items[i6]);
                    }
                    stringBuilder.append(": classes differ (").append(obj.getClass().getName()).append(", ").append(obj2.getClass().getName()).append(")\n");
                    return;
                }
                ClassComparator[] classComparatorArr = f15112d;
                int length = classComparatorArr.length;
                int i7 = 0;
                while (true) {
                    enumArr2 = null;
                    if (i7 >= length) {
                        classComparator = null;
                        break;
                    }
                    classComparator = classComparatorArr[i7];
                    if (classComparator.forClass().isAssignableFrom(obj.getClass())) {
                        break;
                    }
                    i7++;
                }
                if (classComparator != null) {
                    classComparator.compare(obj, obj2, stringBuilder, array, i, intIntMap, z);
                    return;
                }
                boolean isArray = obj.getClass().isArray();
                String str5 = TypeDescription.Generic.OfWildcardType.SYMBOL;
                String str6 = " ";
                String str7 = " != ";
                if (isArray) {
                    if (obj.getClass().getComponentType() == Float.TYPE) {
                        float[] fArr = (float[]) obj;
                        float[] fArr2 = (float[]) obj2;
                        if (fArr.length != fArr2.length) {
                            for (int i8 = 0; i8 < array.size; i8++) {
                                stringBuilder.append(array.items[i8]);
                            }
                            stringBuilder.append(": sizes differ (").append(fArr.length).append(", ").append(fArr2.length).append(")\n");
                            return;
                        }
                        for (int i9 = 0; i9 < fArr.length; i9++) {
                            if (fArr[i9] != fArr2[i9]) {
                                for (int i10 = 0; i10 < array.size; i10++) {
                                    stringBuilder.append(array.items[i10]);
                                }
                                stringBuilder.append("[").append(String.valueOf(enumArr == null ? Integer.valueOf(i9) : enumArr[i9].name())).append("] ").append(fArr[i9]).append(" != ").append(fArr2[i9]).append("\n");
                            }
                        }
                    } else if (obj.getClass().getComponentType() == Integer.TYPE) {
                        int[] iArr = (int[]) obj;
                        int[] iArr2 = (int[]) obj2;
                        if (iArr.length != iArr2.length) {
                            for (int i11 = 0; i11 < array.size; i11++) {
                                stringBuilder.append(array.items[i11]);
                            }
                            stringBuilder.append(": sizes differ (").append(iArr.length).append(", ").append(iArr2.length).append(")\n");
                            return;
                        }
                        for (int i12 = 0; i12 < iArr.length; i12++) {
                            if (iArr[i12] != iArr2[i12]) {
                                for (int i13 = 0; i13 < array.size; i13++) {
                                    stringBuilder.append(array.items[i13]);
                                }
                                stringBuilder.append("[").append(String.valueOf(enumArr == null ? Integer.valueOf(i12) : enumArr[i12].name())).append("] ").append(iArr[i12]).append(" != ").append(iArr2[i12]).append("\n");
                            }
                        }
                    } else if (obj.getClass().getComponentType() == Double.TYPE) {
                        double[] dArr = (double[]) obj;
                        double[] dArr2 = (double[]) obj2;
                        if (dArr.length != dArr2.length) {
                            for (int i14 = 0; i14 < array.size; i14++) {
                                stringBuilder.append(array.items[i14]);
                            }
                            stringBuilder.append(": sizes differ (").append(dArr.length).append(", ").append(dArr2.length).append(")\n");
                            return;
                        }
                        for (int i15 = 0; i15 < dArr.length; i15++) {
                            if (dArr[i15] != dArr2[i15]) {
                                for (int i16 = 0; i16 < array.size; i16++) {
                                    stringBuilder.append(array.items[i16]);
                                }
                                stringBuilder.append("[").append(String.valueOf(enumArr == null ? Integer.valueOf(i15) : enumArr[i15].name())).append("] ").append(dArr[i15]).append(" != ").append(dArr2[i15]).append("\n");
                            }
                        }
                    } else if (obj.getClass().getComponentType() == Boolean.TYPE) {
                        boolean[] zArr = (boolean[]) obj;
                        boolean[] zArr2 = (boolean[]) obj2;
                        if (zArr.length != zArr2.length) {
                            for (int i17 = 0; i17 < array.size; i17++) {
                                stringBuilder.append(array.items[i17]);
                            }
                            stringBuilder.append(": sizes differ (").append(zArr.length).append(", ").append(zArr2.length).append(")\n");
                            return;
                        }
                        for (int i18 = 0; i18 < zArr.length; i18++) {
                            if (zArr[i18] != zArr2[i18]) {
                                for (int i19 = 0; i19 < array.size; i19++) {
                                    stringBuilder.append(array.items[i19]);
                                }
                                stringBuilder.append("[").append(String.valueOf(enumArr == null ? Integer.valueOf(i18) : enumArr[i18].name())).append("] ").append(zArr[i18]).append(" != ").append(zArr2[i18]).append("\n");
                            }
                        }
                    } else if (obj.getClass().getComponentType() == Byte.TYPE) {
                        byte[] bArr = (byte[]) obj;
                        byte[] bArr2 = (byte[]) obj2;
                        if (bArr.length != bArr2.length) {
                            for (int i20 = 0; i20 < array.size; i20++) {
                                stringBuilder.append(array.items[i20]);
                            }
                            stringBuilder.append(": sizes differ (").append(bArr.length).append(", ").append(bArr2.length).append(")\n");
                            return;
                        }
                        for (int i21 = 0; i21 < bArr.length; i21++) {
                            if (bArr[i21] != bArr2[i21]) {
                                for (int i22 = 0; i22 < array.size; i22++) {
                                    stringBuilder.append(array.items[i22]);
                                }
                                stringBuilder.append("[").append(String.valueOf(enumArr == null ? Integer.valueOf(i21) : enumArr[i21].name())).append("] ").append((int) bArr[i21]).append(" != ").append((int) bArr2[i21]).append("\n");
                            }
                        }
                    } else if (obj.getClass().getComponentType() == Short.TYPE) {
                        short[] sArr = (short[]) obj;
                        short[] sArr2 = (short[]) obj2;
                        if (sArr.length != sArr2.length) {
                            for (int i23 = 0; i23 < array.size; i23++) {
                                stringBuilder.append(array.items[i23]);
                            }
                            stringBuilder.append(": sizes differ (").append(sArr.length).append(", ").append(sArr2.length).append(")\n");
                            return;
                        }
                        for (int i24 = 0; i24 < sArr.length; i24++) {
                            if (sArr[i24] != sArr2[i24]) {
                                for (int i25 = 0; i25 < array.size; i25++) {
                                    stringBuilder.append(array.items[i25]);
                                }
                                stringBuilder.append("[").append(String.valueOf(enumArr == null ? Integer.valueOf(i24) : enumArr[i24].name())).append("] ").append((int) sArr[i24]).append(" != ").append((int) sArr2[i24]).append("\n");
                            }
                        }
                    } else if (obj.getClass().getComponentType() == Long.TYPE) {
                        long[] jArr = (long[]) obj;
                        long[] jArr2 = (long[]) obj2;
                        if (jArr.length != jArr2.length) {
                            for (int i26 = 0; i26 < array.size; i26++) {
                                stringBuilder.append(array.items[i26]);
                            }
                            stringBuilder.append(": sizes differ (").append(jArr.length).append(", ").append(jArr2.length).append(")\n");
                            return;
                        }
                        for (int i27 = 0; i27 < jArr.length; i27++) {
                            if (jArr[i27] != jArr2[i27]) {
                                for (int i28 = 0; i28 < array.size; i28++) {
                                    stringBuilder.append(array.items[i28]);
                                }
                                stringBuilder.append("[").append(String.valueOf(enumArr == null ? Integer.valueOf(i27) : enumArr[i27].name())).append("] ").append(jArr[i27]).append(" != ").append(jArr2[i27]).append("\n");
                            }
                        }
                    } else if (obj.getClass().getComponentType() == Character.TYPE) {
                        char[] cArr = (char[]) obj;
                        char[] cArr2 = (char[]) obj2;
                        if (cArr.length != cArr2.length) {
                            for (int i29 = 0; i29 < array.size; i29++) {
                                stringBuilder.append(array.items[i29]);
                            }
                            stringBuilder.append(": sizes differ (").append(cArr.length).append(", ").append(cArr2.length).append(")\n");
                            return;
                        }
                        for (int i30 = 0; i30 < cArr.length; i30++) {
                            if (cArr[i30] != cArr2[i30]) {
                                for (int i31 = 0; i31 < array.size; i31++) {
                                    stringBuilder.append(array.items[i31]);
                                }
                                stringBuilder.append("[").append(String.valueOf(enumArr == null ? Integer.valueOf(i30) : enumArr[i30].name())).append("] ").append(cArr[i30]).append(" != ").append(cArr2[i30]).append("\n");
                            }
                        }
                    } else {
                        Object[] objArr = (Object[]) obj;
                        Object[] objArr2 = (Object[]) obj2;
                        if (objArr.length != objArr2.length) {
                            for (int i32 = 0; i32 < array.size; i32++) {
                                stringBuilder.append(array.items[i32]);
                            }
                            stringBuilder.append(": sizes differ (").append(objArr.length).append(", ").append(objArr2.length).append(")\n");
                            return;
                        }
                        int i33 = 0;
                        while (i33 < objArr.length) {
                            Object obj3 = objArr[i33];
                            if (obj3 != null) {
                                name = obj3.getClass().getName();
                            } else {
                                Object obj4 = objArr2[i33];
                                name = obj4 != null ? obj4.getClass().getName() : TypeDescription.Generic.OfWildcardType.SYMBOL;
                            }
                            array.add("[");
                            array.add(enumArr == null ? toString(i33) : enumArr[i33].name());
                            array.add(" ");
                            array.add(name);
                            array.add("]");
                            Object[] objArr3 = objArr2;
                            compareObjects(objArr[i33], objArr2[i33], stringBuilder, array, i - 1, intIntMap, z);
                            for (int i34 = 0; i34 < 5; i34++) {
                                array.pop();
                            }
                            i33++;
                            objArr2 = objArr3;
                        }
                    }
                } else if (!obj.getClass().isPrimitive() && !obj.getClass().isEnum() && !f15110b.contains(obj.getClass())) {
                    Array<Field> allFields = GameStateSerializer.getAllFields(obj.getClass(), null);
                    int i35 = 0;
                    while (i35 < allFields.size) {
                        Field field2 = allFields.items[i35];
                        try {
                            Class<?> type = field2.getType();
                            if (type != Float.class && type != Float.TYPE) {
                                if (type != Integer.class && type != Integer.TYPE) {
                                    if (type != Boolean.class && type != Boolean.TYPE) {
                                        try {
                                            if (type != Double.class && type != Double.TYPE) {
                                                if (field2.get(obj) != null) {
                                                    if (GameSystemProvider.DEBUG) {
                                                        str4 = field2.get(obj).toString();
                                                        if (field2.get(obj2) != null) {
                                                            str4 = str4 + str6 + field2.get(obj2).toString();
                                                        }
                                                    } else {
                                                        str4 = field2.get(obj).getClass().getName();
                                                    }
                                                } else if (field2.get(obj2) == null) {
                                                    str4 = str5;
                                                } else if (GameSystemProvider.DEBUG) {
                                                    str4 = (field2.get(obj) != null ? field2.get(obj).toString() : str5) + str6 + field2.get(obj2).toString();
                                                } else {
                                                    str4 = field2.get(obj2).getClass().getName();
                                                }
                                                EnumKeyArray enumKeyArrayFieldAnnotationCached = GameStateSerializer.getEnumKeyArrayFieldAnnotationCached(field2);
                                                Enum[] enumArr4 = enumKeyArrayFieldAnnotationCached != null ? (Enum[]) enumKeyArrayFieldAnnotationCached.enumerator().getEnumConstants() : enumArr2;
                                                array.add(".(");
                                                array.add(str4);
                                                array.add(")");
                                                array.add(field2.getName());
                                                i2 = i35;
                                                array2 = allFields;
                                                str = str7;
                                                str2 = str5;
                                                str3 = str6;
                                                enumArr3 = enumArr2;
                                                try {
                                                    compareObjects(field2.get(obj), field2.get(obj2), stringBuilder, array, i - 1, intIntMap, z, enumArr4);
                                                    for (int i36 = 0; i36 < 4; i36++) {
                                                        array.pop();
                                                    }
                                                    i35 = i2 + 1;
                                                    str7 = str;
                                                    str6 = str3;
                                                    str5 = str2;
                                                    allFields = array2;
                                                    enumArr2 = enumArr3;
                                                } catch (Exception e) {
                                                    e = e;
                                                    field = field2;
                                                    throw new RuntimeException("failed for " + array.toString("") + "." + field.getName() + "\n" + stringBuilder.toString(), e);
                                                }
                                            }
                                            if (field.getDouble(obj) != field.getDouble(obj2)) {
                                                for (int i37 = 0; i37 < array.size; i37++) {
                                                    stringBuilder.append(array.items[i37]);
                                                }
                                                stringBuilder.append(".(double)").append(field.getName()).append(str3).append(field.getDouble(obj)).append(str).append(field.getDouble(obj2)).append("\n");
                                            }
                                            i35 = i2 + 1;
                                            str7 = str;
                                            str6 = str3;
                                            str5 = str2;
                                            allFields = array2;
                                            enumArr2 = enumArr3;
                                        } catch (Exception e2) {
                                            e = e2;
                                            throw new RuntimeException("failed for " + array.toString("") + "." + field.getName() + "\n" + stringBuilder.toString(), e);
                                        }
                                        i2 = i35;
                                        array2 = allFields;
                                        str = str7;
                                        enumArr3 = enumArr2;
                                        str2 = str5;
                                        str3 = str6;
                                        if (z) {
                                            stringBuilder.append("> comparing ");
                                            for (int i38 = 0; i38 < array.size; i38++) {
                                                stringBuilder.append(array.items[i38]);
                                            }
                                            stringBuilder.append(".(double)").append(field2.getName());
                                            stringBuilder.append("\n");
                                        }
                                        field = field2;
                                    }
                                    i2 = i35;
                                    array2 = allFields;
                                    str = str7;
                                    enumArr3 = enumArr2;
                                    str2 = str5;
                                    str3 = str6;
                                    if (z) {
                                        stringBuilder.append("> comparing ");
                                        for (int i39 = 0; i39 < array.size; i39++) {
                                            stringBuilder.append(array.items[i39]);
                                        }
                                        stringBuilder.append(".(boolean)").append(field2.getName());
                                        stringBuilder.append("\n");
                                    }
                                    if (field2.getBoolean(obj) != field2.getBoolean(obj2)) {
                                        for (int i40 = 0; i40 < array.size; i40++) {
                                            stringBuilder.append(array.items[i40]);
                                        }
                                        stringBuilder.append(".(boolean)").append(field2.getName()).append(str3).append(field2.getBoolean(obj)).append(str).append(field2.getBoolean(obj2)).append("\n");
                                    }
                                    i35 = i2 + 1;
                                    str7 = str;
                                    str6 = str3;
                                    str5 = str2;
                                    allFields = array2;
                                    enumArr2 = enumArr3;
                                }
                                i2 = i35;
                                array2 = allFields;
                                str = str7;
                                enumArr3 = enumArr2;
                                str2 = str5;
                                str3 = str6;
                                if (z) {
                                    stringBuilder.append("> comparing ");
                                    for (int i41 = 0; i41 < array.size; i41++) {
                                        stringBuilder.append(array.items[i41]);
                                    }
                                    stringBuilder.append(".(int)").append(field2.getName());
                                    stringBuilder.append("\n");
                                }
                                if (field2.getInt(obj) != field2.getInt(obj2)) {
                                    for (int i42 = 0; i42 < array.size; i42++) {
                                        stringBuilder.append(array.items[i42]);
                                    }
                                    stringBuilder.append(".(int)").append(field2.getName()).append(str3).append(field2.getInt(obj)).append(str).append(field2.getInt(obj2)).append("\n");
                                }
                                i35 = i2 + 1;
                                str7 = str;
                                str6 = str3;
                                str5 = str2;
                                allFields = array2;
                                enumArr2 = enumArr3;
                            }
                            i2 = i35;
                            array2 = allFields;
                            str = str7;
                            enumArr3 = enumArr2;
                            str2 = str5;
                            str3 = str6;
                            if (z) {
                                stringBuilder.append("> comparing ");
                                for (int i43 = 0; i43 < array.size; i43++) {
                                    stringBuilder.append(array.items[i43]);
                                }
                                stringBuilder.append(".(float)").append(field2.getName());
                                stringBuilder.append("\n");
                            }
                            if (field2.getFloat(obj) != field2.getFloat(obj2)) {
                                for (int i44 = 0; i44 < array.size; i44++) {
                                    stringBuilder.append(array.items[i44]);
                                }
                                stringBuilder.append(".(float)").append(field2.getName()).append(str3).append(field2.getFloat(obj)).append(str).append(field2.getFloat(obj2)).append("\n");
                            }
                            i35 = i2 + 1;
                            str7 = str;
                            str6 = str3;
                            str5 = str2;
                            allFields = array2;
                            enumArr2 = enumArr3;
                        } catch (Exception e3) {
                            e = e3;
                            field = field2;
                        }
                    }
                } else if (!obj.equals(obj2)) {
                    for (int i45 = 0; i45 < array.size; i45++) {
                        stringBuilder.append(array.items[i45]);
                    }
                    stringBuilder.append(": ").append(obj).append(" != ").append(obj2).append("\n");
                }
            }
        }
    }

    public static float getAngleBetweenPoints(Vector2 vector2, Vector2 vector22) {
        return (MathUtils.atan2(vector22.f5528y - vector2.f5528y, vector22.f5527x - vector2.f5527x) * 57.295776f) - 90.0f;
    }

    public static void getBezierCurvePos(Vector2 vector2, Vector2 vector22, Vector2 vector23, Vector2 vector24, float f) {
        Vector2 vector25 = f15109a;
        vector25.f5527x = vector23.f5527x;
        vector25.f5528y = vector23.f5528y;
        vector25.sub(vector22);
        vector25.f5527x *= f;
        vector25.f5528y *= f;
        vector25.add(vector22);
        vector2.f5527x = vector24.f5527x;
        vector2.f5528y = vector24.f5528y;
        vector2.sub(vector23);
        vector2.f5527x *= f;
        vector2.f5528y *= f;
        vector2.add(vector23);
        vector2.sub(vector25);
        vector2.f5527x *= f;
        vector2.f5528y *= f;
        vector2.add(vector25);
    }

    public static float getDistanceBetweenPoints(Vector2 vector2, Vector2 vector22) {
        float f = vector2.f5527x;
        float f2 = vector22.f5527x;
        float f3 = vector2.f5528y;
        float f4 = vector22.f5528y;
        return (float) StrictMath.sqrt(((f - f2) * (f - f2)) + ((f3 - f4) * (f3 - f4)));
    }

    public static boolean getLineCircleIntersection(Vector2 vector2, Vector2 vector22, Vector2 vector23, float f, Vector2 vector24) {
        float f2;
        float f3;
        if (m19831a(vector2.f5527x, vector2.f5528y, vector23.f5527x, vector23.f5528y, f)) {
            vector24.f5527x = vector2.f5527x;
            vector24.f5528y = vector2.f5528y;
            return true;
        }
        float f4 = vector2.f5527x;
        float f5 = vector2.f5528y;
        float f6 = vector22.f5527x;
        float f7 = vector22.f5528y;
        float f8 = f6 - f4;
        float f9 = f7 - f5;
        float f10 = vector23.f5527x - f4;
        float f11 = vector23.f5528y - f5;
        float f12 = (f8 * f8) + (f9 * f9);
        if (f12 > 0.0f) {
            float f13 = ((f10 * f8) + (f11 * f9)) / f12;
            f3 = f8 * f13;
            f2 = f13 * f9;
        } else {
            f2 = f9;
            f3 = f8;
        }
        float f14 = f4 + f3;
        vector24.f5527x = f14;
        float f15 = f5 + f2;
        vector24.f5528y = f15;
        float f16 = (f3 * f3) + (f2 * f2);
        if (m19831a(f14, f15, vector23.f5527x, vector23.f5528y, f) && f16 <= f12 && (f3 * f8) + (f2 * f9) >= 0.0f) {
            return true;
        }
        return false;
    }

    public static int hash(long j) {
        return hash(((int) (j >> 32)) + ((int) j));
    }

    public static void interpolatePoint(Vector2 vector2, Vector2 vector22, float f) {
        float f2 = vector2.f5527x;
        vector2.f5527x = f2 + ((vector22.f5527x - f2) * f);
        float f3 = vector2.f5528y;
        vector2.f5528y = f3 + ((vector22.f5528y - f3) * f);
    }

    public static int parseUnsignedInt(String str, int i) {
        if (str != null) {
            int length = str.length();
            if (length > 0) {
                if (str.charAt(0) != '-') {
                    if (length > 5 && (i != 10 || length > 9)) {
                        long parseLong = Long.parseLong(str, i);
                        if (((-4294967296L) & parseLong) == 0) {
                            return (int) parseLong;
                        }
                        throw new NumberFormatException(String.format("String value %s exceeds range of unsigned int.", str));
                    }
                    return Integer.parseInt(str, i);
                }
                throw new NumberFormatException(String.format("Illegal leading minus sign on unsigned string %s.", str));
            }
            throw new IllegalArgumentException("Invalid input: " + str);
        }
        throw new NumberFormatException("null");
    }

    public static float randomTriangular(float f, RandomXS128 randomXS128) {
        return (randomXS128.nextFloat() - randomXS128.nextFloat()) * f;
    }

    public static String toString(int i) {
        if (i >= 0) {
            String[] strArr = f15111c;
            if (i < strArr.length) {
                String str = strArr[i];
                if (str == null) {
                    String num = Integer.toString(i);
                    strArr[i] = num;
                    return num;
                }
                return str;
            }
        }
        return Integer.toString(i);
    }

    public static Date addDays(Date date, int i) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        calendar.add(5, i);
        return calendar.getTime();
    }

    public static float getDistanceBetweenAngles(float f, float f2) {
        float normalizeAngle = normalizeAngle(f2) - normalizeAngle(f);
        if (normalizeAngle < -180.0f) {
            return normalizeAngle + 360.0f;
        }
        if (normalizeAngle > 180.0f) {
            return normalizeAngle - 360.0f;
        }
        return normalizeAngle;
    }

    public static Vector2 getPointByAngleFromPoint(float f, float f2, float f3, float f4) {
        float f5 = f3 * 0.017453292f;
        Vector2 vector2 = f15109a;
        vector2.f5527x = f + ((-sin(f5)) * f4);
        vector2.f5528y = f2 + (f4 * cos(f5));
        return vector2;
    }

    public static int hash(String str) {
        int length = str.length();
        int i = 1;
        for (int i2 = 0; i2 < length; i2++) {
            i = (i * 31) + hash((int) str.charAt(i2));
        }
        return i;
    }

    public static int hashGameListeners(ListenerGroup listenerGroup) {
        listenerGroup.begin();
        int i = 1;
        for (int i2 = 0; i2 < listenerGroup.size(); i2++) {
            GameListener gameListener = listenerGroup.get(i2);
            if (gameListener.affectsGameState()) {
                i = (i * 31) + hash(gameListener.getConstantId());
            }
        }
        listenerGroup.end();
        return hash(i);
    }

    public static float randomTriangular(float f, float f2, RandomXS128 randomXS128) {
        return randomTriangular(f, f2, (f + f2) * 0.5f, randomXS128);
    }

    public static void shiftPointByAngle(Vector2 vector2, float f, float f2) {
        float f3 = f * 0.017453292f;
        vector2.f5527x += (-sin(f3)) * f2;
        vector2.f5528y += f2 * cos(f3);
    }

    public static float randomTriangular(float f, float f2, float f3, RandomXS128 randomXS128) {
        float nextFloat = randomXS128.nextFloat();
        float f4 = f2 - f;
        float f5 = f3 - f;
        if (nextFloat <= f5 / f4) {
            return f + ((float) StrictMath.sqrt(nextFloat * f4 * f5));
        }
        return f2 - ((float) StrictMath.sqrt(((1.0f - nextFloat) * f4) * (f2 - f3)));
    }

    public static int hash(double d) {
        return hash(Double.doubleToLongBits(d));
    }

    public static int hash(Vector2 vector2) {
        return (hash(vector2.f5527x) * 31) + hash(vector2.f5528y);
    }

    public static int hash(Enum r0) {
        if (r0 == null) {
            return -1;
        }
        return r0.ordinal();
    }

    public static int getByChance(RandomXS128 randomXS128, IntArray intArray) {
        return getByChance(randomXS128, intArray.items, intArray.size);
    }

    public static int hash(Array[] arrayArr) {
        int i = 1;
        for (Array array : arrayArr) {
            i = (i * 31) + array.size;
        }
        return i;
    }

    public static int hash(boolean[] zArr) {
        int i = 1;
        for (boolean z : zArr) {
            i = (i * 31) + (z ? 1 : 0);
        }
        return i;
    }

    public static int hash(byte[] bArr) {
        int i = 1;
        for (byte b : bArr) {
            i = (i * 31) + b;
        }
        return i;
    }

    public static int hash(int[] iArr) {
        int i = 1;
        for (int i2 : iArr) {
            i = (i * 31) + i2;
        }
        return i;
    }

    public static int hash(IntArray intArray) {
        int i = 1;
        for (int i2 = 0; i2 < intArray.size; i2++) {
            i = (i * 31) + intArray.items[i2];
        }
        return i;
    }

    public static int hash(float[] fArr) {
        int i = 1;
        for (float f : fArr) {
            i = (i * 11) + hash(f);
        }
        return i;
    }
}
