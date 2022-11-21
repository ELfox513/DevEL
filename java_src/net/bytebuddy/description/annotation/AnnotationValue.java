package net.bytebuddy.description.annotation;

import com.esotericsoftware.kryo.util.DefaultClassResolver;
import edu.umd.cs.findbugs.annotations.SuppressFBWarnings;
import java.lang.annotation.Annotation;
import java.lang.annotation.AnnotationTypeMismatchException;
import java.lang.annotation.IncompleteAnnotationException;
import java.lang.reflect.Array;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import net.bytebuddy.ClassFileVersion;
import net.bytebuddy.build.CachedReturnPlugin;
import net.bytebuddy.description.annotation.AnnotationDescription;
import net.bytebuddy.description.enumeration.EnumerationDescription;
import net.bytebuddy.description.method.MethodDescription;
import net.bytebuddy.description.type.TypeDefinition;
import net.bytebuddy.description.type.TypeDescription;
import net.bytebuddy.pool.TypePool;
import net.bytebuddy.utility.nullability.AlwaysNull;
import net.bytebuddy.utility.nullability.MaybeNull;
/* loaded from: classes2.dex */
public interface AnnotationValue<T, S> {
    @AlwaysNull
    public static final AnnotationValue<?, ?> UNDEFINED = null;

    /* loaded from: classes2.dex */
    public static abstract class AbstractBase<U, V> implements AnnotationValue<U, V> {
        @Override // net.bytebuddy.description.annotation.AnnotationValue
        public AnnotationValue<U, V> filter(MethodDescription.InDefinedShape inDefinedShape) {
            return filter(inDefinedShape, inDefinedShape.getReturnType());
        }

        @Override // net.bytebuddy.description.annotation.AnnotationValue
        public <W> W resolve(Class<? extends W> cls) {
            return cls.cast(resolve());
        }
    }

    /* loaded from: classes2.dex */
    public static class ForAnnotationDescription<U extends Annotation> extends AbstractBase<AnnotationDescription, U> {
        private final AnnotationDescription annotationDescription;

        /* loaded from: classes2.dex */
        public static class Loaded<V extends Annotation> extends Loaded.AbstractBase<V> {
            private final V annotation;

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof Loaded)) {
                    return false;
                }
                Loaded loaded = (Loaded) obj;
                return loaded.getState().isResolved() && this.annotation.equals(loaded.resolve());
            }

            @Override // net.bytebuddy.description.annotation.AnnotationValue.Loaded
            public State getState() {
                return State.RESOLVED;
            }

            public int hashCode() {
                return this.annotation.hashCode();
            }

            @Override // net.bytebuddy.description.annotation.AnnotationValue.Loaded
            public boolean represents(Object obj) {
                return this.annotation.equals(obj);
            }

            public String toString() {
                return this.annotation.toString();
            }

            @Override // net.bytebuddy.description.annotation.AnnotationValue.Loaded
            public V resolve() {
                return this.annotation;
            }

            public Loaded(V v) {
                this.annotation = v;
            }
        }

        /* renamed from: of */
        public static <V extends Annotation> AnnotationValue<AnnotationDescription, V> m15235of(TypeDescription typeDescription, Map<String, ? extends AnnotationValue<?, ?>> map) {
            return new ForAnnotationDescription(new AnnotationDescription.Latent(typeDescription, map));
        }

        public boolean equals(@MaybeNull Object obj) {
            return this == obj || ((obj instanceof AnnotationValue) && this.annotationDescription.equals(((AnnotationValue) obj).resolve()));
        }

        @Override // net.bytebuddy.description.annotation.AnnotationValue
        public Sort getSort() {
            return Sort.ANNOTATION;
        }

        @Override // net.bytebuddy.description.annotation.AnnotationValue
        public State getState() {
            return State.RESOLVED;
        }

        public int hashCode() {
            return this.annotationDescription.hashCode();
        }

        public String toString() {
            return this.annotationDescription.toString();
        }

        @Override // net.bytebuddy.description.annotation.AnnotationValue
        public Loaded<U> load(@MaybeNull ClassLoader classLoader) {
            try {
                AnnotationDescription annotationDescription = this.annotationDescription;
                return new Loaded(annotationDescription.prepare(Class.forName(annotationDescription.getAnnotationType().getName(), false, classLoader)).load());
            } catch (ClassNotFoundException e) {
                return new ForMissingType.Loaded(this.annotationDescription.getAnnotationType().getName(), e);
            }
        }

        @Override // net.bytebuddy.description.annotation.AnnotationValue
        public AnnotationDescription resolve() {
            return this.annotationDescription;
        }

        public ForAnnotationDescription(AnnotationDescription annotationDescription) {
            this.annotationDescription = annotationDescription;
        }

        @Override // net.bytebuddy.description.annotation.AnnotationValue
        public AnnotationValue<AnnotationDescription, U> filter(MethodDescription.InDefinedShape inDefinedShape, TypeDefinition typeDefinition) {
            String obj;
            if (typeDefinition.asErasure().equals(this.annotationDescription.getAnnotationType())) {
                return this;
            }
            if (inDefinedShape.getReturnType().isArray()) {
                obj = RenderingDispatcher.CURRENT.toArrayErrorString(Sort.ANNOTATION);
            } else {
                obj = this.annotationDescription.toString();
            }
            return new ForMismatchedType(inDefinedShape, obj);
        }
    }

    /* loaded from: classes2.dex */
    public static class ForConstant<U> extends AbstractBase<U, U> {
        private transient /* synthetic */ int hashCode;
        private final PropertyDelegate propertyDelegate;
        private final U value;

        /* loaded from: classes2.dex */
        public interface PropertyDelegate {

            /* loaded from: classes2.dex */
            public enum ForArrayType implements PropertyDelegate {
                BOOLEAN { // from class: net.bytebuddy.description.annotation.AnnotationValue.ForConstant.PropertyDelegate.ForArrayType.1
                    @Override // net.bytebuddy.description.annotation.AnnotationValue.ForConstant.PropertyDelegate.ForArrayType
                    public Object doCopy(Object obj) {
                        return ((boolean[]) obj).clone();
                    }

                    @Override // net.bytebuddy.description.annotation.AnnotationValue.ForConstant.PropertyDelegate
                    public boolean equals(Object obj, Object obj2) {
                        return (obj2 instanceof boolean[]) && Arrays.equals((boolean[]) obj, (boolean[]) obj2);
                    }

                    @Override // net.bytebuddy.description.annotation.AnnotationValue.ForConstant.PropertyDelegate
                    public int hashCode(Object obj) {
                        return Arrays.hashCode((boolean[]) obj);
                    }

                    @Override // net.bytebuddy.description.annotation.AnnotationValue.ForConstant.PropertyDelegate.ForArrayType
                    public String toString(Object obj, int i) {
                        return ForNonArrayType.BOOLEAN.toString(Boolean.valueOf(Array.getBoolean(obj, i)));
                    }
                },
                BYTE { // from class: net.bytebuddy.description.annotation.AnnotationValue.ForConstant.PropertyDelegate.ForArrayType.2
                    @Override // net.bytebuddy.description.annotation.AnnotationValue.ForConstant.PropertyDelegate.ForArrayType
                    public Object doCopy(Object obj) {
                        return ((byte[]) obj).clone();
                    }

                    @Override // net.bytebuddy.description.annotation.AnnotationValue.ForConstant.PropertyDelegate
                    public boolean equals(Object obj, Object obj2) {
                        return (obj2 instanceof byte[]) && Arrays.equals((byte[]) obj, (byte[]) obj2);
                    }

                    @Override // net.bytebuddy.description.annotation.AnnotationValue.ForConstant.PropertyDelegate
                    public int hashCode(Object obj) {
                        return Arrays.hashCode((byte[]) obj);
                    }

                    @Override // net.bytebuddy.description.annotation.AnnotationValue.ForConstant.PropertyDelegate.ForArrayType
                    public String toString(Object obj, int i) {
                        return ForNonArrayType.BYTE.toString(Byte.valueOf(Array.getByte(obj, i)));
                    }
                },
                SHORT { // from class: net.bytebuddy.description.annotation.AnnotationValue.ForConstant.PropertyDelegate.ForArrayType.3
                    @Override // net.bytebuddy.description.annotation.AnnotationValue.ForConstant.PropertyDelegate.ForArrayType
                    public Object doCopy(Object obj) {
                        return ((short[]) obj).clone();
                    }

                    @Override // net.bytebuddy.description.annotation.AnnotationValue.ForConstant.PropertyDelegate
                    public boolean equals(Object obj, Object obj2) {
                        return (obj2 instanceof short[]) && Arrays.equals((short[]) obj, (short[]) obj2);
                    }

                    @Override // net.bytebuddy.description.annotation.AnnotationValue.ForConstant.PropertyDelegate
                    public int hashCode(Object obj) {
                        return Arrays.hashCode((short[]) obj);
                    }

                    @Override // net.bytebuddy.description.annotation.AnnotationValue.ForConstant.PropertyDelegate.ForArrayType
                    public String toString(Object obj, int i) {
                        return ForNonArrayType.SHORT.toString(Short.valueOf(Array.getShort(obj, i)));
                    }
                },
                CHARACTER { // from class: net.bytebuddy.description.annotation.AnnotationValue.ForConstant.PropertyDelegate.ForArrayType.4
                    @Override // net.bytebuddy.description.annotation.AnnotationValue.ForConstant.PropertyDelegate.ForArrayType
                    public Object doCopy(Object obj) {
                        return ((char[]) obj).clone();
                    }

                    @Override // net.bytebuddy.description.annotation.AnnotationValue.ForConstant.PropertyDelegate
                    public boolean equals(Object obj, Object obj2) {
                        return (obj2 instanceof char[]) && Arrays.equals((char[]) obj, (char[]) obj2);
                    }

                    @Override // net.bytebuddy.description.annotation.AnnotationValue.ForConstant.PropertyDelegate
                    public int hashCode(Object obj) {
                        return Arrays.hashCode((char[]) obj);
                    }

                    @Override // net.bytebuddy.description.annotation.AnnotationValue.ForConstant.PropertyDelegate.ForArrayType
                    public String toString(Object obj, int i) {
                        return ForNonArrayType.CHARACTER.toString(Character.valueOf(Array.getChar(obj, i)));
                    }
                },
                INTEGER { // from class: net.bytebuddy.description.annotation.AnnotationValue.ForConstant.PropertyDelegate.ForArrayType.5
                    @Override // net.bytebuddy.description.annotation.AnnotationValue.ForConstant.PropertyDelegate.ForArrayType
                    public Object doCopy(Object obj) {
                        return ((int[]) obj).clone();
                    }

                    @Override // net.bytebuddy.description.annotation.AnnotationValue.ForConstant.PropertyDelegate
                    public boolean equals(Object obj, Object obj2) {
                        return (obj2 instanceof int[]) && Arrays.equals((int[]) obj, (int[]) obj2);
                    }

                    @Override // net.bytebuddy.description.annotation.AnnotationValue.ForConstant.PropertyDelegate
                    public int hashCode(Object obj) {
                        return Arrays.hashCode((int[]) obj);
                    }

                    @Override // net.bytebuddy.description.annotation.AnnotationValue.ForConstant.PropertyDelegate.ForArrayType
                    public String toString(Object obj, int i) {
                        return ForNonArrayType.INTEGER.toString(Integer.valueOf(Array.getInt(obj, i)));
                    }
                },
                LONG { // from class: net.bytebuddy.description.annotation.AnnotationValue.ForConstant.PropertyDelegate.ForArrayType.6
                    @Override // net.bytebuddy.description.annotation.AnnotationValue.ForConstant.PropertyDelegate.ForArrayType
                    public Object doCopy(Object obj) {
                        return ((long[]) obj).clone();
                    }

                    @Override // net.bytebuddy.description.annotation.AnnotationValue.ForConstant.PropertyDelegate
                    public boolean equals(Object obj, Object obj2) {
                        return (obj2 instanceof long[]) && Arrays.equals((long[]) obj, (long[]) obj2);
                    }

                    @Override // net.bytebuddy.description.annotation.AnnotationValue.ForConstant.PropertyDelegate
                    public int hashCode(Object obj) {
                        return Arrays.hashCode((long[]) obj);
                    }

                    @Override // net.bytebuddy.description.annotation.AnnotationValue.ForConstant.PropertyDelegate.ForArrayType
                    public String toString(Object obj, int i) {
                        return ForNonArrayType.LONG.toString(Long.valueOf(Array.getLong(obj, i)));
                    }
                },
                FLOAT { // from class: net.bytebuddy.description.annotation.AnnotationValue.ForConstant.PropertyDelegate.ForArrayType.7
                    @Override // net.bytebuddy.description.annotation.AnnotationValue.ForConstant.PropertyDelegate.ForArrayType
                    public Object doCopy(Object obj) {
                        return ((float[]) obj).clone();
                    }

                    @Override // net.bytebuddy.description.annotation.AnnotationValue.ForConstant.PropertyDelegate
                    public boolean equals(Object obj, Object obj2) {
                        return (obj2 instanceof float[]) && Arrays.equals((float[]) obj, (float[]) obj2);
                    }

                    @Override // net.bytebuddy.description.annotation.AnnotationValue.ForConstant.PropertyDelegate
                    public int hashCode(Object obj) {
                        return Arrays.hashCode((float[]) obj);
                    }

                    @Override // net.bytebuddy.description.annotation.AnnotationValue.ForConstant.PropertyDelegate.ForArrayType
                    public String toString(Object obj, int i) {
                        return ForNonArrayType.FLOAT.toString(Float.valueOf(Array.getFloat(obj, i)));
                    }
                },
                DOUBLE { // from class: net.bytebuddy.description.annotation.AnnotationValue.ForConstant.PropertyDelegate.ForArrayType.8
                    @Override // net.bytebuddy.description.annotation.AnnotationValue.ForConstant.PropertyDelegate.ForArrayType
                    public Object doCopy(Object obj) {
                        return ((double[]) obj).clone();
                    }

                    @Override // net.bytebuddy.description.annotation.AnnotationValue.ForConstant.PropertyDelegate
                    public boolean equals(Object obj, Object obj2) {
                        return (obj2 instanceof double[]) && Arrays.equals((double[]) obj, (double[]) obj2);
                    }

                    @Override // net.bytebuddy.description.annotation.AnnotationValue.ForConstant.PropertyDelegate
                    public int hashCode(Object obj) {
                        return Arrays.hashCode((double[]) obj);
                    }

                    @Override // net.bytebuddy.description.annotation.AnnotationValue.ForConstant.PropertyDelegate.ForArrayType
                    public String toString(Object obj, int i) {
                        return ForNonArrayType.DOUBLE.toString(Double.valueOf(Array.getDouble(obj, i)));
                    }
                },
                STRING { // from class: net.bytebuddy.description.annotation.AnnotationValue.ForConstant.PropertyDelegate.ForArrayType.9
                    @Override // net.bytebuddy.description.annotation.AnnotationValue.ForConstant.PropertyDelegate.ForArrayType
                    public Object doCopy(Object obj) {
                        return ((String[]) obj).clone();
                    }

                    @Override // net.bytebuddy.description.annotation.AnnotationValue.ForConstant.PropertyDelegate
                    public boolean equals(Object obj, Object obj2) {
                        return (obj2 instanceof String[]) && Arrays.equals((String[]) obj, (String[]) obj2);
                    }

                    @Override // net.bytebuddy.description.annotation.AnnotationValue.ForConstant.PropertyDelegate
                    public int hashCode(Object obj) {
                        return Arrays.hashCode((String[]) obj);
                    }

                    @Override // net.bytebuddy.description.annotation.AnnotationValue.ForConstant.PropertyDelegate.ForArrayType
                    public String toString(Object obj, int i) {
                        return ForNonArrayType.STRING.toString(Array.get(obj, i));
                    }
                };

                @Override // net.bytebuddy.description.annotation.AnnotationValue.ForConstant.PropertyDelegate
                public <S> S copy(S s) {
                    return (S) doCopy(s);
                }

                public abstract Object doCopy(Object obj);

                public abstract String toString(Object obj, int i);

                @Override // net.bytebuddy.description.annotation.AnnotationValue.ForConstant.PropertyDelegate
                public String toString(Object obj) {
                    ArrayList arrayList = new ArrayList(Array.getLength(obj));
                    for (int i = 0; i < Array.getLength(obj); i++) {
                        arrayList.add(toString(obj, i));
                    }
                    return RenderingDispatcher.CURRENT.toSourceString(arrayList);
                }
            }

            /* loaded from: classes2.dex */
            public enum ForNonArrayType implements PropertyDelegate {
                BOOLEAN { // from class: net.bytebuddy.description.annotation.AnnotationValue.ForConstant.PropertyDelegate.ForNonArrayType.1
                    @Override // net.bytebuddy.description.annotation.AnnotationValue.ForConstant.PropertyDelegate
                    public String toString(Object obj) {
                        return RenderingDispatcher.CURRENT.toSourceString(((Boolean) obj).booleanValue());
                    }
                },
                BYTE { // from class: net.bytebuddy.description.annotation.AnnotationValue.ForConstant.PropertyDelegate.ForNonArrayType.2
                    @Override // net.bytebuddy.description.annotation.AnnotationValue.ForConstant.PropertyDelegate
                    public String toString(Object obj) {
                        return RenderingDispatcher.CURRENT.toSourceString(((Byte) obj).byteValue());
                    }
                },
                SHORT { // from class: net.bytebuddy.description.annotation.AnnotationValue.ForConstant.PropertyDelegate.ForNonArrayType.3
                    @Override // net.bytebuddy.description.annotation.AnnotationValue.ForConstant.PropertyDelegate
                    public String toString(Object obj) {
                        return RenderingDispatcher.CURRENT.toSourceString(((Short) obj).shortValue());
                    }
                },
                CHARACTER { // from class: net.bytebuddy.description.annotation.AnnotationValue.ForConstant.PropertyDelegate.ForNonArrayType.4
                    @Override // net.bytebuddy.description.annotation.AnnotationValue.ForConstant.PropertyDelegate
                    public String toString(Object obj) {
                        return RenderingDispatcher.CURRENT.toSourceString(((Character) obj).charValue());
                    }
                },
                INTEGER { // from class: net.bytebuddy.description.annotation.AnnotationValue.ForConstant.PropertyDelegate.ForNonArrayType.5
                    @Override // net.bytebuddy.description.annotation.AnnotationValue.ForConstant.PropertyDelegate
                    public String toString(Object obj) {
                        return RenderingDispatcher.CURRENT.toSourceString(((Integer) obj).intValue());
                    }
                },
                LONG { // from class: net.bytebuddy.description.annotation.AnnotationValue.ForConstant.PropertyDelegate.ForNonArrayType.6
                    @Override // net.bytebuddy.description.annotation.AnnotationValue.ForConstant.PropertyDelegate
                    public String toString(Object obj) {
                        return RenderingDispatcher.CURRENT.toSourceString(((Long) obj).longValue());
                    }
                },
                FLOAT { // from class: net.bytebuddy.description.annotation.AnnotationValue.ForConstant.PropertyDelegate.ForNonArrayType.7
                    @Override // net.bytebuddy.description.annotation.AnnotationValue.ForConstant.PropertyDelegate
                    public String toString(Object obj) {
                        return RenderingDispatcher.CURRENT.toSourceString(((Float) obj).floatValue());
                    }
                },
                DOUBLE { // from class: net.bytebuddy.description.annotation.AnnotationValue.ForConstant.PropertyDelegate.ForNonArrayType.8
                    @Override // net.bytebuddy.description.annotation.AnnotationValue.ForConstant.PropertyDelegate
                    public String toString(Object obj) {
                        return RenderingDispatcher.CURRENT.toSourceString(((Double) obj).doubleValue());
                    }
                },
                STRING { // from class: net.bytebuddy.description.annotation.AnnotationValue.ForConstant.PropertyDelegate.ForNonArrayType.9
                    @Override // net.bytebuddy.description.annotation.AnnotationValue.ForConstant.PropertyDelegate
                    public String toString(Object obj) {
                        return RenderingDispatcher.CURRENT.toSourceString((String) obj);
                    }
                };

                @Override // net.bytebuddy.description.annotation.AnnotationValue.ForConstant.PropertyDelegate
                public <S> S copy(S s) {
                    return s;
                }

                @Override // net.bytebuddy.description.annotation.AnnotationValue.ForConstant.PropertyDelegate
                public boolean equals(Object obj, Object obj2) {
                    return obj.equals(obj2);
                }

                @Override // net.bytebuddy.description.annotation.AnnotationValue.ForConstant.PropertyDelegate
                public int hashCode(Object obj) {
                    return obj.hashCode();
                }
            }

            <S> S copy(S s);

            boolean equals(Object obj, Object obj2);

            int hashCode(Object obj);

            String toString(Object obj);
        }

        /* renamed from: of */
        public static AnnotationValue<Boolean, Boolean> m15225of(boolean z) {
            return new ForConstant(Boolean.valueOf(z), PropertyDelegate.ForNonArrayType.BOOLEAN);
        }

        public boolean equals(@MaybeNull Object obj) {
            return this == obj || ((obj instanceof AnnotationValue) && this.propertyDelegate.equals(this.value, ((AnnotationValue) obj).resolve()));
        }

        @Override // net.bytebuddy.description.annotation.AnnotationValue
        public Sort getSort() {
            return Sort.m15210of(TypeDescription.ForLoadedType.m15196of(this.value.getClass()).asUnboxed());
        }

        @Override // net.bytebuddy.description.annotation.AnnotationValue
        public State getState() {
            return State.RESOLVED;
        }

        @CachedReturnPlugin.Enhance("hashCode")
        public int hashCode() {
            int hashCode = this.hashCode != 0 ? 0 : this.propertyDelegate.hashCode(this.value);
            if (hashCode == 0) {
                return this.hashCode;
            }
            this.hashCode = hashCode;
            return hashCode;
        }

        @Override // net.bytebuddy.description.annotation.AnnotationValue
        public Loaded<U> load(@MaybeNull ClassLoader classLoader) {
            return new Loaded(this.value, this.propertyDelegate);
        }

        @Override // net.bytebuddy.description.annotation.AnnotationValue
        public U resolve() {
            return this.value;
        }

        public String toString() {
            return this.propertyDelegate.toString(this.value);
        }

        /* loaded from: classes2.dex */
        public static class Loaded<V> extends Loaded.AbstractBase<V> {
            private transient /* synthetic */ int hashCode;
            private final PropertyDelegate propertyDelegate;
            private final V value;

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof Loaded)) {
                    return false;
                }
                Loaded loaded = (Loaded) obj;
                return loaded.getState().isResolved() && this.propertyDelegate.equals(this.value, loaded.resolve());
            }

            @Override // net.bytebuddy.description.annotation.AnnotationValue.Loaded
            public State getState() {
                return State.RESOLVED;
            }

            @CachedReturnPlugin.Enhance("hashCode")
            public int hashCode() {
                int hashCode = this.hashCode != 0 ? 0 : this.propertyDelegate.hashCode(this.value);
                if (hashCode == 0) {
                    return this.hashCode;
                }
                this.hashCode = hashCode;
                return hashCode;
            }

            @Override // net.bytebuddy.description.annotation.AnnotationValue.Loaded
            public boolean represents(Object obj) {
                return this.propertyDelegate.equals(this.value, obj);
            }

            @Override // net.bytebuddy.description.annotation.AnnotationValue.Loaded
            public V resolve() {
                return (V) this.propertyDelegate.copy(this.value);
            }

            public String toString() {
                return this.propertyDelegate.toString(this.value);
            }

            public Loaded(V v, PropertyDelegate propertyDelegate) {
                this.value = v;
                this.propertyDelegate = propertyDelegate;
            }
        }

        /* renamed from: of */
        public static AnnotationValue<Byte, Byte> m15234of(byte b) {
            return new ForConstant(Byte.valueOf(b), PropertyDelegate.ForNonArrayType.BYTE);
        }

        public ForConstant(U u, PropertyDelegate propertyDelegate) {
            this.value = u;
            this.propertyDelegate = propertyDelegate;
        }

        /* renamed from: of */
        public static AnnotationValue<Short, Short> m15226of(short s) {
            return new ForConstant(Short.valueOf(s), PropertyDelegate.ForNonArrayType.SHORT);
        }

        @Override // net.bytebuddy.description.annotation.AnnotationValue
        public AnnotationValue<U, U> filter(MethodDescription.InDefinedShape inDefinedShape, TypeDefinition typeDefinition) {
            if (typeDefinition.asErasure().asBoxed().represents(this.value.getClass())) {
                return this;
            }
            if (this.value.getClass().isArray()) {
                return new ForMismatchedType(inDefinedShape, RenderingDispatcher.CURRENT.toArrayErrorString(Sort.m15210of(TypeDescription.ForLoadedType.m15196of(this.value.getClass().getComponentType()))));
            }
            if (this.value instanceof Enum) {
                return new ForMismatchedType(inDefinedShape, this.value.getClass().getName() + TypePool.Default.LazyTypeDescription.GenericTypeToken.INNER_CLASS_PATH + ((Enum) this.value).name());
            }
            return new ForMismatchedType(inDefinedShape, RenderingDispatcher.CURRENT.toTypeErrorString(this.value.getClass()) + TypePool.Default.LazyTypeDescription.GenericTypeToken.COMPONENT_TYPE_PATH + this.value + ']');
        }

        /* renamed from: of */
        public static AnnotationValue<Character, Character> m15233of(char c) {
            return new ForConstant(Character.valueOf(c), PropertyDelegate.ForNonArrayType.CHARACTER);
        }

        /* renamed from: of */
        public static AnnotationValue<Integer, Integer> m15230of(int i) {
            return new ForConstant(Integer.valueOf(i), PropertyDelegate.ForNonArrayType.INTEGER);
        }

        /* renamed from: of */
        public static AnnotationValue<Long, Long> m15229of(long j) {
            return new ForConstant(Long.valueOf(j), PropertyDelegate.ForNonArrayType.LONG);
        }

        /* renamed from: of */
        public static AnnotationValue<Float, Float> m15231of(float f) {
            return new ForConstant(Float.valueOf(f), PropertyDelegate.ForNonArrayType.FLOAT);
        }

        /* renamed from: of */
        public static AnnotationValue<Double, Double> m15232of(double d) {
            return new ForConstant(Double.valueOf(d), PropertyDelegate.ForNonArrayType.DOUBLE);
        }

        /* renamed from: of */
        public static AnnotationValue<String, String> m15227of(String str) {
            return new ForConstant(str, PropertyDelegate.ForNonArrayType.STRING);
        }

        /* renamed from: of */
        public static AnnotationValue<boolean[], boolean[]> m15216of(boolean... zArr) {
            return new ForConstant(zArr, PropertyDelegate.ForArrayType.BOOLEAN);
        }

        /* renamed from: of */
        public static AnnotationValue<byte[], byte[]> m15224of(byte... bArr) {
            return new ForConstant(bArr, PropertyDelegate.ForArrayType.BYTE);
        }

        /* renamed from: of */
        public static AnnotationValue<short[], short[]> m15217of(short... sArr) {
            return new ForConstant(sArr, PropertyDelegate.ForArrayType.SHORT);
        }

        /* renamed from: of */
        public static AnnotationValue<char[], char[]> m15223of(char... cArr) {
            return new ForConstant(cArr, PropertyDelegate.ForArrayType.CHARACTER);
        }

        /* renamed from: of */
        public static AnnotationValue<int[], int[]> m15220of(int... iArr) {
            return new ForConstant(iArr, PropertyDelegate.ForArrayType.INTEGER);
        }

        /* renamed from: of */
        public static AnnotationValue<long[], long[]> m15219of(long... jArr) {
            return new ForConstant(jArr, PropertyDelegate.ForArrayType.LONG);
        }

        /* renamed from: of */
        public static AnnotationValue<float[], float[]> m15221of(float... fArr) {
            return new ForConstant(fArr, PropertyDelegate.ForArrayType.FLOAT);
        }

        /* renamed from: of */
        public static AnnotationValue<double[], double[]> m15222of(double... dArr) {
            return new ForConstant(dArr, PropertyDelegate.ForArrayType.DOUBLE);
        }

        /* renamed from: of */
        public static AnnotationValue<String[], String[]> m15218of(String... strArr) {
            return new ForConstant(strArr, PropertyDelegate.ForArrayType.STRING);
        }

        /* renamed from: of */
        public static AnnotationValue<?, ?> m15228of(Object obj) {
            if (obj instanceof Boolean) {
                return m15225of(((Boolean) obj).booleanValue());
            }
            if (obj instanceof Byte) {
                return m15234of(((Byte) obj).byteValue());
            }
            if (obj instanceof Short) {
                return m15226of(((Short) obj).shortValue());
            }
            if (obj instanceof Character) {
                return m15233of(((Character) obj).charValue());
            }
            if (obj instanceof Integer) {
                return m15230of(((Integer) obj).intValue());
            }
            if (obj instanceof Long) {
                return m15229of(((Long) obj).longValue());
            }
            if (obj instanceof Float) {
                return m15231of(((Float) obj).floatValue());
            }
            if (obj instanceof Double) {
                return m15232of(((Double) obj).doubleValue());
            }
            if (obj instanceof String) {
                return m15227of((String) obj);
            }
            if (obj instanceof boolean[]) {
                return m15216of((boolean[]) obj);
            }
            if (obj instanceof byte[]) {
                return m15224of((byte[]) obj);
            }
            if (obj instanceof short[]) {
                return m15217of((short[]) obj);
            }
            if (obj instanceof char[]) {
                return m15223of((char[]) obj);
            }
            if (obj instanceof int[]) {
                return m15220of((int[]) obj);
            }
            if (obj instanceof long[]) {
                return m15219of((long[]) obj);
            }
            if (obj instanceof float[]) {
                return m15221of((float[]) obj);
            }
            if (obj instanceof double[]) {
                return m15222of((double[]) obj);
            }
            if (obj instanceof String[]) {
                return m15218of((String[]) obj);
            }
            throw new IllegalArgumentException("Not a constant annotation value: " + obj);
        }
    }

    /* loaded from: classes2.dex */
    public static class ForDescriptionArray<U, V> extends AbstractBase<U, V> {
        private final TypeDescription componentType;
        private transient /* synthetic */ int hashCode;
        private final Class<?> unloadedComponentType;
        private final List<? extends AnnotationValue<?, ?>> values;

        /* loaded from: classes2.dex */
        public static class Loaded<W> extends Loaded.AbstractBase<W> {
            private final Class<W> componentType;
            private transient /* synthetic */ int hashCode;
            private final List<Loaded<?>> values;

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof Loaded)) {
                    return false;
                }
                Loaded loaded = (Loaded) obj;
                if (!loaded.getState().isResolved()) {
                    return false;
                }
                Object resolve = loaded.resolve();
                if (!(resolve instanceof Object[])) {
                    return false;
                }
                Object[] objArr = (Object[]) resolve;
                if (this.values.size() != objArr.length) {
                    return false;
                }
                Iterator<Loaded<?>> it = this.values.iterator();
                for (Object obj2 : objArr) {
                    Loaded<?> next = it.next();
                    if (!next.getState().isResolved() || !next.resolve().equals(obj2)) {
                        return false;
                    }
                }
                return true;
            }

            public String toString() {
                return RenderingDispatcher.CURRENT.toSourceString(this.values);
            }

            @Override // net.bytebuddy.description.annotation.AnnotationValue.Loaded
            public State getState() {
                for (Loaded<?> loaded : this.values) {
                    if (!loaded.getState().isResolved()) {
                        return State.UNRESOLVED;
                    }
                }
                return State.RESOLVED;
            }

            @CachedReturnPlugin.Enhance("hashCode")
            public int hashCode() {
                int i;
                if (this.hashCode != 0) {
                    i = 0;
                } else {
                    i = 1;
                    for (Loaded<?> loaded : this.values) {
                        i = (i * 31) + loaded.hashCode();
                    }
                }
                if (i == 0) {
                    return this.hashCode;
                }
                this.hashCode = i;
                return i;
            }

            @Override // net.bytebuddy.description.annotation.AnnotationValue.Loaded
            public boolean represents(Object obj) {
                if (!(obj instanceof Object[]) || obj.getClass().getComponentType() != this.componentType) {
                    return false;
                }
                Object[] objArr = (Object[]) obj;
                if (this.values.size() != objArr.length) {
                    return false;
                }
                Iterator<Loaded<?>> it = this.values.iterator();
                for (Object obj2 : objArr) {
                    if (!it.next().represents(obj2)) {
                        return false;
                    }
                }
                return true;
            }

            @Override // net.bytebuddy.description.annotation.AnnotationValue.Loaded
            public W resolve() {
                W w = (W) Array.newInstance((Class<?>) this.componentType, this.values.size());
                int i = 0;
                for (Loaded<?> loaded : this.values) {
                    Array.set(w, i, loaded.resolve());
                    i++;
                }
                return w;
            }

            public Loaded(Class<W> cls, List<Loaded<?>> list) {
                this.componentType = cls;
                this.values = list;
            }
        }

        /* renamed from: of */
        public static <W extends Enum<W>> AnnotationValue<EnumerationDescription[], W[]> m15214of(TypeDescription typeDescription, EnumerationDescription[] enumerationDescriptionArr) {
            ArrayList arrayList = new ArrayList(enumerationDescriptionArr.length);
            for (EnumerationDescription enumerationDescription : enumerationDescriptionArr) {
                if (enumerationDescription.getEnumerationType().equals(typeDescription)) {
                    arrayList.add(ForEnumerationDescription.m15212of(enumerationDescription));
                } else {
                    throw new IllegalArgumentException(enumerationDescription + " is not of " + typeDescription);
                }
            }
            return new ForDescriptionArray(EnumerationDescription.class, typeDescription, arrayList);
        }

        public boolean equals(@MaybeNull Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof AnnotationValue)) {
                return false;
            }
            Object resolve = ((AnnotationValue) obj).resolve();
            if (!resolve.getClass().isArray() || this.values.size() != Array.getLength(resolve)) {
                return false;
            }
            Iterator<? extends AnnotationValue<?, ?>> it = this.values.iterator();
            for (int i = 0; i < this.values.size(); i++) {
                if (!it.next().resolve().equals(Array.get(resolve, i))) {
                    return false;
                }
            }
            return true;
        }

        @Override // net.bytebuddy.description.annotation.AnnotationValue
        public Sort getSort() {
            return Sort.ARRAY;
        }

        @Override // net.bytebuddy.description.annotation.AnnotationValue
        public State getState() {
            return State.RESOLVED;
        }

        public String toString() {
            return RenderingDispatcher.CURRENT.toSourceString(this.values);
        }

        @CachedReturnPlugin.Enhance("hashCode")
        public int hashCode() {
            int i;
            if (this.hashCode != 0) {
                i = 0;
            } else {
                i = 1;
                for (AnnotationValue<?, ?> annotationValue : this.values) {
                    i = (i * 31) + annotationValue.hashCode();
                }
            }
            if (i == 0) {
                return this.hashCode;
            }
            this.hashCode = i;
            return i;
        }

        @Override // net.bytebuddy.description.annotation.AnnotationValue
        public Loaded<V> load(@MaybeNull ClassLoader classLoader) {
            ArrayList arrayList = new ArrayList(this.values.size());
            for (AnnotationValue<?, ?> annotationValue : this.values) {
                arrayList.add(annotationValue.load(classLoader));
            }
            try {
                return new Loaded(Class.forName(this.componentType.getName(), false, classLoader), arrayList);
            } catch (ClassNotFoundException e) {
                return new ForMissingType.Loaded(this.componentType.getName(), e);
            }
        }

        @Override // net.bytebuddy.description.annotation.AnnotationValue
        public U resolve() {
            U u = (U) Array.newInstance(this.unloadedComponentType, this.values.size());
            int i = 0;
            for (AnnotationValue<?, ?> annotationValue : this.values) {
                Array.set(u, i, annotationValue.resolve());
                i++;
            }
            return u;
        }

        public ForDescriptionArray(Class<?> cls, TypeDescription typeDescription, List<? extends AnnotationValue<?, ?>> list) {
            this.unloadedComponentType = cls;
            this.componentType = typeDescription;
            this.values = list;
        }

        @Override // net.bytebuddy.description.annotation.AnnotationValue
        @SuppressFBWarnings(justification = "Assuming component type for array type.", value = {"NP_NULL_ON_SOME_PATH_FROM_RETURN_VALUE"})
        public AnnotationValue<U, V> filter(MethodDescription.InDefinedShape inDefinedShape, TypeDefinition typeDefinition) {
            if (typeDefinition.isArray() && typeDefinition.getComponentType().asErasure().equals(this.componentType)) {
                for (AnnotationValue<?, ?> annotationValue : this.values) {
                    AnnotationValue<U, V> annotationValue2 = (AnnotationValue<U, V>) annotationValue.filter(inDefinedShape, typeDefinition.getComponentType());
                    if (annotationValue2.getState() != State.RESOLVED) {
                        return annotationValue2;
                    }
                }
                return this;
            }
            return new ForMismatchedType(inDefinedShape, RenderingDispatcher.CURRENT.toArrayErrorString(Sort.m15210of(this.componentType)));
        }

        /* renamed from: of */
        public static <W extends Annotation> AnnotationValue<AnnotationDescription[], W[]> m15215of(TypeDescription typeDescription, AnnotationDescription[] annotationDescriptionArr) {
            ArrayList arrayList = new ArrayList(annotationDescriptionArr.length);
            for (AnnotationDescription annotationDescription : annotationDescriptionArr) {
                if (annotationDescription.getAnnotationType().equals(typeDescription)) {
                    arrayList.add(new ForAnnotationDescription(annotationDescription));
                } else {
                    throw new IllegalArgumentException(annotationDescription + " is not of " + typeDescription);
                }
            }
            return new ForDescriptionArray(AnnotationDescription.class, typeDescription, arrayList);
        }

        /* renamed from: of */
        public static AnnotationValue<TypeDescription[], Class<?>[]> m15213of(TypeDescription[] typeDescriptionArr) {
            ArrayList arrayList = new ArrayList(typeDescriptionArr.length);
            for (TypeDescription typeDescription : typeDescriptionArr) {
                arrayList.add(ForTypeDescription.m15211of(typeDescription));
            }
            return new ForDescriptionArray(TypeDescription.class, TypeDescription.CLASS, arrayList);
        }
    }

    /* loaded from: classes2.dex */
    public static class ForEnumerationDescription<U extends Enum<U>> extends AbstractBase<EnumerationDescription, U> {
        private final EnumerationDescription enumerationDescription;

        /* loaded from: classes2.dex */
        public static class Loaded<V extends Enum<V>> extends Loaded.AbstractBase<V> {
            private final V enumeration;

            /* loaded from: classes2.dex */
            public static class WithIncompatibleRuntimeType extends Loaded.AbstractBase<Enum<?>> {
                private final Class<?> type;

                @Override // net.bytebuddy.description.annotation.AnnotationValue.Loaded
                public State getState() {
                    return State.UNRESOLVED;
                }

                @Override // net.bytebuddy.description.annotation.AnnotationValue.Loaded
                public boolean represents(Object obj) {
                    return false;
                }

                @Override // net.bytebuddy.description.annotation.AnnotationValue.Loaded
                public Enum<?> resolve() {
                    throw new IncompatibleClassChangeError("Not an enumeration type: " + this.type.getName());
                }

                public WithIncompatibleRuntimeType(Class<?> cls) {
                    this.type = cls;
                }
            }

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof Loaded)) {
                    return false;
                }
                Loaded loaded = (Loaded) obj;
                return loaded.getState().isResolved() && this.enumeration.equals(loaded.resolve());
            }

            @Override // net.bytebuddy.description.annotation.AnnotationValue.Loaded
            public State getState() {
                return State.RESOLVED;
            }

            public int hashCode() {
                return this.enumeration.hashCode();
            }

            @Override // net.bytebuddy.description.annotation.AnnotationValue.Loaded
            public boolean represents(Object obj) {
                return this.enumeration.equals(obj);
            }

            public String toString() {
                return this.enumeration.toString();
            }

            @Override // net.bytebuddy.description.annotation.AnnotationValue.Loaded
            public V resolve() {
                return this.enumeration;
            }

            public Loaded(V v) {
                this.enumeration = v;
            }
        }

        /* loaded from: classes2.dex */
        public static class WithUnknownConstant<U extends Enum<U>> extends AbstractBase<EnumerationDescription, U> {
            private final TypeDescription typeDescription;
            private final String value;

            /* loaded from: classes2.dex */
            public static class Loaded extends Loaded.AbstractBase.ForUnresolvedProperty<Enum<?>> {
                private final Class<? extends Enum<?>> enumType;
                private final String value;

                public String toString() {
                    return this.value + " /* Warning: constant not present! */";
                }

                @Override // net.bytebuddy.description.annotation.AnnotationValue.Loaded
                public Enum<?> resolve() {
                    throw new EnumConstantNotPresentException(this.enumType, this.value);
                }

                public Loaded(Class<? extends Enum<?>> cls, String str) {
                    this.enumType = cls;
                    this.value = str;
                }
            }

            @Override // net.bytebuddy.description.annotation.AnnotationValue
            public AnnotationValue<EnumerationDescription, U> filter(MethodDescription.InDefinedShape inDefinedShape, TypeDefinition typeDefinition) {
                return this;
            }

            @Override // net.bytebuddy.description.annotation.AnnotationValue
            public Sort getSort() {
                return Sort.NONE;
            }

            @Override // net.bytebuddy.description.annotation.AnnotationValue
            public State getState() {
                return State.UNRESOLVED;
            }

            public String toString() {
                return this.value + " /* Warning: constant not present! */";
            }

            @Override // net.bytebuddy.description.annotation.AnnotationValue
            public Loaded<U> load(@MaybeNull ClassLoader classLoader) {
                try {
                    return new Loaded(Class.forName(this.typeDescription.getName(), false, classLoader), this.value);
                } catch (ClassNotFoundException e) {
                    return new ForMissingType.Loaded(this.typeDescription.getName(), e);
                }
            }

            @Override // net.bytebuddy.description.annotation.AnnotationValue
            public EnumerationDescription resolve() {
                throw new IllegalStateException(this.typeDescription + " does not declare enumeration constant " + this.value);
            }

            public WithUnknownConstant(TypeDescription typeDescription, String str) {
                this.typeDescription = typeDescription;
                this.value = str;
            }
        }

        /* renamed from: of */
        public static <V extends Enum<V>> AnnotationValue<EnumerationDescription, V> m15212of(EnumerationDescription enumerationDescription) {
            return new ForEnumerationDescription(enumerationDescription);
        }

        public boolean equals(@MaybeNull Object obj) {
            return this == obj || ((obj instanceof AnnotationValue) && this.enumerationDescription.equals(((AnnotationValue) obj).resolve()));
        }

        @Override // net.bytebuddy.description.annotation.AnnotationValue
        public Sort getSort() {
            return Sort.ENUMERATION;
        }

        @Override // net.bytebuddy.description.annotation.AnnotationValue
        public State getState() {
            return State.RESOLVED;
        }

        public int hashCode() {
            return this.enumerationDescription.hashCode();
        }

        public String toString() {
            return this.enumerationDescription.toString();
        }

        @Override // net.bytebuddy.description.annotation.AnnotationValue
        public Loaded<U> load(@MaybeNull ClassLoader classLoader) {
            try {
                EnumerationDescription enumerationDescription = this.enumerationDescription;
                return new Loaded(enumerationDescription.load(Class.forName(enumerationDescription.getEnumerationType().getName(), false, classLoader)));
            } catch (ClassNotFoundException e) {
                return new ForMissingType.Loaded(this.enumerationDescription.getEnumerationType().getName(), e);
            }
        }

        @Override // net.bytebuddy.description.annotation.AnnotationValue
        public EnumerationDescription resolve() {
            return this.enumerationDescription;
        }

        public ForEnumerationDescription(EnumerationDescription enumerationDescription) {
            this.enumerationDescription = enumerationDescription;
        }

        @Override // net.bytebuddy.description.annotation.AnnotationValue
        public AnnotationValue<EnumerationDescription, U> filter(MethodDescription.InDefinedShape inDefinedShape, TypeDefinition typeDefinition) {
            String str;
            if (typeDefinition.asErasure().equals(this.enumerationDescription.getEnumerationType())) {
                return this;
            }
            if (inDefinedShape.getReturnType().isArray()) {
                str = RenderingDispatcher.CURRENT.toArrayErrorString(Sort.ENUMERATION);
            } else {
                str = this.enumerationDescription.getEnumerationType().getName() + TypePool.Default.LazyTypeDescription.GenericTypeToken.INNER_CLASS_PATH + this.enumerationDescription.getValue();
            }
            return new ForMismatchedType(inDefinedShape, str);
        }
    }

    /* loaded from: classes2.dex */
    public static class ForIncompatibleType<U, V> extends AbstractBase<U, V> {
        private final TypeDescription typeDescription;

        @Override // net.bytebuddy.description.annotation.AnnotationValue
        public AnnotationValue<U, V> filter(MethodDescription.InDefinedShape inDefinedShape, TypeDefinition typeDefinition) {
            return this;
        }

        @Override // net.bytebuddy.description.annotation.AnnotationValue
        public Sort getSort() {
            return Sort.NONE;
        }

        @Override // net.bytebuddy.description.annotation.AnnotationValue
        public State getState() {
            return State.UNRESOLVED;
        }

        @Override // net.bytebuddy.description.annotation.AnnotationValue
        public U resolve() {
            throw new IllegalStateException("Property is defined with an incompatible runtime type: " + this.typeDescription);
        }

        public String toString() {
            return "/* Warning type incompatibility! \"" + this.typeDescription.getName() + "\" */";
        }

        /* loaded from: classes2.dex */
        public static class Loaded<W> extends Loaded.AbstractBase.ForUnresolvedProperty<W> {
            private final Class<?> type;

            @Override // net.bytebuddy.description.annotation.AnnotationValue.Loaded
            public W resolve() {
                throw new IncompatibleClassChangeError(this.type.toString());
            }

            public String toString() {
                return "/* Warning type incompatibility! \"" + this.type.getName() + "\" */";
            }

            public Loaded(Class<?> cls) {
                this.type = cls;
            }
        }

        @Override // net.bytebuddy.description.annotation.AnnotationValue
        public Loaded<V> load(@MaybeNull ClassLoader classLoader) {
            try {
                return new Loaded(Class.forName(this.typeDescription.getName(), false, classLoader));
            } catch (ClassNotFoundException e) {
                return new ForMissingType.Loaded(this.typeDescription.getName(), e);
            }
        }

        public ForIncompatibleType(TypeDescription typeDescription) {
            this.typeDescription = typeDescription;
        }
    }

    /* loaded from: classes2.dex */
    public static class ForMismatchedType<U, V> extends AbstractBase<U, V> {
        private final MethodDescription.InDefinedShape property;
        private final String value;

        @Override // net.bytebuddy.description.annotation.AnnotationValue
        public AnnotationValue<U, V> filter(MethodDescription.InDefinedShape inDefinedShape, TypeDefinition typeDefinition) {
            return new ForMismatchedType(inDefinedShape, this.value);
        }

        @Override // net.bytebuddy.description.annotation.AnnotationValue
        public Sort getSort() {
            return Sort.NONE;
        }

        @Override // net.bytebuddy.description.annotation.AnnotationValue
        public State getState() {
            return State.UNRESOLVED;
        }

        @Override // net.bytebuddy.description.annotation.AnnotationValue
        public U resolve() {
            throw new IllegalStateException(this.value + " cannot be used as value for " + this.property);
        }

        public String toString() {
            return "/* Warning type mismatch! \"" + this.value + "\" */";
        }

        /* loaded from: classes2.dex */
        public static class Loaded<W> extends Loaded.AbstractBase.ForUnresolvedProperty<W> {
            private final Method property;
            private final String value;

            @Override // net.bytebuddy.description.annotation.AnnotationValue.Loaded
            public W resolve() {
                throw new AnnotationTypeMismatchException(this.property, this.value);
            }

            public String toString() {
                return "/* Warning type mismatch! \"" + this.value + "\" */";
            }

            public Loaded(Method method, String str) {
                this.property = method;
                this.value = str;
            }
        }

        @Override // net.bytebuddy.description.annotation.AnnotationValue
        public Loaded<V> load(@MaybeNull ClassLoader classLoader) {
            try {
                Class<?> cls = Class.forName(this.property.getDeclaringType().getName(), false, classLoader);
                try {
                    return new Loaded(cls.getMethod(this.property.getName(), new Class[0]), this.value);
                } catch (NoSuchMethodException unused) {
                    return new ForIncompatibleType.Loaded(cls);
                }
            } catch (ClassNotFoundException e) {
                return new ForMissingType.Loaded(this.property.getDeclaringType().getName(), e);
            }
        }

        public ForMismatchedType(MethodDescription.InDefinedShape inDefinedShape, String str) {
            this.property = inDefinedShape;
            this.value = str;
        }
    }

    /* loaded from: classes2.dex */
    public static class ForMissingType<U, V> extends AbstractBase<U, V> {
        private final String typeName;

        @Override // net.bytebuddy.description.annotation.AnnotationValue
        public AnnotationValue<U, V> filter(MethodDescription.InDefinedShape inDefinedShape, TypeDefinition typeDefinition) {
            return this;
        }

        @Override // net.bytebuddy.description.annotation.AnnotationValue
        public Sort getSort() {
            return Sort.NONE;
        }

        @Override // net.bytebuddy.description.annotation.AnnotationValue
        public State getState() {
            return State.UNRESOLVED;
        }

        @Override // net.bytebuddy.description.annotation.AnnotationValue
        public Loaded<V> load(@MaybeNull ClassLoader classLoader) {
            return new Loaded(this.typeName, new ClassNotFoundException(this.typeName));
        }

        @Override // net.bytebuddy.description.annotation.AnnotationValue
        public U resolve() {
            throw new IllegalStateException("Type not found: " + this.typeName);
        }

        public String toString() {
            return this.typeName + ".class /* Warning: type not present! */";
        }

        /* loaded from: classes2.dex */
        public static class Loaded<U> extends Loaded.AbstractBase.ForUnresolvedProperty<U> {
            private final ClassNotFoundException exception;
            private final String typeName;

            @Override // net.bytebuddy.description.annotation.AnnotationValue.Loaded
            public U resolve() {
                throw new TypeNotPresentException(this.typeName, this.exception);
            }

            public String toString() {
                return this.typeName + ".class /* Warning: type not present! */";
            }

            public Loaded(String str, ClassNotFoundException classNotFoundException) {
                this.typeName = str;
                this.exception = classNotFoundException;
            }
        }

        public ForMissingType(String str) {
            this.typeName = str;
        }
    }

    /* loaded from: classes2.dex */
    public static class ForMissingValue<U, V> extends AbstractBase<U, V> {
        private final String property;
        private final TypeDescription typeDescription;

        @Override // net.bytebuddy.description.annotation.AnnotationValue
        public AnnotationValue<U, V> filter(MethodDescription.InDefinedShape inDefinedShape, TypeDefinition typeDefinition) {
            return this;
        }

        @Override // net.bytebuddy.description.annotation.AnnotationValue
        public Sort getSort() {
            return Sort.NONE;
        }

        @Override // net.bytebuddy.description.annotation.AnnotationValue
        public State getState() {
            return State.UNDEFINED;
        }

        @Override // net.bytebuddy.description.annotation.AnnotationValue
        public U resolve() {
            throw new IllegalStateException(this.typeDescription + " does not define " + this.property);
        }

        /* loaded from: classes2.dex */
        public static class Loaded<W> extends Loaded.AbstractBase<W> {
            private final String property;
            private final Class<? extends Annotation> type;

            @Override // net.bytebuddy.description.annotation.AnnotationValue.Loaded
            public State getState() {
                return State.UNDEFINED;
            }

            @Override // net.bytebuddy.description.annotation.AnnotationValue.Loaded
            public boolean represents(Object obj) {
                return false;
            }

            @Override // net.bytebuddy.description.annotation.AnnotationValue.Loaded
            public W resolve() {
                throw new IncompleteAnnotationException(this.type, this.property);
            }

            public Loaded(Class<? extends Annotation> cls, String str) {
                this.type = cls;
                this.property = str;
            }
        }

        @Override // net.bytebuddy.description.annotation.AnnotationValue
        public Loaded<V> load(@MaybeNull ClassLoader classLoader) {
            try {
                Class<?> cls = Class.forName(this.typeDescription.getName(), false, classLoader);
                if (cls.isAnnotation()) {
                    return new Loaded(cls, this.property);
                }
                return new ForIncompatibleType.Loaded(cls);
            } catch (ClassNotFoundException e) {
                return new ForMissingType.Loaded(this.typeDescription.getName(), e);
            }
        }

        public ForMissingValue(TypeDescription typeDescription, String str) {
            this.typeDescription = typeDescription;
            this.property = str;
        }
    }

    /* loaded from: classes2.dex */
    public static class ForTypeDescription<U extends Class<U>> extends AbstractBase<TypeDescription, U> {
        private static final boolean NO_INITIALIZATION = false;
        private static final Map<TypeDescription, Class<?>> PRIMITIVE_TYPES = new HashMap();
        private final TypeDescription typeDescription;

        /* loaded from: classes2.dex */
        public static class Loaded<U extends Class<U>> extends Loaded.AbstractBase<U> {
            private final U type;

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof Loaded)) {
                    return false;
                }
                Loaded loaded = (Loaded) obj;
                return loaded.getState().isResolved() && this.type.equals(loaded.resolve());
            }

            @Override // net.bytebuddy.description.annotation.AnnotationValue.Loaded
            public State getState() {
                return State.RESOLVED;
            }

            public int hashCode() {
                return this.type.hashCode();
            }

            @Override // net.bytebuddy.description.annotation.AnnotationValue.Loaded
            public boolean represents(Object obj) {
                return this.type.equals(obj);
            }

            public String toString() {
                return RenderingDispatcher.CURRENT.toSourceString(TypeDescription.ForLoadedType.m15196of(this.type));
            }

            @Override // net.bytebuddy.description.annotation.AnnotationValue.Loaded
            public U resolve() {
                return this.type;
            }

            public Loaded(U u) {
                this.type = u;
            }
        }

        /* renamed from: of */
        public static <V extends Class<V>> AnnotationValue<TypeDescription, V> m15211of(TypeDescription typeDescription) {
            return new ForTypeDescription(typeDescription);
        }

        public boolean equals(@MaybeNull Object obj) {
            return this == obj || ((obj instanceof AnnotationValue) && this.typeDescription.equals(((AnnotationValue) obj).resolve()));
        }

        @Override // net.bytebuddy.description.annotation.AnnotationValue
        public Sort getSort() {
            return Sort.TYPE;
        }

        @Override // net.bytebuddy.description.annotation.AnnotationValue
        public State getState() {
            return State.RESOLVED;
        }

        public int hashCode() {
            return this.typeDescription.hashCode();
        }

        public String toString() {
            return RenderingDispatcher.CURRENT.toSourceString(this.typeDescription);
        }

        static {
            Class<?>[] clsArr = {Boolean.TYPE, Byte.TYPE, Short.TYPE, Character.TYPE, Integer.TYPE, Long.TYPE, Float.TYPE, Double.TYPE, Void.TYPE};
            for (int i = 0; i < 9; i++) {
                Class<?> cls = clsArr[i];
                PRIMITIVE_TYPES.put(TypeDescription.ForLoadedType.m15196of(cls), cls);
            }
        }

        @Override // net.bytebuddy.description.annotation.AnnotationValue
        public Loaded<U> load(@MaybeNull ClassLoader classLoader) {
            Class<?> cls;
            try {
                if (this.typeDescription.isPrimitive()) {
                    cls = PRIMITIVE_TYPES.get(this.typeDescription);
                } else {
                    cls = Class.forName(this.typeDescription.getName(), false, classLoader);
                }
                return new Loaded(cls);
            } catch (ClassNotFoundException e) {
                return new ForMissingType.Loaded(this.typeDescription.getName(), e);
            }
        }

        @Override // net.bytebuddy.description.annotation.AnnotationValue
        public TypeDescription resolve() {
            return this.typeDescription;
        }

        public ForTypeDescription(TypeDescription typeDescription) {
            this.typeDescription = typeDescription;
        }

        @Override // net.bytebuddy.description.annotation.AnnotationValue
        public AnnotationValue<TypeDescription, U> filter(MethodDescription.InDefinedShape inDefinedShape, TypeDefinition typeDefinition) {
            String str;
            if (typeDefinition.asErasure().represents(Class.class)) {
                return this;
            }
            if (inDefinedShape.getReturnType().isArray()) {
                str = RenderingDispatcher.CURRENT.toArrayErrorString(Sort.TYPE);
            } else {
                str = Class.class.getName() + TypePool.Default.LazyTypeDescription.GenericTypeToken.COMPONENT_TYPE_PATH + this.typeDescription.getName() + ']';
            }
            return new ForMismatchedType(inDefinedShape, str);
        }
    }

    /* loaded from: classes2.dex */
    public interface Loaded<U> {

        /* loaded from: classes2.dex */
        public static abstract class AbstractBase<W> implements Loaded<W> {

            /* loaded from: classes2.dex */
            public static abstract class ForUnresolvedProperty<Z> extends AbstractBase<Z> {
                @Override // net.bytebuddy.description.annotation.AnnotationValue.Loaded
                public State getState() {
                    return State.UNRESOLVED;
                }

                @Override // net.bytebuddy.description.annotation.AnnotationValue.Loaded
                public boolean represents(Object obj) {
                    return false;
                }
            }

            @Override // net.bytebuddy.description.annotation.AnnotationValue.Loaded
            public <X> X resolve(Class<? extends X> cls) {
                return cls.cast(resolve());
            }
        }

        State getState();

        boolean represents(Object obj);

        U resolve();

        <V> V resolve(Class<? extends V> cls);
    }

    /* JADX WARN: Enum visitor error
    jadx.core.utils.exceptions.JadxRuntimeException: Init of enum JAVA_19_CAPABLE_VM uses external variables
    	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:444)
    	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:391)
    	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:320)
    	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:258)
    	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
    	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
     */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* loaded from: classes2.dex */
    public static abstract class RenderingDispatcher {
        private static final /* synthetic */ RenderingDispatcher[] $VALUES;
        private static final String ARRAY_PREFIX = "Array with component tag: ";
        public static final RenderingDispatcher CURRENT;
        public static final RenderingDispatcher JAVA_14_CAPABLE_VM;
        public static final RenderingDispatcher JAVA_17_CAPABLE_VM;
        public static final RenderingDispatcher JAVA_19_CAPABLE_VM;
        public static final RenderingDispatcher JAVA_9_CAPABLE_VM;
        public static final RenderingDispatcher LEGACY_VM;
        private final char closingBrace;
        private final boolean componentAsInteger;
        private final char openingBrace;

        public static RenderingDispatcher valueOf(String str) {
            return (RenderingDispatcher) Enum.valueOf(RenderingDispatcher.class, str);
        }

        public static RenderingDispatcher[] values() {
            return (RenderingDispatcher[]) $VALUES.clone();
        }

        public abstract String toSourceString(char c);

        public abstract String toSourceString(double d);

        public abstract String toSourceString(float f);

        public abstract String toSourceString(long j);

        public abstract String toSourceString(String str);

        public abstract String toSourceString(TypeDescription typeDescription);

        public String toSourceString(boolean z) {
            return Boolean.toString(z);
        }

        public String toTypeErrorString(Class<?> cls) {
            return cls.toString();
        }

        static {
            RenderingDispatcher renderingDispatcher = new RenderingDispatcher("LEGACY_VM", 0, TypePool.Default.LazyTypeDescription.GenericTypeToken.COMPONENT_TYPE_PATH, ']', true) { // from class: net.bytebuddy.description.annotation.AnnotationValue.RenderingDispatcher.1
                @Override // net.bytebuddy.description.annotation.AnnotationValue.RenderingDispatcher
                public String toSourceString(char c) {
                    return Character.toString(c);
                }

                @Override // net.bytebuddy.description.annotation.AnnotationValue.RenderingDispatcher
                public String toSourceString(String str) {
                    return str;
                }

                @Override // net.bytebuddy.description.annotation.AnnotationValue.RenderingDispatcher
                public String toSourceString(long j) {
                    return Long.toString(j);
                }

                @Override // net.bytebuddy.description.annotation.AnnotationValue.RenderingDispatcher
                public String toSourceString(float f) {
                    return Float.toString(f);
                }

                @Override // net.bytebuddy.description.annotation.AnnotationValue.RenderingDispatcher
                public String toSourceString(double d) {
                    return Double.toString(d);
                }

                @Override // net.bytebuddy.description.annotation.AnnotationValue.RenderingDispatcher
                public String toSourceString(TypeDescription typeDescription) {
                    return typeDescription.toString();
                }
            };
            LEGACY_VM = renderingDispatcher;
            RenderingDispatcher renderingDispatcher2 = new RenderingDispatcher("JAVA_9_CAPABLE_VM", 1, '{', '}', true) { // from class: net.bytebuddy.description.annotation.AnnotationValue.RenderingDispatcher.2
                @Override // net.bytebuddy.description.annotation.AnnotationValue.RenderingDispatcher
                public String toSourceString(char c) {
                    StringBuilder sb = new StringBuilder();
                    sb.append('\'');
                    if (c == '\'') {
                        sb.append("\\'");
                    } else {
                        sb.append(c);
                    }
                    sb.append('\'');
                    return sb.toString();
                }

                @Override // net.bytebuddy.description.annotation.AnnotationValue.RenderingDispatcher
                public String toSourceString(long j) {
                    if (Math.abs(j) <= 2147483647L) {
                        return String.valueOf(j);
                    }
                    return j + "L";
                }

                @Override // net.bytebuddy.description.annotation.AnnotationValue.RenderingDispatcher
                public String toSourceString(float f) {
                    if (Math.abs(f) > Float.MAX_VALUE) {
                        return Float.isInfinite(f) ? f < 0.0f ? "-1.0f/0.0f" : "1.0f/0.0f" : "0.0f/0.0f";
                    }
                    return f + "f";
                }

                @Override // net.bytebuddy.description.annotation.AnnotationValue.RenderingDispatcher
                public String toSourceString(double d) {
                    if (Math.abs(d) <= Double.MAX_VALUE) {
                        return Double.toString(d);
                    }
                    return Double.isInfinite(d) ? d < 0.0d ? "-1.0/0.0" : "1.0/0.0" : "0.0/0.0";
                }

                @Override // net.bytebuddy.description.annotation.AnnotationValue.RenderingDispatcher
                public String toSourceString(String str) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("\"");
                    if (str.indexOf(34) != -1) {
                        str = str.replace("\"", "\\\"");
                    }
                    sb.append(str);
                    sb.append("\"");
                    return sb.toString();
                }

                @Override // net.bytebuddy.description.annotation.AnnotationValue.RenderingDispatcher
                public String toSourceString(TypeDescription typeDescription) {
                    return typeDescription.getActualName() + ".class";
                }
            };
            JAVA_9_CAPABLE_VM = renderingDispatcher2;
            RenderingDispatcher renderingDispatcher3 = new RenderingDispatcher("JAVA_14_CAPABLE_VM", 2, '{', '}', true) { // from class: net.bytebuddy.description.annotation.AnnotationValue.RenderingDispatcher.3
                @Override // net.bytebuddy.description.annotation.AnnotationValue.RenderingDispatcher
                public String toSourceString(byte b) {
                    return "(byte)0x" + Integer.toHexString(b & DefaultClassResolver.NAME);
                }

                @Override // net.bytebuddy.description.annotation.AnnotationValue.RenderingDispatcher
                public String toSourceString(char c) {
                    StringBuilder sb = new StringBuilder();
                    sb.append('\'');
                    if (c == '\'') {
                        sb.append("\\'");
                    } else {
                        sb.append(c);
                    }
                    sb.append('\'');
                    return sb.toString();
                }

                @Override // net.bytebuddy.description.annotation.AnnotationValue.RenderingDispatcher
                public String toSourceString(long j) {
                    return j + "L";
                }

                @Override // net.bytebuddy.description.annotation.AnnotationValue.RenderingDispatcher
                public String toSourceString(float f) {
                    if (Math.abs(f) > Float.MAX_VALUE) {
                        return Float.isInfinite(f) ? f < 0.0f ? "-1.0f/0.0f" : "1.0f/0.0f" : "0.0f/0.0f";
                    }
                    return f + "f";
                }

                @Override // net.bytebuddy.description.annotation.AnnotationValue.RenderingDispatcher
                public String toSourceString(double d) {
                    if (Math.abs(d) <= Double.MAX_VALUE) {
                        return Double.toString(d);
                    }
                    return Double.isInfinite(d) ? d < 0.0d ? "-1.0/0.0" : "1.0/0.0" : "0.0/0.0";
                }

                @Override // net.bytebuddy.description.annotation.AnnotationValue.RenderingDispatcher
                public String toSourceString(String str) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("\"");
                    if (str.indexOf(34) != -1) {
                        str = str.replace("\"", "\\\"");
                    }
                    sb.append(str);
                    sb.append("\"");
                    return sb.toString();
                }

                @Override // net.bytebuddy.description.annotation.AnnotationValue.RenderingDispatcher
                public String toSourceString(TypeDescription typeDescription) {
                    return typeDescription.getActualName() + ".class";
                }
            };
            JAVA_14_CAPABLE_VM = renderingDispatcher3;
            RenderingDispatcher renderingDispatcher4 = new RenderingDispatcher("JAVA_17_CAPABLE_VM", 3, '{', '}', false) { // from class: net.bytebuddy.description.annotation.AnnotationValue.RenderingDispatcher.4
                @Override // net.bytebuddy.description.annotation.AnnotationValue.RenderingDispatcher
                public String toSourceString(byte b) {
                    return "(byte)0x" + Integer.toHexString(b & DefaultClassResolver.NAME);
                }

                @Override // net.bytebuddy.description.annotation.AnnotationValue.RenderingDispatcher
                public String toTypeErrorString(Class<?> cls) {
                    return cls.getName();
                }

                @Override // net.bytebuddy.description.annotation.AnnotationValue.RenderingDispatcher
                public String toSourceString(char c) {
                    StringBuilder sb = new StringBuilder();
                    sb.append('\'');
                    if (c == '\'') {
                        sb.append("\\'");
                    } else {
                        sb.append(c);
                    }
                    sb.append('\'');
                    return sb.toString();
                }

                @Override // net.bytebuddy.description.annotation.AnnotationValue.RenderingDispatcher
                public String toSourceString(long j) {
                    return j + "L";
                }

                @Override // net.bytebuddy.description.annotation.AnnotationValue.RenderingDispatcher
                public String toSourceString(float f) {
                    if (Math.abs(f) > Float.MAX_VALUE) {
                        return Float.isInfinite(f) ? f < 0.0f ? "-1.0f/0.0f" : "1.0f/0.0f" : "0.0f/0.0f";
                    }
                    return f + "f";
                }

                @Override // net.bytebuddy.description.annotation.AnnotationValue.RenderingDispatcher
                public String toSourceString(double d) {
                    if (Math.abs(d) <= Double.MAX_VALUE) {
                        return Double.toString(d);
                    }
                    return Double.isInfinite(d) ? d < 0.0d ? "-1.0/0.0" : "1.0/0.0" : "0.0/0.0";
                }

                @Override // net.bytebuddy.description.annotation.AnnotationValue.RenderingDispatcher
                public String toSourceString(String str) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("\"");
                    if (str.indexOf(34) != -1) {
                        str = str.replace("\"", "\\\"");
                    }
                    sb.append(str);
                    sb.append("\"");
                    return sb.toString();
                }

                @Override // net.bytebuddy.description.annotation.AnnotationValue.RenderingDispatcher
                public String toSourceString(TypeDescription typeDescription) {
                    return typeDescription.getActualName() + ".class";
                }
            };
            JAVA_17_CAPABLE_VM = renderingDispatcher4;
            ClassFileVersion classFileVersion = ClassFileVersion.JAVA_V5;
            ClassFileVersion ofThisVm = ClassFileVersion.ofThisVm(classFileVersion);
            ClassFileVersion classFileVersion2 = ClassFileVersion.JAVA_V17;
            RenderingDispatcher renderingDispatcher5 = new RenderingDispatcher("JAVA_19_CAPABLE_VM", 4, '{', '}', ofThisVm.isLessThan(classFileVersion2)) { // from class: net.bytebuddy.description.annotation.AnnotationValue.RenderingDispatcher.5
                @Override // net.bytebuddy.description.annotation.AnnotationValue.RenderingDispatcher
                public String toSourceString(byte b) {
                    return "(byte)0x" + Integer.toHexString(b & DefaultClassResolver.NAME);
                }

                @Override // net.bytebuddy.description.annotation.AnnotationValue.RenderingDispatcher
                public String toTypeErrorString(Class<?> cls) {
                    return cls.getName();
                }

                @Override // net.bytebuddy.description.annotation.AnnotationValue.RenderingDispatcher
                public String toSourceString(char c) {
                    StringBuilder sb = new StringBuilder();
                    sb.append('\'');
                    if (c == '\'') {
                        sb.append("\\'");
                    } else {
                        sb.append(c);
                    }
                    sb.append('\'');
                    return sb.toString();
                }

                @Override // net.bytebuddy.description.annotation.AnnotationValue.RenderingDispatcher
                public String toSourceString(long j) {
                    return j + "L";
                }

                @Override // net.bytebuddy.description.annotation.AnnotationValue.RenderingDispatcher
                public String toSourceString(float f) {
                    if (Math.abs(f) > Float.MAX_VALUE) {
                        return Float.isInfinite(f) ? f < 0.0f ? "-1.0f/0.0f" : "1.0f/0.0f" : "0.0f/0.0f";
                    }
                    return f + "f";
                }

                @Override // net.bytebuddy.description.annotation.AnnotationValue.RenderingDispatcher
                public String toSourceString(double d) {
                    if (Math.abs(d) <= Double.MAX_VALUE) {
                        return Double.toString(d);
                    }
                    return Double.isInfinite(d) ? d < 0.0d ? "-1.0/0.0" : "1.0/0.0" : "0.0/0.0";
                }

                @Override // net.bytebuddy.description.annotation.AnnotationValue.RenderingDispatcher
                public String toSourceString(String str) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("\"");
                    if (str.indexOf(34) != -1) {
                        str = str.replace("\"", "\\\"");
                    }
                    sb.append(str);
                    sb.append("\"");
                    return sb.toString();
                }

                @Override // net.bytebuddy.description.annotation.AnnotationValue.RenderingDispatcher
                public String toSourceString(TypeDescription typeDescription) {
                    return typeDescription.getCanonicalName() + ".class";
                }
            };
            JAVA_19_CAPABLE_VM = renderingDispatcher5;
            $VALUES = new RenderingDispatcher[]{renderingDispatcher, renderingDispatcher2, renderingDispatcher3, renderingDispatcher4, renderingDispatcher5};
            ClassFileVersion ofThisVm2 = ClassFileVersion.ofThisVm(classFileVersion);
            if (ofThisVm2.isAtLeast(ClassFileVersion.JAVA_V19)) {
                CURRENT = renderingDispatcher5;
            } else if (ofThisVm2.isAtLeast(classFileVersion2)) {
                CURRENT = renderingDispatcher4;
            } else if (ofThisVm2.isAtLeast(ClassFileVersion.JAVA_V14)) {
                CURRENT = renderingDispatcher3;
            } else if (ofThisVm2.isAtLeast(ClassFileVersion.JAVA_V9)) {
                CURRENT = renderingDispatcher2;
            } else {
                CURRENT = renderingDispatcher;
            }
        }

        private RenderingDispatcher(String str, int i, char c, char c2, boolean z) {
            this.openingBrace = c;
            this.closingBrace = c2;
            this.componentAsInteger = z;
        }

        public String toArrayErrorString(Sort sort) {
            String num;
            StringBuilder sb = new StringBuilder();
            sb.append(ARRAY_PREFIX);
            if (!this.componentAsInteger && sort.isDefined()) {
                num = Character.toString((char) sort.getTag());
            } else {
                num = Integer.toString(sort.getTag());
            }
            sb.append(num);
            return sb.toString();
        }

        public String toSourceString(byte b) {
            return Byte.toString(b);
        }

        public String toSourceString(short s) {
            return Short.toString(s);
        }

        public String toSourceString(int i) {
            return Integer.toString(i);
        }

        public String toSourceString(List<?> list) {
            StringBuilder sb = new StringBuilder();
            sb.append(this.openingBrace);
            boolean z = true;
            for (Object obj : list) {
                if (z) {
                    z = false;
                } else {
                    sb.append(", ");
                }
                sb.append(obj);
            }
            sb.append(this.closingBrace);
            return sb.toString();
        }
    }

    /* loaded from: classes2.dex */
    public enum Sort {
        BOOLEAN(90),
        BYTE(66),
        SHORT(83),
        CHARACTER(67),
        INTEGER(73),
        LONG(74),
        FLOAT(70),
        DOUBLE(68),
        STRING(115),
        TYPE(99),
        ENUMERATION(101),
        ANNOTATION(64),
        ARRAY(91),
        NONE(0);
        
        private final int tag;

        public int getTag() {
            return this.tag;
        }

        public boolean isDefined() {
            return this != NONE;
        }

        /* renamed from: of */
        public static Sort m15210of(TypeDefinition typeDefinition) {
            if (typeDefinition.represents(Boolean.TYPE)) {
                return BOOLEAN;
            }
            if (typeDefinition.represents(Byte.TYPE)) {
                return BYTE;
            }
            if (typeDefinition.represents(Short.TYPE)) {
                return SHORT;
            }
            if (typeDefinition.represents(Character.TYPE)) {
                return CHARACTER;
            }
            if (typeDefinition.represents(Integer.TYPE)) {
                return INTEGER;
            }
            if (typeDefinition.represents(Long.TYPE)) {
                return LONG;
            }
            if (typeDefinition.represents(Float.TYPE)) {
                return FLOAT;
            }
            if (typeDefinition.represents(Double.TYPE)) {
                return DOUBLE;
            }
            if (typeDefinition.represents(String.class)) {
                return STRING;
            }
            if (typeDefinition.represents(Class.class)) {
                return TYPE;
            }
            if (typeDefinition.isEnum()) {
                return ENUMERATION;
            }
            if (typeDefinition.isAnnotation()) {
                return ANNOTATION;
            }
            if (typeDefinition.isArray()) {
                return ARRAY;
            }
            return NONE;
        }

        Sort(int i) {
            this.tag = i;
        }
    }

    /* loaded from: classes2.dex */
    public enum State {
        UNDEFINED,
        UNRESOLVED,
        RESOLVED;

        public boolean isDefined() {
            return this != UNDEFINED;
        }

        public boolean isResolved() {
            return this == RESOLVED;
        }
    }

    AnnotationValue<T, S> filter(MethodDescription.InDefinedShape inDefinedShape);

    AnnotationValue<T, S> filter(MethodDescription.InDefinedShape inDefinedShape, TypeDefinition typeDefinition);

    Sort getSort();

    State getState();

    Loaded<S> load(@MaybeNull ClassLoader classLoader);

    T resolve();

    <W> W resolve(Class<? extends W> cls);
}
