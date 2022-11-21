package net.bytebuddy.pool;

import edu.umd.cs.findbugs.annotations.SuppressFBWarnings;
import java.io.IOException;
import java.lang.annotation.Annotation;
import java.lang.ref.SoftReference;
import java.lang.reflect.GenericSignatureFormatError;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.atomic.AtomicReference;
import net.bytebuddy.ClassFileVersion;
import net.bytebuddy.build.CachedReturnPlugin;
import net.bytebuddy.build.HashCodeAndEqualsPlugin;
import net.bytebuddy.description.TypeVariableSource;
import net.bytebuddy.description.annotation.AnnotationDescription;
import net.bytebuddy.description.annotation.AnnotationList;
import net.bytebuddy.description.annotation.AnnotationValue;
import net.bytebuddy.description.enumeration.EnumerationDescription;
import net.bytebuddy.description.field.FieldDescription;
import net.bytebuddy.description.field.FieldList;
import net.bytebuddy.description.method.MethodDescription;
import net.bytebuddy.description.method.MethodList;
import net.bytebuddy.description.method.ParameterDescription;
import net.bytebuddy.description.method.ParameterList;
import net.bytebuddy.description.type.PackageDescription;
import net.bytebuddy.description.type.RecordComponentDescription;
import net.bytebuddy.description.type.RecordComponentList;
import net.bytebuddy.description.type.TypeDefinition;
import net.bytebuddy.description.type.TypeDescription;
import net.bytebuddy.description.type.TypeList;
import net.bytebuddy.dynamic.ClassFileLocator;
import net.bytebuddy.dynamic.loading.ClassLoadingStrategy;
import net.bytebuddy.implementation.MethodDelegation;
import net.bytebuddy.implementation.bytecode.StackSize;
import net.bytebuddy.jar.asm.AnnotationVisitor;
import net.bytebuddy.jar.asm.ClassReader;
import net.bytebuddy.jar.asm.ClassVisitor;
import net.bytebuddy.jar.asm.FieldVisitor;
import net.bytebuddy.jar.asm.Label;
import net.bytebuddy.jar.asm.MethodVisitor;
import net.bytebuddy.jar.asm.RecordComponentVisitor;
import net.bytebuddy.jar.asm.Type;
import net.bytebuddy.jar.asm.TypePath;
import net.bytebuddy.jar.asm.TypeReference;
import net.bytebuddy.jar.asm.signature.SignatureReader;
import net.bytebuddy.jar.asm.signature.SignatureVisitor;
import net.bytebuddy.matcher.ElementMatcher;
import net.bytebuddy.matcher.ElementMatchers;
import net.bytebuddy.utility.JavaType;
import net.bytebuddy.utility.OpenedClassReader;
import net.bytebuddy.utility.nullability.AlwaysNull;
import net.bytebuddy.utility.nullability.MaybeNull;
import net.bytebuddy.utility.nullability.UnknownNull;
import p203v3.C7013g1;
/* loaded from: classes.dex */
public interface TypePool {

    @HashCodeAndEqualsPlugin.Enhance
    /* loaded from: classes.dex */
    public static abstract class AbstractBase implements TypePool {
        private static final String ARRAY_SYMBOL = "[";
        public static final Map<String, String> PRIMITIVE_DESCRIPTORS;
        public static final Map<String, TypeDescription> PRIMITIVE_TYPES;
        public final CacheProvider cacheProvider;

        /* loaded from: classes.dex */
        public interface ComponentTypeReference {
            @MaybeNull
            public static final String NO_ARRAY = null;

            @MaybeNull
            String resolve();
        }

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static abstract class Hierarchical extends AbstractBase {
            private final TypePool parent;

            @Override // net.bytebuddy.pool.TypePool.AbstractBase
            public boolean equals(@MaybeNull Object obj) {
                if (super.equals(obj)) {
                    if (this == obj) {
                        return true;
                    }
                    return obj != null && getClass() == obj.getClass() && this.parent.equals(((Hierarchical) obj).parent);
                }
                return false;
            }

            @Override // net.bytebuddy.pool.TypePool.AbstractBase
            public int hashCode() {
                return (super.hashCode() * 31) + this.parent.hashCode();
            }

            @Override // net.bytebuddy.pool.TypePool.AbstractBase, net.bytebuddy.pool.TypePool
            public void clear() {
                try {
                    this.parent.clear();
                } finally {
                    super.clear();
                }
            }

            @Override // net.bytebuddy.pool.TypePool.AbstractBase, net.bytebuddy.pool.TypePool
            public Resolution describe(String str) {
                Resolution describe = this.parent.describe(str);
                if (!describe.isResolved()) {
                    return super.describe(str);
                }
                return describe;
            }

            public Hierarchical(CacheProvider cacheProvider, TypePool typePool) {
                super(cacheProvider);
                this.parent = typePool;
            }
        }

        @Override // net.bytebuddy.pool.TypePool
        public void clear() {
            this.cacheProvider.clear();
        }

        public Resolution doCache(String str, Resolution resolution) {
            return this.cacheProvider.register(str, resolution);
        }

        public abstract Resolution doDescribe(String str);

        public boolean equals(@MaybeNull Object obj) {
            if (this == obj) {
                return true;
            }
            return obj != null && getClass() == obj.getClass() && this.cacheProvider.equals(((AbstractBase) obj).cacheProvider);
        }

        public int hashCode() {
            return (getClass().hashCode() * 31) + this.cacheProvider.hashCode();
        }

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static class ArrayTypeResolution implements Resolution {
            private final int arity;
            private final Resolution resolution;

            /* renamed from: of */
            public static Resolution m14818of(Resolution resolution, int i) {
                return i == 0 ? resolution : new ArrayTypeResolution(resolution, i);
            }

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj != null && getClass() == obj.getClass()) {
                    ArrayTypeResolution arrayTypeResolution = (ArrayTypeResolution) obj;
                    return this.arity == arrayTypeResolution.arity && this.resolution.equals(arrayTypeResolution.resolution);
                }
                return false;
            }

            public int hashCode() {
                return (((getClass().hashCode() * 31) + this.resolution.hashCode()) * 31) + this.arity;
            }

            @Override // net.bytebuddy.pool.TypePool.Resolution
            public boolean isResolved() {
                return this.resolution.isResolved();
            }

            @Override // net.bytebuddy.pool.TypePool.Resolution
            public TypeDescription resolve() {
                return TypeDescription.ArrayProjection.m15198of(this.resolution.resolve(), this.arity);
            }

            public ArrayTypeResolution(Resolution resolution, int i) {
                this.resolution = resolution;
                this.arity = i;
            }
        }

        static {
            HashMap hashMap = new HashMap();
            HashMap hashMap2 = new HashMap();
            Class[] clsArr = {Boolean.TYPE, Byte.TYPE, Short.TYPE, Character.TYPE, Integer.TYPE, Long.TYPE, Float.TYPE, Double.TYPE, Void.TYPE};
            for (int i = 0; i < 9; i++) {
                Class cls = clsArr[i];
                hashMap.put(cls.getName(), TypeDescription.ForLoadedType.m15196of(cls));
                hashMap2.put(Type.getDescriptor(cls), cls.getName());
            }
            PRIMITIVE_TYPES = Collections.unmodifiableMap(hashMap);
            PRIMITIVE_DESCRIPTORS = Collections.unmodifiableMap(hashMap2);
        }

        @Override // net.bytebuddy.pool.TypePool
        public Resolution describe(String str) {
            Resolution simple;
            if (!str.contains("/")) {
                int i = 0;
                while (str.startsWith(ARRAY_SYMBOL)) {
                    i++;
                    str = str.substring(1);
                }
                if (i > 0) {
                    String str2 = PRIMITIVE_DESCRIPTORS.get(str);
                    if (str2 == null) {
                        str = str.substring(1, str.length() - 1);
                    } else {
                        str = str2;
                    }
                }
                TypeDescription typeDescription = PRIMITIVE_TYPES.get(str);
                if (typeDescription == null) {
                    simple = this.cacheProvider.find(str);
                } else {
                    simple = new Resolution.Simple(typeDescription);
                }
                if (simple == null) {
                    simple = doCache(str, doDescribe(str));
                }
                return ArrayTypeResolution.m14818of(simple, i);
            }
            throw new IllegalArgumentException(str + " contains the illegal character '/'");
        }

        public AbstractBase(CacheProvider cacheProvider) {
            this.cacheProvider = cacheProvider;
        }
    }

    /* loaded from: classes.dex */
    public interface CacheProvider {
        @MaybeNull
        public static final Resolution UNRESOLVED = null;

        /* loaded from: classes.dex */
        public static class Discriminating implements CacheProvider {
            private final CacheProvider matched;
            private final ElementMatcher<String> matcher;
            private final CacheProvider unmatched;

            @Override // net.bytebuddy.pool.TypePool.CacheProvider
            @MaybeNull
            public Resolution find(String str) {
                return (this.matcher.matches(str) ? this.matched : this.unmatched).find(str);
            }

            @Override // net.bytebuddy.pool.TypePool.CacheProvider
            public Resolution register(String str, Resolution resolution) {
                return (this.matcher.matches(str) ? this.matched : this.unmatched).register(str, resolution);
            }

            @Override // net.bytebuddy.pool.TypePool.CacheProvider
            public void clear() {
                try {
                    this.unmatched.clear();
                } finally {
                    this.matched.clear();
                }
            }

            public Discriminating(ElementMatcher<String> elementMatcher, CacheProvider cacheProvider, CacheProvider cacheProvider2) {
                this.matcher = elementMatcher;
                this.matched = cacheProvider;
                this.unmatched = cacheProvider2;
            }
        }

        /* loaded from: classes.dex */
        public enum NoOp implements CacheProvider {
            INSTANCE;

            @Override // net.bytebuddy.pool.TypePool.CacheProvider
            public void clear() {
            }

            @Override // net.bytebuddy.pool.TypePool.CacheProvider
            @MaybeNull
            public Resolution find(String str) {
                return CacheProvider.UNRESOLVED;
            }

            @Override // net.bytebuddy.pool.TypePool.CacheProvider
            public Resolution register(String str, Resolution resolution) {
                return resolution;
            }
        }

        /* loaded from: classes.dex */
        public static class Simple implements CacheProvider {
            private final ConcurrentMap<String, Resolution> storage;

            /* loaded from: classes.dex */
            public static class UsingSoftReference implements CacheProvider {
                private final AtomicReference<SoftReference<Simple>> delegate = new AtomicReference<>(new SoftReference(new Simple()));

                @Override // net.bytebuddy.pool.TypePool.CacheProvider
                public void clear() {
                    Simple simple = this.delegate.get().get();
                    if (simple != null) {
                        simple.clear();
                    }
                }

                @Override // net.bytebuddy.pool.TypePool.CacheProvider
                @MaybeNull
                public Resolution find(String str) {
                    Simple simple = this.delegate.get().get();
                    if (simple == null) {
                        return CacheProvider.UNRESOLVED;
                    }
                    return simple.find(str);
                }

                @Override // net.bytebuddy.pool.TypePool.CacheProvider
                public Resolution register(String str, Resolution resolution) {
                    SoftReference<Simple> softReference = this.delegate.get();
                    Simple simple = softReference.get();
                    if (simple == null) {
                        simple = new Simple();
                        while (true) {
                            if (!C7013g1.m2669a(this.delegate, softReference, new SoftReference(simple))) {
                                softReference = this.delegate.get();
                                Simple simple2 = softReference.get();
                                if (simple2 != null) {
                                    simple = simple2;
                                    break;
                                }
                            } else {
                                break;
                            }
                        }
                    }
                    return simple.register(str, resolution);
                }
            }

            public Simple() {
                this(new ConcurrentHashMap());
            }

            @Override // net.bytebuddy.pool.TypePool.CacheProvider
            public void clear() {
                this.storage.clear();
            }

            @Override // net.bytebuddy.pool.TypePool.CacheProvider
            @MaybeNull
            public Resolution find(String str) {
                return this.storage.get(str);
            }

            public ConcurrentMap<String, Resolution> getStorage() {
                return this.storage;
            }

            @Override // net.bytebuddy.pool.TypePool.CacheProvider
            public Resolution register(String str, Resolution resolution) {
                Resolution putIfAbsent = this.storage.putIfAbsent(str, resolution);
                return putIfAbsent == null ? resolution : putIfAbsent;
            }

            public Simple(ConcurrentMap<String, Resolution> concurrentMap) {
                this.storage = concurrentMap;
            }

            public static CacheProvider withObjectType() {
                Simple simple = new Simple();
                simple.register(Object.class.getName(), new Resolution.Simple(TypeDescription.OBJECT));
                return simple;
            }
        }

        void clear();

        @MaybeNull
        Resolution find(String str);

        Resolution register(String str, Resolution resolution);
    }

    @HashCodeAndEqualsPlugin.Enhance
    /* loaded from: classes.dex */
    public static class ClassLoading extends AbstractBase.Hierarchical {
        @MaybeNull
        @HashCodeAndEqualsPlugin.ValueHandling(HashCodeAndEqualsPlugin.ValueHandling.Sort.REVERSE_NULLABILITY)
        private final ClassLoader classLoader;

        /* renamed from: of */
        public static TypePool m14817of(@MaybeNull ClassLoader classLoader) {
            return m14816of(classLoader, Empty.INSTANCE);
        }

        public static TypePool ofBootLoader() {
            return m14817of(ClassLoadingStrategy.BOOTSTRAP_LOADER);
        }

        public static TypePool ofPlatformLoader() {
            return m14817of(ClassLoader.getSystemClassLoader().getParent());
        }

        public static TypePool ofSystemLoader() {
            return m14817of(ClassLoader.getSystemClassLoader());
        }

        /* JADX WARN: Removed duplicated region for block: B:21:0x002e A[RETURN] */
        @Override // net.bytebuddy.pool.TypePool.AbstractBase.Hierarchical, net.bytebuddy.pool.TypePool.AbstractBase
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean equals(@net.bytebuddy.utility.nullability.MaybeNull java.lang.Object r5) {
            /*
                r4 = this;
                boolean r0 = super.equals(r5)
                r1 = 0
                if (r0 != 0) goto L8
                return r1
            L8:
                r0 = 1
                if (r4 != r5) goto Lc
                return r0
            Lc:
                if (r5 != 0) goto Lf
                return r1
            Lf:
                java.lang.Class r2 = r4.getClass()
                java.lang.Class r3 = r5.getClass()
                if (r2 == r3) goto L1a
                return r1
            L1a:
                java.lang.ClassLoader r2 = r4.classLoader
                net.bytebuddy.pool.TypePool$ClassLoading r5 = (net.bytebuddy.pool.TypePool.ClassLoading) r5
                java.lang.ClassLoader r5 = r5.classLoader
                if (r5 == 0) goto L2b
                if (r2 == 0) goto L2d
                boolean r5 = r2.equals(r5)
                if (r5 != 0) goto L2e
                return r1
            L2b:
                if (r2 == 0) goto L2e
            L2d:
                return r1
            L2e:
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: net.bytebuddy.pool.TypePool.ClassLoading.equals(java.lang.Object):boolean");
        }

        @Override // net.bytebuddy.pool.TypePool.AbstractBase.Hierarchical, net.bytebuddy.pool.TypePool.AbstractBase
        public int hashCode() {
            int hashCode = super.hashCode() * 31;
            ClassLoader classLoader = this.classLoader;
            return classLoader != null ? hashCode + classLoader.hashCode() : hashCode;
        }

        /* renamed from: of */
        public static TypePool m14816of(@MaybeNull ClassLoader classLoader, TypePool typePool) {
            return new ClassLoading(new CacheProvider.Simple(), typePool, classLoader);
        }

        @Override // net.bytebuddy.pool.TypePool.AbstractBase
        public Resolution doDescribe(String str) {
            try {
                return new Resolution.Simple(TypeDescription.ForLoadedType.m15196of(Class.forName(str, false, this.classLoader)));
            } catch (ClassNotFoundException unused) {
                return new Resolution.Illegal(str);
            }
        }

        public ClassLoading(CacheProvider cacheProvider, TypePool typePool, @MaybeNull ClassLoader classLoader) {
            super(cacheProvider, typePool);
            this.classLoader = classLoader;
        }
    }

    @HashCodeAndEqualsPlugin.Enhance
    /* loaded from: classes.dex */
    public static class Default extends AbstractBase.Hierarchical {
        @AlwaysNull
        private static final MethodVisitor IGNORE_METHOD = null;
        public final ClassFileLocator classFileLocator;
        public final ReaderMode readerMode;

        /* loaded from: classes.dex */
        public interface AnnotationRegistrant {

            /* loaded from: classes.dex */
            public static abstract class AbstractBase implements AnnotationRegistrant {
                private final String descriptor;
                private final Map<String, AnnotationValue<?, ?>> values = new HashMap();

                public abstract List<LazyTypeDescription.AnnotationToken> getTokens();

                @Override // net.bytebuddy.pool.TypePool.Default.AnnotationRegistrant
                public void onComplete() {
                    getTokens().add(new LazyTypeDescription.AnnotationToken(this.descriptor, this.values));
                }

                @Override // net.bytebuddy.pool.TypePool.Default.AnnotationRegistrant
                public void register(String str, AnnotationValue<?, ?> annotationValue) {
                    this.values.put(str, annotationValue);
                }

                /* loaded from: classes.dex */
                public static abstract class ForTypeVariable extends AbstractBase {
                    private final String typePath;

                    /* loaded from: classes.dex */
                    public static abstract class WithIndex extends ForTypeVariable {
                        private final int index;

                        public abstract Map<Integer, Map<String, List<LazyTypeDescription.AnnotationToken>>> getIndexedPathMap();

                        /* loaded from: classes.dex */
                        public static abstract class DoubleIndexed extends WithIndex {
                            private final int preIndex;

                            public abstract Map<Integer, Map<Integer, Map<String, List<LazyTypeDescription.AnnotationToken>>>> getDoubleIndexedPathMap();

                            public DoubleIndexed(String str, @MaybeNull TypePath typePath, int i, int i2) {
                                super(str, typePath, i);
                                this.preIndex = i2;
                            }

                            @Override // net.bytebuddy.pool.TypePool.Default.AnnotationRegistrant.AbstractBase.ForTypeVariable.WithIndex
                            public Map<Integer, Map<String, List<LazyTypeDescription.AnnotationToken>>> getIndexedPathMap() {
                                Map<Integer, Map<Integer, Map<String, List<LazyTypeDescription.AnnotationToken>>>> doubleIndexedPathMap = getDoubleIndexedPathMap();
                                Map<Integer, Map<String, List<LazyTypeDescription.AnnotationToken>>> map = doubleIndexedPathMap.get(Integer.valueOf(this.preIndex));
                                if (map == null) {
                                    HashMap hashMap = new HashMap();
                                    doubleIndexedPathMap.put(Integer.valueOf(this.preIndex), hashMap);
                                    return hashMap;
                                }
                                return map;
                            }
                        }

                        public WithIndex(String str, @MaybeNull TypePath typePath, int i) {
                            super(str, typePath);
                            this.index = i;
                        }

                        @Override // net.bytebuddy.pool.TypePool.Default.AnnotationRegistrant.AbstractBase.ForTypeVariable
                        public Map<String, List<LazyTypeDescription.AnnotationToken>> getPathMap() {
                            Map<Integer, Map<String, List<LazyTypeDescription.AnnotationToken>>> indexedPathMap = getIndexedPathMap();
                            Map<String, List<LazyTypeDescription.AnnotationToken>> map = indexedPathMap.get(Integer.valueOf(this.index));
                            if (map == null) {
                                HashMap hashMap = new HashMap();
                                indexedPathMap.put(Integer.valueOf(this.index), hashMap);
                                return hashMap;
                            }
                            return map;
                        }
                    }

                    public abstract Map<String, List<LazyTypeDescription.AnnotationToken>> getPathMap();

                    public ForTypeVariable(String str, @MaybeNull TypePath typePath) {
                        super(str);
                        String typePath2;
                        if (typePath == null) {
                            typePath2 = "";
                        } else {
                            typePath2 = typePath.toString();
                        }
                        this.typePath = typePath2;
                    }

                    @Override // net.bytebuddy.pool.TypePool.Default.AnnotationRegistrant.AbstractBase
                    public List<LazyTypeDescription.AnnotationToken> getTokens() {
                        Map<String, List<LazyTypeDescription.AnnotationToken>> pathMap = getPathMap();
                        List<LazyTypeDescription.AnnotationToken> list = pathMap.get(this.typePath);
                        if (list == null) {
                            ArrayList arrayList = new ArrayList();
                            pathMap.put(this.typePath, arrayList);
                            return arrayList;
                        }
                        return list;
                    }
                }

                public AbstractBase(String str) {
                    this.descriptor = str;
                }
            }

            void onComplete();

            void register(String str, AnnotationValue<?, ?> annotationValue);

            /* loaded from: classes.dex */
            public static class ForByteCodeElement extends AbstractBase {
                private final List<LazyTypeDescription.AnnotationToken> annotationTokens;

                /* loaded from: classes.dex */
                public static class WithIndex extends AbstractBase {
                    private final Map<Integer, List<LazyTypeDescription.AnnotationToken>> annotationTokens;
                    private final int index;

                    @Override // net.bytebuddy.pool.TypePool.Default.AnnotationRegistrant.AbstractBase
                    public List<LazyTypeDescription.AnnotationToken> getTokens() {
                        List<LazyTypeDescription.AnnotationToken> list = this.annotationTokens.get(Integer.valueOf(this.index));
                        if (list == null) {
                            ArrayList arrayList = new ArrayList();
                            this.annotationTokens.put(Integer.valueOf(this.index), arrayList);
                            return arrayList;
                        }
                        return list;
                    }

                    public WithIndex(String str, int i, Map<Integer, List<LazyTypeDescription.AnnotationToken>> map) {
                        super(str);
                        this.index = i;
                        this.annotationTokens = map;
                    }
                }

                @Override // net.bytebuddy.pool.TypePool.Default.AnnotationRegistrant.AbstractBase
                public List<LazyTypeDescription.AnnotationToken> getTokens() {
                    return this.annotationTokens;
                }

                public ForByteCodeElement(String str, List<LazyTypeDescription.AnnotationToken> list) {
                    super(str);
                    this.annotationTokens = list;
                }
            }

            /* loaded from: classes.dex */
            public static class ForTypeVariable extends AbstractBase.ForTypeVariable {
                private final Map<String, List<LazyTypeDescription.AnnotationToken>> pathMap;

                /* loaded from: classes.dex */
                public static class WithIndex extends AbstractBase.ForTypeVariable.WithIndex {
                    private final Map<Integer, Map<String, List<LazyTypeDescription.AnnotationToken>>> indexedPathMap;

                    @Override // net.bytebuddy.pool.TypePool.Default.AnnotationRegistrant.AbstractBase.ForTypeVariable.WithIndex
                    public Map<Integer, Map<String, List<LazyTypeDescription.AnnotationToken>>> getIndexedPathMap() {
                        return this.indexedPathMap;
                    }

                    /* loaded from: classes.dex */
                    public static class DoubleIndexed extends AbstractBase.ForTypeVariable.WithIndex.DoubleIndexed {
                        private final Map<Integer, Map<Integer, Map<String, List<LazyTypeDescription.AnnotationToken>>>> doubleIndexedPathMap;

                        @Override // net.bytebuddy.pool.TypePool.Default.AnnotationRegistrant.AbstractBase.ForTypeVariable.WithIndex.DoubleIndexed
                        public Map<Integer, Map<Integer, Map<String, List<LazyTypeDescription.AnnotationToken>>>> getDoubleIndexedPathMap() {
                            return this.doubleIndexedPathMap;
                        }

                        public DoubleIndexed(String str, @MaybeNull TypePath typePath, int i, int i2, Map<Integer, Map<Integer, Map<String, List<LazyTypeDescription.AnnotationToken>>>> map) {
                            super(str, typePath, i, i2);
                            this.doubleIndexedPathMap = map;
                        }
                    }

                    public WithIndex(String str, @MaybeNull TypePath typePath, int i, Map<Integer, Map<String, List<LazyTypeDescription.AnnotationToken>>> map) {
                        super(str, typePath, i);
                        this.indexedPathMap = map;
                    }
                }

                @Override // net.bytebuddy.pool.TypePool.Default.AnnotationRegistrant.AbstractBase.ForTypeVariable
                public Map<String, List<LazyTypeDescription.AnnotationToken>> getPathMap() {
                    return this.pathMap;
                }

                public ForTypeVariable(String str, @MaybeNull TypePath typePath, Map<String, List<LazyTypeDescription.AnnotationToken>> map) {
                    super(str, typePath);
                    this.pathMap = map;
                }
            }
        }

        /* loaded from: classes.dex */
        public interface ComponentTypeLocator {

            /* loaded from: classes.dex */
            public enum Illegal implements ComponentTypeLocator {
                INSTANCE;

                @Override // net.bytebuddy.pool.TypePool.Default.ComponentTypeLocator
                public AbstractBase.ComponentTypeReference bind(String str) {
                    throw new IllegalStateException("Unexpected lookup of component type for " + str);
                }
            }

            AbstractBase.ComponentTypeReference bind(String str);

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static class ForAnnotationProperty implements ComponentTypeLocator {
                private final String annotationName;
                private final TypePool typePool;

                @HashCodeAndEqualsPlugin.Enhance(includeSyntheticFields = true)
                /* loaded from: classes.dex */
                public class Bound implements AbstractBase.ComponentTypeReference {
                    private final String name;

                    public boolean equals(@MaybeNull Object obj) {
                        if (this == obj) {
                            return true;
                        }
                        if (obj != null && getClass() == obj.getClass()) {
                            Bound bound = (Bound) obj;
                            return this.name.equals(bound.name) && ForAnnotationProperty.this.equals(ForAnnotationProperty.this);
                        }
                        return false;
                    }

                    public int hashCode() {
                        return (((getClass().hashCode() * 31) + this.name.hashCode()) * 31) + ForAnnotationProperty.this.hashCode();
                    }

                    public Bound(String str) {
                        this.name = str;
                    }

                    @Override // net.bytebuddy.pool.TypePool.AbstractBase.ComponentTypeReference
                    @MaybeNull
                    public String resolve() {
                        TypeDescription componentType = ((MethodDescription.InDefinedShape) ForAnnotationProperty.this.typePool.describe(ForAnnotationProperty.this.annotationName).resolve().getDeclaredMethods().filter(ElementMatchers.named(this.name)).getOnly()).getReturnType().asErasure().getComponentType();
                        if (componentType == null) {
                            return AbstractBase.ComponentTypeReference.NO_ARRAY;
                        }
                        return componentType.getName();
                    }
                }

                @Override // net.bytebuddy.pool.TypePool.Default.ComponentTypeLocator
                public AbstractBase.ComponentTypeReference bind(String str) {
                    return new Bound(str);
                }

                public boolean equals(@MaybeNull Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    if (obj != null && getClass() == obj.getClass()) {
                        ForAnnotationProperty forAnnotationProperty = (ForAnnotationProperty) obj;
                        return this.annotationName.equals(forAnnotationProperty.annotationName) && this.typePool.equals(forAnnotationProperty.typePool);
                    }
                    return false;
                }

                public int hashCode() {
                    return (((getClass().hashCode() * 31) + this.typePool.hashCode()) * 31) + this.annotationName.hashCode();
                }

                public ForAnnotationProperty(TypePool typePool, String str) {
                    this.typePool = typePool;
                    this.annotationName = str.substring(1, str.length() - 1).replace('/', LazyTypeDescription.GenericTypeToken.INNER_CLASS_PATH);
                }
            }

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static class ForArrayType implements ComponentTypeLocator, AbstractBase.ComponentTypeReference {
                private final String componentType;

                @Override // net.bytebuddy.pool.TypePool.Default.ComponentTypeLocator
                public AbstractBase.ComponentTypeReference bind(String str) {
                    return this;
                }

                public boolean equals(@MaybeNull Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    return obj != null && getClass() == obj.getClass() && this.componentType.equals(((ForArrayType) obj).componentType);
                }

                public int hashCode() {
                    return (getClass().hashCode() * 31) + this.componentType.hashCode();
                }

                @Override // net.bytebuddy.pool.TypePool.AbstractBase.ComponentTypeReference
                public String resolve() {
                    return this.componentType;
                }

                public ForArrayType(String str) {
                    String className = Type.getMethodType(str).getReturnType().getClassName();
                    this.componentType = className.substring(0, className.length() - 2);
                }
            }
        }

        /* loaded from: classes.dex */
        public static class GenericTypeExtractor extends GenericTypeRegistrant.RejectingSignatureVisitor implements GenericTypeRegistrant {
            private final GenericTypeRegistrant genericTypeRegistrant;
            @UnknownNull
            private IncompleteToken incompleteToken;

            /* loaded from: classes.dex */
            public static abstract class ForSignature<T extends LazyTypeDescription.GenericTypeToken.Resolution> extends GenericTypeRegistrant.RejectingSignatureVisitor implements GenericTypeRegistrant {
                @UnknownNull
                public List<LazyTypeDescription.GenericTypeToken> currentBounds;
                @MaybeNull
                public String currentTypeParameter;
                public final List<LazyTypeDescription.GenericTypeToken.OfFormalTypeVariable> typeVariableTokens = new ArrayList();

                /* loaded from: classes.dex */
                public static class OfField implements GenericTypeRegistrant {
                    @UnknownNull
                    private LazyTypeDescription.GenericTypeToken fieldTypeToken;

                    @Override // net.bytebuddy.pool.TypePool.Default.GenericTypeRegistrant
                    public void register(LazyTypeDescription.GenericTypeToken genericTypeToken) {
                        this.fieldTypeToken = genericTypeToken;
                    }

                    public LazyTypeDescription.GenericTypeToken.Resolution.ForField resolve() {
                        return new LazyTypeDescription.GenericTypeToken.Resolution.ForField.Tokenized(this.fieldTypeToken);
                    }

                    public static LazyTypeDescription.GenericTypeToken.Resolution.ForField extract(@MaybeNull String str) {
                        if (str == null) {
                            return LazyTypeDescription.GenericTypeToken.Resolution.Raw.INSTANCE;
                        }
                        SignatureReader signatureReader = new SignatureReader(str);
                        OfField ofField = new OfField();
                        try {
                            signatureReader.acceptType(new GenericTypeExtractor(ofField));
                            return ofField.resolve();
                        } catch (RuntimeException unused) {
                            return LazyTypeDescription.GenericTypeToken.Resolution.Malformed.INSTANCE;
                        }
                    }
                }

                /* loaded from: classes.dex */
                public static class OfMethod extends ForSignature<LazyTypeDescription.GenericTypeToken.Resolution.ForMethod> {
                    @UnknownNull
                    private LazyTypeDescription.GenericTypeToken returnTypeToken;
                    private final List<LazyTypeDescription.GenericTypeToken> parameterTypeTokens = new ArrayList();
                    private final List<LazyTypeDescription.GenericTypeToken> exceptionTypeTokens = new ArrayList();

                    @HashCodeAndEqualsPlugin.Enhance(includeSyntheticFields = true)
                    /* loaded from: classes.dex */
                    public class ExceptionTypeRegistrant implements GenericTypeRegistrant {
                        public ExceptionTypeRegistrant() {
                        }

                        public boolean equals(@MaybeNull Object obj) {
                            if (this == obj) {
                                return true;
                            }
                            return obj != null && getClass() == obj.getClass() && OfMethod.this.equals(OfMethod.this);
                        }

                        public int hashCode() {
                            return (getClass().hashCode() * 31) + OfMethod.this.hashCode();
                        }

                        @Override // net.bytebuddy.pool.TypePool.Default.GenericTypeRegistrant
                        public void register(LazyTypeDescription.GenericTypeToken genericTypeToken) {
                            OfMethod.this.exceptionTypeTokens.add(genericTypeToken);
                        }
                    }

                    @HashCodeAndEqualsPlugin.Enhance(includeSyntheticFields = true)
                    /* loaded from: classes.dex */
                    public class ParameterTypeRegistrant implements GenericTypeRegistrant {
                        public ParameterTypeRegistrant() {
                        }

                        public boolean equals(@MaybeNull Object obj) {
                            if (this == obj) {
                                return true;
                            }
                            return obj != null && getClass() == obj.getClass() && OfMethod.this.equals(OfMethod.this);
                        }

                        public int hashCode() {
                            return (getClass().hashCode() * 31) + OfMethod.this.hashCode();
                        }

                        @Override // net.bytebuddy.pool.TypePool.Default.GenericTypeRegistrant
                        public void register(LazyTypeDescription.GenericTypeToken genericTypeToken) {
                            OfMethod.this.parameterTypeTokens.add(genericTypeToken);
                        }
                    }

                    @HashCodeAndEqualsPlugin.Enhance(includeSyntheticFields = true)
                    /* loaded from: classes.dex */
                    public class ReturnTypeTypeRegistrant implements GenericTypeRegistrant {
                        public ReturnTypeTypeRegistrant() {
                        }

                        public boolean equals(@MaybeNull Object obj) {
                            if (this == obj) {
                                return true;
                            }
                            return obj != null && getClass() == obj.getClass() && OfMethod.this.equals(OfMethod.this);
                        }

                        public int hashCode() {
                            return (getClass().hashCode() * 31) + OfMethod.this.hashCode();
                        }

                        @Override // net.bytebuddy.pool.TypePool.Default.GenericTypeRegistrant
                        public void register(LazyTypeDescription.GenericTypeToken genericTypeToken) {
                            OfMethod.this.returnTypeToken = genericTypeToken;
                        }
                    }

                    @Override // net.bytebuddy.pool.TypePool.Default.GenericTypeRegistrant.RejectingSignatureVisitor, net.bytebuddy.jar.asm.signature.SignatureVisitor
                    public SignatureVisitor visitExceptionType() {
                        return new GenericTypeExtractor(new ExceptionTypeRegistrant());
                    }

                    @Override // net.bytebuddy.pool.TypePool.Default.GenericTypeRegistrant.RejectingSignatureVisitor, net.bytebuddy.jar.asm.signature.SignatureVisitor
                    public SignatureVisitor visitParameterType() {
                        return new GenericTypeExtractor(new ParameterTypeRegistrant());
                    }

                    public static LazyTypeDescription.GenericTypeToken.Resolution.ForMethod extract(@MaybeNull String str) {
                        try {
                            if (str == null) {
                                return LazyTypeDescription.GenericTypeToken.Resolution.Raw.INSTANCE;
                            }
                            return (LazyTypeDescription.GenericTypeToken.Resolution.ForMethod) ForSignature.extract(str, new OfMethod());
                        } catch (RuntimeException unused) {
                            return LazyTypeDescription.GenericTypeToken.Resolution.Malformed.INSTANCE;
                        }
                    }

                    /* JADX WARN: Can't rename method to resolve collision */
                    @Override // net.bytebuddy.pool.TypePool.Default.GenericTypeExtractor.ForSignature
                    public LazyTypeDescription.GenericTypeToken.Resolution.ForMethod resolve() {
                        return new LazyTypeDescription.GenericTypeToken.Resolution.ForMethod.Tokenized(this.returnTypeToken, this.parameterTypeTokens, this.exceptionTypeTokens, this.typeVariableTokens);
                    }

                    @Override // net.bytebuddy.pool.TypePool.Default.GenericTypeRegistrant.RejectingSignatureVisitor, net.bytebuddy.jar.asm.signature.SignatureVisitor
                    public SignatureVisitor visitReturnType() {
                        collectTypeParameter();
                        return new GenericTypeExtractor(new ReturnTypeTypeRegistrant());
                    }
                }

                /* loaded from: classes.dex */
                public static class OfRecordComponent implements GenericTypeRegistrant {
                    @UnknownNull
                    private LazyTypeDescription.GenericTypeToken recordComponentType;

                    @Override // net.bytebuddy.pool.TypePool.Default.GenericTypeRegistrant
                    public void register(LazyTypeDescription.GenericTypeToken genericTypeToken) {
                        this.recordComponentType = genericTypeToken;
                    }

                    public LazyTypeDescription.GenericTypeToken.Resolution.ForRecordComponent resolve() {
                        return new LazyTypeDescription.GenericTypeToken.Resolution.ForRecordComponent.Tokenized(this.recordComponentType);
                    }

                    public static LazyTypeDescription.GenericTypeToken.Resolution.ForRecordComponent extract(@MaybeNull String str) {
                        if (str == null) {
                            return LazyTypeDescription.GenericTypeToken.Resolution.Raw.INSTANCE;
                        }
                        SignatureReader signatureReader = new SignatureReader(str);
                        OfRecordComponent ofRecordComponent = new OfRecordComponent();
                        try {
                            signatureReader.acceptType(new GenericTypeExtractor(ofRecordComponent));
                            return ofRecordComponent.resolve();
                        } catch (RuntimeException unused) {
                            return LazyTypeDescription.GenericTypeToken.Resolution.Malformed.INSTANCE;
                        }
                    }
                }

                /* loaded from: classes.dex */
                public static class OfType extends ForSignature<LazyTypeDescription.GenericTypeToken.Resolution.ForType> {
                    private final List<LazyTypeDescription.GenericTypeToken> interfaceTypeTokens = new ArrayList();
                    @UnknownNull
                    private LazyTypeDescription.GenericTypeToken superClassToken;

                    @HashCodeAndEqualsPlugin.Enhance(includeSyntheticFields = true)
                    /* loaded from: classes.dex */
                    public class InterfaceTypeRegistrant implements GenericTypeRegistrant {
                        public InterfaceTypeRegistrant() {
                        }

                        public boolean equals(@MaybeNull Object obj) {
                            if (this == obj) {
                                return true;
                            }
                            return obj != null && getClass() == obj.getClass() && OfType.this.equals(OfType.this);
                        }

                        public int hashCode() {
                            return (getClass().hashCode() * 31) + OfType.this.hashCode();
                        }

                        @Override // net.bytebuddy.pool.TypePool.Default.GenericTypeRegistrant
                        public void register(LazyTypeDescription.GenericTypeToken genericTypeToken) {
                            OfType.this.interfaceTypeTokens.add(genericTypeToken);
                        }
                    }

                    @HashCodeAndEqualsPlugin.Enhance(includeSyntheticFields = true)
                    /* loaded from: classes.dex */
                    public class SuperClassRegistrant implements GenericTypeRegistrant {
                        public SuperClassRegistrant() {
                        }

                        public boolean equals(@MaybeNull Object obj) {
                            if (this == obj) {
                                return true;
                            }
                            return obj != null && getClass() == obj.getClass() && OfType.this.equals(OfType.this);
                        }

                        public int hashCode() {
                            return (getClass().hashCode() * 31) + OfType.this.hashCode();
                        }

                        @Override // net.bytebuddy.pool.TypePool.Default.GenericTypeRegistrant
                        public void register(LazyTypeDescription.GenericTypeToken genericTypeToken) {
                            OfType.this.superClassToken = genericTypeToken;
                        }
                    }

                    @Override // net.bytebuddy.pool.TypePool.Default.GenericTypeRegistrant.RejectingSignatureVisitor, net.bytebuddy.jar.asm.signature.SignatureVisitor
                    public SignatureVisitor visitInterface() {
                        return new GenericTypeExtractor(new InterfaceTypeRegistrant());
                    }

                    public static LazyTypeDescription.GenericTypeToken.Resolution.ForType extract(@MaybeNull String str) {
                        try {
                            if (str == null) {
                                return LazyTypeDescription.GenericTypeToken.Resolution.Raw.INSTANCE;
                            }
                            return (LazyTypeDescription.GenericTypeToken.Resolution.ForType) ForSignature.extract(str, new OfType());
                        } catch (RuntimeException unused) {
                            return LazyTypeDescription.GenericTypeToken.Resolution.Malformed.INSTANCE;
                        }
                    }

                    /* JADX WARN: Can't rename method to resolve collision */
                    @Override // net.bytebuddy.pool.TypePool.Default.GenericTypeExtractor.ForSignature
                    public LazyTypeDescription.GenericTypeToken.Resolution.ForType resolve() {
                        return new LazyTypeDescription.GenericTypeToken.Resolution.ForType.Tokenized(this.superClassToken, this.interfaceTypeTokens, this.typeVariableTokens);
                    }

                    @Override // net.bytebuddy.pool.TypePool.Default.GenericTypeRegistrant.RejectingSignatureVisitor, net.bytebuddy.jar.asm.signature.SignatureVisitor
                    public SignatureVisitor visitSuperclass() {
                        collectTypeParameter();
                        return new GenericTypeExtractor(new SuperClassRegistrant());
                    }
                }

                public abstract T resolve();

                @Override // net.bytebuddy.pool.TypePool.Default.GenericTypeRegistrant.RejectingSignatureVisitor, net.bytebuddy.jar.asm.signature.SignatureVisitor
                public SignatureVisitor visitClassBound() {
                    return new GenericTypeExtractor(this);
                }

                @Override // net.bytebuddy.pool.TypePool.Default.GenericTypeRegistrant.RejectingSignatureVisitor, net.bytebuddy.jar.asm.signature.SignatureVisitor
                public SignatureVisitor visitInterfaceBound() {
                    return new GenericTypeExtractor(this);
                }

                public static <S extends LazyTypeDescription.GenericTypeToken.Resolution> S extract(String str, ForSignature<S> forSignature) {
                    new SignatureReader(str).accept(forSignature);
                    return forSignature.resolve();
                }

                public void collectTypeParameter() {
                    String str = this.currentTypeParameter;
                    if (str != null) {
                        this.typeVariableTokens.add(new LazyTypeDescription.GenericTypeToken.ForTypeVariable.Formal(str, this.currentBounds));
                    }
                }

                @Override // net.bytebuddy.pool.TypePool.Default.GenericTypeRegistrant
                public void register(LazyTypeDescription.GenericTypeToken genericTypeToken) {
                    List<LazyTypeDescription.GenericTypeToken> list = this.currentBounds;
                    if (list != null) {
                        list.add(genericTypeToken);
                        return;
                    }
                    throw new IllegalStateException("Did not expect " + genericTypeToken + " before finding formal parameter");
                }

                @Override // net.bytebuddy.pool.TypePool.Default.GenericTypeRegistrant.RejectingSignatureVisitor, net.bytebuddy.jar.asm.signature.SignatureVisitor
                public void visitFormalTypeParameter(String str) {
                    collectTypeParameter();
                    this.currentTypeParameter = str;
                    this.currentBounds = new ArrayList();
                }
            }

            /* loaded from: classes.dex */
            public interface IncompleteToken {

                /* loaded from: classes.dex */
                public static abstract class AbstractBase implements IncompleteToken {
                    public final List<LazyTypeDescription.GenericTypeToken> parameters = new ArrayList();

                    /* loaded from: classes.dex */
                    public class ForDirectBound implements GenericTypeRegistrant {
                        public ForDirectBound() {
                        }

                        @Override // net.bytebuddy.pool.TypePool.Default.GenericTypeRegistrant
                        public void register(LazyTypeDescription.GenericTypeToken genericTypeToken) {
                            AbstractBase.this.parameters.add(genericTypeToken);
                        }
                    }

                    /* loaded from: classes.dex */
                    public class ForLowerBound implements GenericTypeRegistrant {
                        public ForLowerBound() {
                        }

                        @Override // net.bytebuddy.pool.TypePool.Default.GenericTypeRegistrant
                        public void register(LazyTypeDescription.GenericTypeToken genericTypeToken) {
                            AbstractBase.this.parameters.add(new LazyTypeDescription.GenericTypeToken.ForLowerBoundWildcard(genericTypeToken));
                        }
                    }

                    /* loaded from: classes.dex */
                    public class ForUpperBound implements GenericTypeRegistrant {
                        public ForUpperBound() {
                        }

                        @Override // net.bytebuddy.pool.TypePool.Default.GenericTypeRegistrant
                        public void register(LazyTypeDescription.GenericTypeToken genericTypeToken) {
                            AbstractBase.this.parameters.add(new LazyTypeDescription.GenericTypeToken.ForUpperBoundWildcard(genericTypeToken));
                        }
                    }

                    @Override // net.bytebuddy.pool.TypePool.Default.GenericTypeExtractor.IncompleteToken
                    public SignatureVisitor appendDirectBound() {
                        return new GenericTypeExtractor(new ForDirectBound());
                    }

                    @Override // net.bytebuddy.pool.TypePool.Default.GenericTypeExtractor.IncompleteToken
                    public SignatureVisitor appendLowerBound() {
                        return new GenericTypeExtractor(new ForLowerBound());
                    }

                    @Override // net.bytebuddy.pool.TypePool.Default.GenericTypeExtractor.IncompleteToken
                    public void appendPlaceholder() {
                        this.parameters.add(LazyTypeDescription.GenericTypeToken.ForUnboundWildcard.INSTANCE);
                    }

                    @Override // net.bytebuddy.pool.TypePool.Default.GenericTypeExtractor.IncompleteToken
                    public SignatureVisitor appendUpperBound() {
                        return new GenericTypeExtractor(new ForUpperBound());
                    }
                }

                SignatureVisitor appendDirectBound();

                SignatureVisitor appendLowerBound();

                void appendPlaceholder();

                SignatureVisitor appendUpperBound();

                String getName();

                boolean isParameterized();

                LazyTypeDescription.GenericTypeToken toToken();

                @HashCodeAndEqualsPlugin.Enhance
                /* loaded from: classes.dex */
                public static class ForInnerClass extends AbstractBase {
                    private static final char INNER_CLASS_SEPARATOR = '$';
                    private final String internalName;
                    private final IncompleteToken outerTypeToken;

                    public boolean equals(@MaybeNull Object obj) {
                        if (this == obj) {
                            return true;
                        }
                        if (obj != null && getClass() == obj.getClass()) {
                            ForInnerClass forInnerClass = (ForInnerClass) obj;
                            return this.internalName.equals(forInnerClass.internalName) && this.outerTypeToken.equals(forInnerClass.outerTypeToken);
                        }
                        return false;
                    }

                    @Override // net.bytebuddy.pool.TypePool.Default.GenericTypeExtractor.IncompleteToken
                    public String getName() {
                        return this.outerTypeToken.getName() + INNER_CLASS_SEPARATOR + this.internalName.replace('/', LazyTypeDescription.GenericTypeToken.INNER_CLASS_PATH);
                    }

                    public int hashCode() {
                        return (((getClass().hashCode() * 31) + this.internalName.hashCode()) * 31) + this.outerTypeToken.hashCode();
                    }

                    @Override // net.bytebuddy.pool.TypePool.Default.GenericTypeExtractor.IncompleteToken
                    public boolean isParameterized() {
                        return (this.parameters.isEmpty() && this.outerTypeToken.isParameterized()) ? false : true;
                    }

                    public ForInnerClass(String str, IncompleteToken incompleteToken) {
                        this.internalName = str;
                        this.outerTypeToken = incompleteToken;
                    }

                    @Override // net.bytebuddy.pool.TypePool.Default.GenericTypeExtractor.IncompleteToken
                    public LazyTypeDescription.GenericTypeToken toToken() {
                        if (!isParameterized() && !this.outerTypeToken.isParameterized()) {
                            return new LazyTypeDescription.GenericTypeToken.ForRawType(getName());
                        }
                        return new LazyTypeDescription.GenericTypeToken.ForParameterizedType.Nested(getName(), this.parameters, this.outerTypeToken.toToken());
                    }
                }

                @HashCodeAndEqualsPlugin.Enhance
                /* loaded from: classes.dex */
                public static class ForTopLevelType extends AbstractBase {
                    private final String internalName;

                    public boolean equals(@MaybeNull Object obj) {
                        if (this == obj) {
                            return true;
                        }
                        return obj != null && getClass() == obj.getClass() && this.internalName.equals(((ForTopLevelType) obj).internalName);
                    }

                    @Override // net.bytebuddy.pool.TypePool.Default.GenericTypeExtractor.IncompleteToken
                    public String getName() {
                        return this.internalName.replace('/', LazyTypeDescription.GenericTypeToken.INNER_CLASS_PATH);
                    }

                    public int hashCode() {
                        return (getClass().hashCode() * 31) + this.internalName.hashCode();
                    }

                    @Override // net.bytebuddy.pool.TypePool.Default.GenericTypeExtractor.IncompleteToken
                    public boolean isParameterized() {
                        return !this.parameters.isEmpty();
                    }

                    public ForTopLevelType(String str) {
                        this.internalName = str;
                    }

                    @Override // net.bytebuddy.pool.TypePool.Default.GenericTypeExtractor.IncompleteToken
                    public LazyTypeDescription.GenericTypeToken toToken() {
                        if (isParameterized()) {
                            return new LazyTypeDescription.GenericTypeToken.ForParameterizedType(getName(), this.parameters);
                        }
                        return new LazyTypeDescription.GenericTypeToken.ForRawType(getName());
                    }
                }
            }

            @Override // net.bytebuddy.pool.TypePool.Default.GenericTypeRegistrant
            public void register(LazyTypeDescription.GenericTypeToken genericTypeToken) {
                this.genericTypeRegistrant.register(new LazyTypeDescription.GenericTypeToken.ForGenericArray(genericTypeToken));
            }

            @Override // net.bytebuddy.pool.TypePool.Default.GenericTypeRegistrant.RejectingSignatureVisitor, net.bytebuddy.jar.asm.signature.SignatureVisitor
            public SignatureVisitor visitArrayType() {
                return new GenericTypeExtractor(this);
            }

            @Override // net.bytebuddy.pool.TypePool.Default.GenericTypeRegistrant.RejectingSignatureVisitor, net.bytebuddy.jar.asm.signature.SignatureVisitor
            public void visitBaseType(char c) {
                this.genericTypeRegistrant.register(LazyTypeDescription.GenericTypeToken.ForPrimitiveType.m14799of(c));
            }

            @Override // net.bytebuddy.pool.TypePool.Default.GenericTypeRegistrant.RejectingSignatureVisitor, net.bytebuddy.jar.asm.signature.SignatureVisitor
            public void visitClassType(String str) {
                this.incompleteToken = new IncompleteToken.ForTopLevelType(str);
            }

            @Override // net.bytebuddy.pool.TypePool.Default.GenericTypeRegistrant.RejectingSignatureVisitor, net.bytebuddy.jar.asm.signature.SignatureVisitor
            public void visitEnd() {
                this.genericTypeRegistrant.register(this.incompleteToken.toToken());
            }

            @Override // net.bytebuddy.pool.TypePool.Default.GenericTypeRegistrant.RejectingSignatureVisitor, net.bytebuddy.jar.asm.signature.SignatureVisitor
            public void visitInnerClassType(String str) {
                this.incompleteToken = new IncompleteToken.ForInnerClass(str, this.incompleteToken);
            }

            @Override // net.bytebuddy.pool.TypePool.Default.GenericTypeRegistrant.RejectingSignatureVisitor, net.bytebuddy.jar.asm.signature.SignatureVisitor
            public void visitTypeArgument() {
                this.incompleteToken.appendPlaceholder();
            }

            @Override // net.bytebuddy.pool.TypePool.Default.GenericTypeRegistrant.RejectingSignatureVisitor, net.bytebuddy.jar.asm.signature.SignatureVisitor
            public void visitTypeVariable(String str) {
                this.genericTypeRegistrant.register(new LazyTypeDescription.GenericTypeToken.ForTypeVariable(str));
            }

            @Override // net.bytebuddy.pool.TypePool.Default.GenericTypeRegistrant.RejectingSignatureVisitor, net.bytebuddy.jar.asm.signature.SignatureVisitor
            public SignatureVisitor visitTypeArgument(char c) {
                if (c != '+') {
                    if (c != '-') {
                        if (c == '=') {
                            return this.incompleteToken.appendDirectBound();
                        }
                        throw new IllegalArgumentException("Unknown wildcard: " + c);
                    }
                    return this.incompleteToken.appendLowerBound();
                }
                return this.incompleteToken.appendUpperBound();
            }

            public GenericTypeExtractor(GenericTypeRegistrant genericTypeRegistrant) {
                this.genericTypeRegistrant = genericTypeRegistrant;
            }
        }

        /* loaded from: classes.dex */
        public interface GenericTypeRegistrant {

            /* loaded from: classes.dex */
            public static class RejectingSignatureVisitor extends SignatureVisitor {
                private static final String MESSAGE = "Unexpected token in generic signature";

                public RejectingSignatureVisitor() {
                    super(OpenedClassReader.ASM_API);
                }

                @Override // net.bytebuddy.jar.asm.signature.SignatureVisitor
                public SignatureVisitor visitArrayType() {
                    throw new IllegalStateException(MESSAGE);
                }

                @Override // net.bytebuddy.jar.asm.signature.SignatureVisitor
                public void visitBaseType(char c) {
                    throw new IllegalStateException(MESSAGE);
                }

                @Override // net.bytebuddy.jar.asm.signature.SignatureVisitor
                public SignatureVisitor visitClassBound() {
                    throw new IllegalStateException(MESSAGE);
                }

                @Override // net.bytebuddy.jar.asm.signature.SignatureVisitor
                public void visitClassType(String str) {
                    throw new IllegalStateException(MESSAGE);
                }

                @Override // net.bytebuddy.jar.asm.signature.SignatureVisitor
                public void visitEnd() {
                    throw new IllegalStateException(MESSAGE);
                }

                @Override // net.bytebuddy.jar.asm.signature.SignatureVisitor
                public SignatureVisitor visitExceptionType() {
                    throw new IllegalStateException(MESSAGE);
                }

                @Override // net.bytebuddy.jar.asm.signature.SignatureVisitor
                public void visitFormalTypeParameter(String str) {
                    throw new IllegalStateException(MESSAGE);
                }

                @Override // net.bytebuddy.jar.asm.signature.SignatureVisitor
                public void visitInnerClassType(String str) {
                    throw new IllegalStateException(MESSAGE);
                }

                @Override // net.bytebuddy.jar.asm.signature.SignatureVisitor
                public SignatureVisitor visitInterface() {
                    throw new IllegalStateException(MESSAGE);
                }

                @Override // net.bytebuddy.jar.asm.signature.SignatureVisitor
                public SignatureVisitor visitInterfaceBound() {
                    throw new IllegalStateException(MESSAGE);
                }

                @Override // net.bytebuddy.jar.asm.signature.SignatureVisitor
                public SignatureVisitor visitParameterType() {
                    throw new IllegalStateException(MESSAGE);
                }

                @Override // net.bytebuddy.jar.asm.signature.SignatureVisitor
                public SignatureVisitor visitReturnType() {
                    throw new IllegalStateException(MESSAGE);
                }

                @Override // net.bytebuddy.jar.asm.signature.SignatureVisitor
                public SignatureVisitor visitSuperclass() {
                    throw new IllegalStateException(MESSAGE);
                }

                @Override // net.bytebuddy.jar.asm.signature.SignatureVisitor
                public void visitTypeArgument() {
                    throw new IllegalStateException(MESSAGE);
                }

                @Override // net.bytebuddy.jar.asm.signature.SignatureVisitor
                public void visitTypeVariable(String str) {
                    throw new IllegalStateException(MESSAGE);
                }

                @Override // net.bytebuddy.jar.asm.signature.SignatureVisitor
                public SignatureVisitor visitTypeArgument(char c) {
                    throw new IllegalStateException(MESSAGE);
                }
            }

            void register(LazyTypeDescription.GenericTypeToken genericTypeToken);
        }

        /* loaded from: classes.dex */
        public static class LazyTypeDescription extends TypeDescription.AbstractBase.OfSimpleType {
            @AlwaysNull
            private static final String NO_TYPE = null;
            private final int actualModifiers;
            private final List<AnnotationToken> annotationTokens;
            private final boolean anonymousType;
            private final ClassFileVersion classFileVersion;
            private final List<String> declaredTypes;
            @MaybeNull
            private final String declaringTypeName;
            private final List<FieldToken> fieldTokens;
            @MaybeNull
            private final String genericSignature;
            private final Map<Integer, Map<String, List<AnnotationToken>>> interfaceAnnotationTokens;
            private final List<String> interfaceTypeDescriptors;
            private final List<MethodToken> methodTokens;
            private final int modifiers;
            private final String name;
            @MaybeNull
            private final String nestHost;
            private final List<String> nestMembers;
            private final List<String> permittedSubclasses;
            private final List<RecordComponentToken> recordComponentTokens;
            private final GenericTypeToken.Resolution.ForType signatureResolution;
            private final Map<String, List<AnnotationToken>> superClassAnnotationTokens;
            @MaybeNull
            private final String superClassDescriptor;
            private final TypeContainment typeContainment;
            private final TypePool typePool;
            private final Map<Integer, Map<String, List<AnnotationToken>>> typeVariableAnnotationTokens;
            private final Map<Integer, Map<Integer, Map<String, List<AnnotationToken>>>> typeVariableBoundsAnnotationTokens;

            /* loaded from: classes.dex */
            public class FieldTokenList extends FieldList.AbstractBase<FieldDescription.InDefinedShape> {
                public FieldTokenList() {
                }

                @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
                public int size() {
                    return LazyTypeDescription.this.fieldTokens.size();
                }

                @Override // java.util.AbstractList, java.util.List
                public FieldDescription.InDefinedShape get(int i) {
                    return ((FieldToken) LazyTypeDescription.this.fieldTokens.get(i)).toFieldDescription(LazyTypeDescription.this);
                }
            }

            /* loaded from: classes.dex */
            public interface GenericTypeToken {
                public static final char COMPONENT_TYPE_PATH = '[';
                public static final String EMPTY_TYPE_PATH = "";
                public static final char INDEXED_TYPE_DELIMITER = ';';
                public static final char INNER_CLASS_PATH = '.';
                public static final char WILDCARD_TYPE_PATH = '*';

                @HashCodeAndEqualsPlugin.Enhance
                /* loaded from: classes.dex */
                public static class ForLowerBoundWildcard implements GenericTypeToken {
                    private final GenericTypeToken boundTypeToken;

                    public boolean equals(@MaybeNull Object obj) {
                        if (this == obj) {
                            return true;
                        }
                        return obj != null && getClass() == obj.getClass() && this.boundTypeToken.equals(((ForLowerBoundWildcard) obj).boundTypeToken);
                    }

                    @Override // net.bytebuddy.pool.TypePool.Default.LazyTypeDescription.GenericTypeToken
                    public String getTypePathPrefix() {
                        throw new IllegalStateException("A lower bound wildcard cannot be the owner of a nested type: " + this);
                    }

                    public int hashCode() {
                        return (getClass().hashCode() * 31) + this.boundTypeToken.hashCode();
                    }

                    @Override // net.bytebuddy.pool.TypePool.Default.LazyTypeDescription.GenericTypeToken
                    public boolean isPrimaryBound(TypePool typePool) {
                        throw new IllegalStateException("A wildcard type cannot be a type variable bound: " + this);
                    }

                    @Override // net.bytebuddy.pool.TypePool.Default.LazyTypeDescription.GenericTypeToken
                    public TypeDescription.Generic toGenericType(TypePool typePool, TypeVariableSource typeVariableSource, String str, Map<String, List<AnnotationToken>> map) {
                        return new LazyLowerBoundWildcard(typePool, typeVariableSource, str, map, this.boundTypeToken);
                    }

                    /* loaded from: classes.dex */
                    public static class LazyLowerBoundWildcard extends TypeDescription.Generic.OfWildcardType {
                        private final Map<String, List<AnnotationToken>> annotationTokens;
                        private final GenericTypeToken boundTypeToken;
                        private final String typePath;
                        private final TypePool typePool;
                        private final TypeVariableSource typeVariableSource;

                        @Override // net.bytebuddy.description.annotation.AnnotationSource
                        public AnnotationList getDeclaredAnnotations() {
                            return LazyAnnotationDescription.asListOfNullable(this.typePool, this.annotationTokens.get(this.typePath));
                        }

                        @Override // net.bytebuddy.description.type.TypeDescription.Generic
                        public TypeList.Generic getLowerBounds() {
                            return new LazyTokenList.ForWildcardBound(this.typePool, this.typeVariableSource, this.typePath, this.annotationTokens, this.boundTypeToken);
                        }

                        @Override // net.bytebuddy.description.type.TypeDescription.Generic
                        public TypeList.Generic getUpperBounds() {
                            return new TypeList.Generic.Explicit(TypeDescription.Generic.OBJECT);
                        }

                        public LazyLowerBoundWildcard(TypePool typePool, TypeVariableSource typeVariableSource, String str, Map<String, List<AnnotationToken>> map, GenericTypeToken genericTypeToken) {
                            this.typePool = typePool;
                            this.typeVariableSource = typeVariableSource;
                            this.typePath = str;
                            this.annotationTokens = map;
                            this.boundTypeToken = genericTypeToken;
                        }
                    }

                    public ForLowerBoundWildcard(GenericTypeToken genericTypeToken) {
                        this.boundTypeToken = genericTypeToken;
                    }
                }

                /* loaded from: classes.dex */
                public enum ForPrimitiveType implements GenericTypeToken {
                    BOOLEAN(Boolean.TYPE),
                    BYTE(Byte.TYPE),
                    SHORT(Short.TYPE),
                    CHAR(Character.TYPE),
                    INTEGER(Integer.TYPE),
                    LONG(Long.TYPE),
                    FLOAT(Float.TYPE),
                    DOUBLE(Double.TYPE),
                    VOID(Void.TYPE);
                    
                    private final TypeDescription typeDescription;

                    /* loaded from: classes.dex */
                    public static class LazyPrimitiveType extends TypeDescription.Generic.OfNonGenericType {
                        private final Map<String, List<AnnotationToken>> annotationTokens;
                        private final TypeDescription typeDescription;
                        private final String typePath;
                        private final TypePool typePool;

                        @Override // net.bytebuddy.description.type.TypeDefinition
                        public TypeDescription asErasure() {
                            return this.typeDescription;
                        }

                        @Override // net.bytebuddy.description.annotation.AnnotationSource
                        public AnnotationList getDeclaredAnnotations() {
                            return LazyAnnotationDescription.asListOfNullable(this.typePool, this.annotationTokens.get(this.typePath));
                        }

                        @Override // net.bytebuddy.description.type.TypeDescription.Generic
                        @MaybeNull
                        public TypeDescription.Generic getOwnerType() {
                            return TypeDescription.Generic.UNDEFINED;
                        }

                        @Override // net.bytebuddy.description.type.TypeDescription.Generic, net.bytebuddy.description.type.TypeDefinition
                        @MaybeNull
                        public TypeDescription.Generic getComponentType() {
                            return TypeDescription.Generic.UNDEFINED;
                        }

                        public LazyPrimitiveType(TypePool typePool, String str, Map<String, List<AnnotationToken>> map, TypeDescription typeDescription) {
                            this.typePool = typePool;
                            this.typePath = str;
                            this.annotationTokens = map;
                            this.typeDescription = typeDescription;
                        }
                    }

                    @Override // net.bytebuddy.pool.TypePool.Default.LazyTypeDescription.GenericTypeToken
                    public String getTypePathPrefix() {
                        throw new IllegalStateException("A primitive type cannot be the owner of a nested type: " + this);
                    }

                    @Override // net.bytebuddy.pool.TypePool.Default.LazyTypeDescription.GenericTypeToken
                    public boolean isPrimaryBound(TypePool typePool) {
                        throw new IllegalStateException("A primitive type cannot be a type variable bound: " + this);
                    }

                    @Override // net.bytebuddy.pool.TypePool.Default.LazyTypeDescription.GenericTypeToken
                    public TypeDescription.Generic toGenericType(TypePool typePool, TypeVariableSource typeVariableSource, String str, Map<String, List<AnnotationToken>> map) {
                        return new LazyPrimitiveType(typePool, str, map, this.typeDescription);
                    }

                    /* renamed from: of */
                    public static GenericTypeToken m14799of(char c) {
                        if (c != 'F') {
                            if (c != 'S') {
                                if (c != 'V') {
                                    if (c != 'Z') {
                                        if (c != 'I') {
                                            if (c != 'J') {
                                                switch (c) {
                                                    case 'B':
                                                        return BYTE;
                                                    case 'C':
                                                        return CHAR;
                                                    case 'D':
                                                        return DOUBLE;
                                                    default:
                                                        throw new IllegalArgumentException("Not a valid primitive type descriptor: " + c);
                                                }
                                            }
                                            return LONG;
                                        }
                                        return INTEGER;
                                    }
                                    return BOOLEAN;
                                }
                                return VOID;
                            }
                            return SHORT;
                        }
                        return FLOAT;
                    }

                    ForPrimitiveType(Class cls) {
                        this.typeDescription = TypeDescription.ForLoadedType.m15196of(cls);
                    }
                }

                @HashCodeAndEqualsPlugin.Enhance
                /* loaded from: classes.dex */
                public static class ForRawType implements GenericTypeToken {
                    private final String name;

                    public boolean equals(@MaybeNull Object obj) {
                        if (this == obj) {
                            return true;
                        }
                        return obj != null && getClass() == obj.getClass() && this.name.equals(((ForRawType) obj).name);
                    }

                    @Override // net.bytebuddy.pool.TypePool.Default.LazyTypeDescription.GenericTypeToken
                    public String getTypePathPrefix() {
                        throw new IllegalStateException("A non-generic type cannot be the owner of a nested type: " + this);
                    }

                    public int hashCode() {
                        return (getClass().hashCode() * 31) + this.name.hashCode();
                    }

                    @Override // net.bytebuddy.pool.TypePool.Default.LazyTypeDescription.GenericTypeToken
                    public boolean isPrimaryBound(TypePool typePool) {
                        return !typePool.describe(this.name).resolve().isInterface();
                    }

                    @Override // net.bytebuddy.pool.TypePool.Default.LazyTypeDescription.GenericTypeToken
                    public TypeDescription.Generic toGenericType(TypePool typePool, TypeVariableSource typeVariableSource, String str, Map<String, List<AnnotationToken>> map) {
                        return new Resolution.Raw.RawAnnotatedType(typePool, str, map, typePool.describe(this.name).resolve());
                    }

                    public ForRawType(String str) {
                        this.name = str;
                    }
                }

                @HashCodeAndEqualsPlugin.Enhance
                /* loaded from: classes.dex */
                public static class ForTypeVariable implements GenericTypeToken {
                    private final String symbol;

                    @HashCodeAndEqualsPlugin.Enhance
                    /* loaded from: classes.dex */
                    public static class Formal implements OfFormalTypeVariable {
                        private final List<GenericTypeToken> boundTypeTokens;
                        private final String symbol;

                        public boolean equals(@MaybeNull Object obj) {
                            if (this == obj) {
                                return true;
                            }
                            if (obj != null && getClass() == obj.getClass()) {
                                Formal formal = (Formal) obj;
                                return this.symbol.equals(formal.symbol) && this.boundTypeTokens.equals(formal.boundTypeTokens);
                            }
                            return false;
                        }

                        public int hashCode() {
                            return (((getClass().hashCode() * 31) + this.symbol.hashCode()) * 31) + this.boundTypeTokens.hashCode();
                        }

                        /* loaded from: classes.dex */
                        public static class LazyTypeVariable extends TypeDescription.Generic.OfTypeVariable {
                            private final Map<String, List<AnnotationToken>> annotationTokens;
                            private final List<GenericTypeToken> boundTypeTokens;
                            private final Map<Integer, Map<String, List<AnnotationToken>>> boundaryAnnotationTokens;
                            private final String symbol;
                            private final TypePool typePool;
                            private final TypeVariableSource typeVariableSource;

                            /* loaded from: classes.dex */
                            public static class LazyBoundTokenList extends TypeList.Generic.AbstractBase {
                                private final Map<Integer, Map<String, List<AnnotationToken>>> annotationTokens;
                                private final List<GenericTypeToken> boundTypeTokens;
                                private final TypePool typePool;
                                private final TypeVariableSource typeVariableSource;

                                @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
                                public int size() {
                                    return this.boundTypeTokens.size();
                                }

                                @Override // java.util.AbstractList, java.util.List
                                public TypeDescription.Generic get(int i) {
                                    Map<String, List<AnnotationToken>> map;
                                    if (!this.annotationTokens.containsKey(Integer.valueOf(i)) && !this.annotationTokens.containsKey(Integer.valueOf(i + 1))) {
                                        map = Collections.emptyMap();
                                    } else {
                                        map = this.annotationTokens.get(Integer.valueOf((!this.boundTypeTokens.get(0).isPrimaryBound(this.typePool)) + i));
                                    }
                                    GenericTypeToken genericTypeToken = this.boundTypeTokens.get(i);
                                    TypePool typePool = this.typePool;
                                    TypeVariableSource typeVariableSource = this.typeVariableSource;
                                    if (map == null) {
                                        map = Collections.emptyMap();
                                    }
                                    return genericTypeToken.toGenericType(typePool, typeVariableSource, "", map);
                                }

                                public LazyBoundTokenList(TypePool typePool, TypeVariableSource typeVariableSource, Map<Integer, Map<String, List<AnnotationToken>>> map, List<GenericTypeToken> list) {
                                    this.typePool = typePool;
                                    this.typeVariableSource = typeVariableSource;
                                    this.annotationTokens = map;
                                    this.boundTypeTokens = list;
                                }
                            }

                            @Override // net.bytebuddy.description.annotation.AnnotationSource
                            public AnnotationList getDeclaredAnnotations() {
                                return LazyAnnotationDescription.asListOfNullable(this.typePool, this.annotationTokens.get(""));
                            }

                            @Override // net.bytebuddy.description.type.TypeDescription.Generic
                            public String getSymbol() {
                                return this.symbol;
                            }

                            @Override // net.bytebuddy.description.type.TypeDescription.Generic
                            public TypeVariableSource getTypeVariableSource() {
                                return this.typeVariableSource;
                            }

                            @Override // net.bytebuddy.description.type.TypeDescription.Generic
                            public TypeList.Generic getUpperBounds() {
                                return new LazyBoundTokenList(this.typePool, this.typeVariableSource, this.boundaryAnnotationTokens, this.boundTypeTokens);
                            }

                            public LazyTypeVariable(TypePool typePool, TypeVariableSource typeVariableSource, Map<String, List<AnnotationToken>> map, Map<Integer, Map<String, List<AnnotationToken>>> map2, String str, List<GenericTypeToken> list) {
                                this.typePool = typePool;
                                this.typeVariableSource = typeVariableSource;
                                this.annotationTokens = map;
                                this.boundaryAnnotationTokens = map2;
                                this.symbol = str;
                                this.boundTypeTokens = list;
                            }
                        }

                        @Override // net.bytebuddy.pool.TypePool.Default.LazyTypeDescription.GenericTypeToken.OfFormalTypeVariable
                        public TypeDescription.Generic toGenericType(TypePool typePool, TypeVariableSource typeVariableSource, @MaybeNull Map<String, List<AnnotationToken>> map, @MaybeNull Map<Integer, Map<String, List<AnnotationToken>>> map2) {
                            if (map == null) {
                                map = Collections.emptyMap();
                            }
                            Map<String, List<AnnotationToken>> map3 = map;
                            if (map2 == null) {
                                map2 = Collections.emptyMap();
                            }
                            return new LazyTypeVariable(typePool, typeVariableSource, map3, map2, this.symbol, this.boundTypeTokens);
                        }

                        public Formal(String str, List<GenericTypeToken> list) {
                            this.symbol = str;
                            this.boundTypeTokens = list;
                        }
                    }

                    public boolean equals(@MaybeNull Object obj) {
                        if (this == obj) {
                            return true;
                        }
                        return obj != null && getClass() == obj.getClass() && this.symbol.equals(((ForTypeVariable) obj).symbol);
                    }

                    @Override // net.bytebuddy.pool.TypePool.Default.LazyTypeDescription.GenericTypeToken
                    public String getTypePathPrefix() {
                        throw new IllegalStateException("A type variable cannot be the owner of a nested type: " + this);
                    }

                    public int hashCode() {
                        return (getClass().hashCode() * 31) + this.symbol.hashCode();
                    }

                    @Override // net.bytebuddy.pool.TypePool.Default.LazyTypeDescription.GenericTypeToken
                    public boolean isPrimaryBound(TypePool typePool) {
                        return true;
                    }

                    /* loaded from: classes.dex */
                    public static class AnnotatedTypeVariable extends TypeDescription.Generic.OfTypeVariable {
                        private final List<AnnotationToken> annotationTokens;
                        private final TypePool typePool;
                        private final TypeDescription.Generic typeVariable;

                        @Override // net.bytebuddy.description.annotation.AnnotationSource
                        public AnnotationList getDeclaredAnnotations() {
                            return LazyAnnotationDescription.asListOfNullable(this.typePool, this.annotationTokens);
                        }

                        @Override // net.bytebuddy.description.type.TypeDescription.Generic
                        public String getSymbol() {
                            return this.typeVariable.getSymbol();
                        }

                        @Override // net.bytebuddy.description.type.TypeDescription.Generic
                        public TypeVariableSource getTypeVariableSource() {
                            return this.typeVariable.getTypeVariableSource();
                        }

                        @Override // net.bytebuddy.description.type.TypeDescription.Generic
                        public TypeList.Generic getUpperBounds() {
                            return this.typeVariable.getUpperBounds();
                        }

                        public AnnotatedTypeVariable(TypePool typePool, List<AnnotationToken> list, TypeDescription.Generic generic) {
                            this.typePool = typePool;
                            this.annotationTokens = list;
                            this.typeVariable = generic;
                        }
                    }

                    /* loaded from: classes.dex */
                    public static class UnresolvedTypeVariable extends TypeDescription.Generic.OfTypeVariable {
                        private final List<AnnotationToken> annotationTokens;
                        private final String symbol;
                        private final TypePool typePool;
                        private final TypeVariableSource typeVariableSource;

                        @Override // net.bytebuddy.description.annotation.AnnotationSource
                        public AnnotationList getDeclaredAnnotations() {
                            return LazyAnnotationDescription.asListOfNullable(this.typePool, this.annotationTokens);
                        }

                        @Override // net.bytebuddy.description.type.TypeDescription.Generic
                        public String getSymbol() {
                            return this.symbol;
                        }

                        @Override // net.bytebuddy.description.type.TypeDescription.Generic
                        public TypeVariableSource getTypeVariableSource() {
                            return this.typeVariableSource;
                        }

                        @Override // net.bytebuddy.description.type.TypeDescription.Generic
                        public TypeList.Generic getUpperBounds() {
                            throw new IllegalStateException("Cannot resolve bounds of unresolved type variable " + this + " by " + this.typeVariableSource);
                        }

                        public UnresolvedTypeVariable(TypeVariableSource typeVariableSource, TypePool typePool, String str, List<AnnotationToken> list) {
                            this.typeVariableSource = typeVariableSource;
                            this.typePool = typePool;
                            this.symbol = str;
                            this.annotationTokens = list;
                        }
                    }

                    @Override // net.bytebuddy.pool.TypePool.Default.LazyTypeDescription.GenericTypeToken
                    public TypeDescription.Generic toGenericType(TypePool typePool, TypeVariableSource typeVariableSource, String str, Map<String, List<AnnotationToken>> map) {
                        TypeDescription.Generic findVariable = typeVariableSource.findVariable(this.symbol);
                        if (findVariable == null) {
                            return new UnresolvedTypeVariable(typeVariableSource, typePool, this.symbol, map.get(str));
                        }
                        return new AnnotatedTypeVariable(typePool, map.get(str), findVariable);
                    }

                    public ForTypeVariable(String str) {
                        this.symbol = str;
                    }
                }

                /* loaded from: classes.dex */
                public enum ForUnboundWildcard implements GenericTypeToken {
                    INSTANCE;

                    @Override // net.bytebuddy.pool.TypePool.Default.LazyTypeDescription.GenericTypeToken
                    public String getTypePathPrefix() {
                        throw new IllegalStateException("An unbound wildcard cannot be the owner of a nested type: " + this);
                    }

                    @Override // net.bytebuddy.pool.TypePool.Default.LazyTypeDescription.GenericTypeToken
                    public boolean isPrimaryBound(TypePool typePool) {
                        throw new IllegalStateException("A wildcard type cannot be a type variable bound: " + this);
                    }

                    /* loaded from: classes.dex */
                    public static class LazyUnboundWildcard extends TypeDescription.Generic.OfWildcardType {
                        private final Map<String, List<AnnotationToken>> annotationTokens;
                        private final String typePath;
                        private final TypePool typePool;

                        @Override // net.bytebuddy.description.annotation.AnnotationSource
                        public AnnotationList getDeclaredAnnotations() {
                            return LazyAnnotationDescription.asListOfNullable(this.typePool, this.annotationTokens.get(this.typePath));
                        }

                        @Override // net.bytebuddy.description.type.TypeDescription.Generic
                        public TypeList.Generic getLowerBounds() {
                            return new TypeList.Generic.Empty();
                        }

                        @Override // net.bytebuddy.description.type.TypeDescription.Generic
                        public TypeList.Generic getUpperBounds() {
                            return new TypeList.Generic.Explicit(TypeDescription.Generic.OBJECT);
                        }

                        public LazyUnboundWildcard(TypePool typePool, String str, Map<String, List<AnnotationToken>> map) {
                            this.typePool = typePool;
                            this.typePath = str;
                            this.annotationTokens = map;
                        }
                    }

                    @Override // net.bytebuddy.pool.TypePool.Default.LazyTypeDescription.GenericTypeToken
                    public TypeDescription.Generic toGenericType(TypePool typePool, TypeVariableSource typeVariableSource, String str, @MaybeNull Map<String, List<AnnotationToken>> map) {
                        if (map == null) {
                            map = Collections.emptyMap();
                        }
                        return new LazyUnboundWildcard(typePool, str, map);
                    }
                }

                @HashCodeAndEqualsPlugin.Enhance
                /* loaded from: classes.dex */
                public static class ForUpperBoundWildcard implements GenericTypeToken {
                    private final GenericTypeToken boundTypeToken;

                    public boolean equals(@MaybeNull Object obj) {
                        if (this == obj) {
                            return true;
                        }
                        return obj != null && getClass() == obj.getClass() && this.boundTypeToken.equals(((ForUpperBoundWildcard) obj).boundTypeToken);
                    }

                    @Override // net.bytebuddy.pool.TypePool.Default.LazyTypeDescription.GenericTypeToken
                    public String getTypePathPrefix() {
                        throw new IllegalStateException("An upper bound wildcard cannot be the owner of a nested type: " + this);
                    }

                    public int hashCode() {
                        return (getClass().hashCode() * 31) + this.boundTypeToken.hashCode();
                    }

                    @Override // net.bytebuddy.pool.TypePool.Default.LazyTypeDescription.GenericTypeToken
                    public boolean isPrimaryBound(TypePool typePool) {
                        throw new IllegalStateException("A wildcard type cannot be a type variable bound: " + this);
                    }

                    @Override // net.bytebuddy.pool.TypePool.Default.LazyTypeDescription.GenericTypeToken
                    public TypeDescription.Generic toGenericType(TypePool typePool, TypeVariableSource typeVariableSource, String str, Map<String, List<AnnotationToken>> map) {
                        return new LazyUpperBoundWildcard(typePool, typeVariableSource, str, map, this.boundTypeToken);
                    }

                    /* loaded from: classes.dex */
                    public static class LazyUpperBoundWildcard extends TypeDescription.Generic.OfWildcardType {
                        private final Map<String, List<AnnotationToken>> annotationTokens;
                        private final GenericTypeToken boundTypeToken;
                        private final String typePath;
                        private final TypePool typePool;
                        private final TypeVariableSource typeVariableSource;

                        @Override // net.bytebuddy.description.annotation.AnnotationSource
                        public AnnotationList getDeclaredAnnotations() {
                            return LazyAnnotationDescription.asListOfNullable(this.typePool, this.annotationTokens.get(this.typePath));
                        }

                        @Override // net.bytebuddy.description.type.TypeDescription.Generic
                        public TypeList.Generic getLowerBounds() {
                            return new TypeList.Generic.Empty();
                        }

                        @Override // net.bytebuddy.description.type.TypeDescription.Generic
                        public TypeList.Generic getUpperBounds() {
                            return new LazyTokenList.ForWildcardBound(this.typePool, this.typeVariableSource, this.typePath, this.annotationTokens, this.boundTypeToken);
                        }

                        public LazyUpperBoundWildcard(TypePool typePool, TypeVariableSource typeVariableSource, String str, Map<String, List<AnnotationToken>> map, GenericTypeToken genericTypeToken) {
                            this.typePool = typePool;
                            this.typeVariableSource = typeVariableSource;
                            this.typePath = str;
                            this.annotationTokens = map;
                            this.boundTypeToken = genericTypeToken;
                        }
                    }

                    public ForUpperBoundWildcard(GenericTypeToken genericTypeToken) {
                        this.boundTypeToken = genericTypeToken;
                    }
                }

                /* loaded from: classes.dex */
                public static class LazyTokenList extends TypeList.Generic.AbstractBase {
                    private final Map<String, List<AnnotationToken>> annotationTokens;
                    private final List<GenericTypeToken> genericTypeTokens;
                    private final String typePath;
                    private final TypePool typePool;
                    private final TypeVariableSource typeVariableSource;

                    /* loaded from: classes.dex */
                    public static class ForWildcardBound extends TypeList.Generic.AbstractBase {
                        private final Map<String, List<AnnotationToken>> annotationTokens;
                        private final GenericTypeToken genericTypeToken;
                        private final String typePath;
                        private final TypePool typePool;
                        private final TypeVariableSource typeVariableSource;

                        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
                        public int size() {
                            return 1;
                        }

                        @Override // java.util.AbstractList, java.util.List
                        public TypeDescription.Generic get(int i) {
                            if (i == 0) {
                                GenericTypeToken genericTypeToken = this.genericTypeToken;
                                TypePool typePool = this.typePool;
                                TypeVariableSource typeVariableSource = this.typeVariableSource;
                                return genericTypeToken.toGenericType(typePool, typeVariableSource, this.typePath + GenericTypeToken.WILDCARD_TYPE_PATH, this.annotationTokens);
                            }
                            throw new IndexOutOfBoundsException("index = " + i);
                        }

                        public ForWildcardBound(TypePool typePool, TypeVariableSource typeVariableSource, String str, Map<String, List<AnnotationToken>> map, GenericTypeToken genericTypeToken) {
                            this.typePool = typePool;
                            this.typeVariableSource = typeVariableSource;
                            this.typePath = str;
                            this.annotationTokens = map;
                            this.genericTypeToken = genericTypeToken;
                        }
                    }

                    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
                    public int size() {
                        return this.genericTypeTokens.size();
                    }

                    @Override // java.util.AbstractList, java.util.List
                    public TypeDescription.Generic get(int i) {
                        TypePool typePool = this.typePool;
                        TypeVariableSource typeVariableSource = this.typeVariableSource;
                        return this.genericTypeTokens.get(i).toGenericType(typePool, typeVariableSource, this.typePath + i + GenericTypeToken.INDEXED_TYPE_DELIMITER, this.annotationTokens);
                    }

                    public LazyTokenList(TypePool typePool, TypeVariableSource typeVariableSource, String str, Map<String, List<AnnotationToken>> map, List<GenericTypeToken> list) {
                        this.typePool = typePool;
                        this.typeVariableSource = typeVariableSource;
                        this.typePath = str;
                        this.annotationTokens = map;
                        this.genericTypeTokens = list;
                    }
                }

                /* loaded from: classes.dex */
                public interface OfFormalTypeVariable {
                    TypeDescription.Generic toGenericType(TypePool typePool, TypeVariableSource typeVariableSource, Map<String, List<AnnotationToken>> map, Map<Integer, Map<String, List<AnnotationToken>>> map2);
                }

                /* loaded from: classes.dex */
                public interface Resolution {

                    /* loaded from: classes.dex */
                    public interface ForField {

                        @HashCodeAndEqualsPlugin.Enhance
                        /* loaded from: classes.dex */
                        public static class Tokenized implements ForField {
                            private final GenericTypeToken fieldTypeToken;

                            public boolean equals(@MaybeNull Object obj) {
                                if (this == obj) {
                                    return true;
                                }
                                return obj != null && getClass() == obj.getClass() && this.fieldTypeToken.equals(((Tokenized) obj).fieldTypeToken);
                            }

                            public int hashCode() {
                                return (getClass().hashCode() * 31) + this.fieldTypeToken.hashCode();
                            }

                            @Override // net.bytebuddy.pool.TypePool.Default.LazyTypeDescription.GenericTypeToken.Resolution.ForField
                            public TypeDescription.Generic resolveFieldType(String str, TypePool typePool, Map<String, List<AnnotationToken>> map, FieldDescription.InDefinedShape inDefinedShape) {
                                return TokenizedGenericType.m14786of(typePool, this.fieldTypeToken, str, map, inDefinedShape.getDeclaringType());
                            }

                            public Tokenized(GenericTypeToken genericTypeToken) {
                                this.fieldTypeToken = genericTypeToken;
                            }
                        }

                        TypeDescription.Generic resolveFieldType(String str, TypePool typePool, Map<String, List<AnnotationToken>> map, FieldDescription.InDefinedShape inDefinedShape);
                    }

                    /* loaded from: classes.dex */
                    public interface ForMethod extends Resolution {

                        @HashCodeAndEqualsPlugin.Enhance
                        /* loaded from: classes.dex */
                        public static class Tokenized implements ForMethod {
                            private final List<GenericTypeToken> exceptionTypeTokens;
                            private final List<GenericTypeToken> parameterTypeTokens;
                            private final GenericTypeToken returnTypeToken;
                            private final List<OfFormalTypeVariable> typeVariableTokens;

                            public boolean equals(@MaybeNull Object obj) {
                                if (this == obj) {
                                    return true;
                                }
                                if (obj != null && getClass() == obj.getClass()) {
                                    Tokenized tokenized = (Tokenized) obj;
                                    return this.returnTypeToken.equals(tokenized.returnTypeToken) && this.parameterTypeTokens.equals(tokenized.parameterTypeTokens) && this.exceptionTypeTokens.equals(tokenized.exceptionTypeTokens) && this.typeVariableTokens.equals(tokenized.typeVariableTokens);
                                }
                                return false;
                            }

                            public int hashCode() {
                                return (((((((getClass().hashCode() * 31) + this.returnTypeToken.hashCode()) * 31) + this.parameterTypeTokens.hashCode()) * 31) + this.exceptionTypeTokens.hashCode()) * 31) + this.typeVariableTokens.hashCode();
                            }

                            @Override // net.bytebuddy.pool.TypePool.Default.LazyTypeDescription.GenericTypeToken.Resolution.ForMethod
                            public TypeList.Generic resolveParameterTypes(List<String> list, TypePool typePool, Map<Integer, Map<String, List<AnnotationToken>>> map, MethodDescription.InDefinedShape inDefinedShape) {
                                return new TokenizedGenericType.TokenList(typePool, this.parameterTypeTokens, map, list, inDefinedShape);
                            }

                            @Override // net.bytebuddy.pool.TypePool.Default.LazyTypeDescription.GenericTypeToken.Resolution.ForMethod
                            public TypeDescription.Generic resolveReturnType(String str, TypePool typePool, Map<String, List<AnnotationToken>> map, MethodDescription.InDefinedShape inDefinedShape) {
                                return TokenizedGenericType.m14786of(typePool, this.returnTypeToken, str, map, inDefinedShape);
                            }

                            @Override // net.bytebuddy.pool.TypePool.Default.LazyTypeDescription.GenericTypeToken.Resolution
                            public TypeList.Generic resolveTypeVariables(TypePool typePool, TypeVariableSource typeVariableSource, Map<Integer, Map<String, List<AnnotationToken>>> map, Map<Integer, Map<Integer, Map<String, List<AnnotationToken>>>> map2) {
                                return new TokenizedGenericType.TypeVariableList(typePool, this.typeVariableTokens, typeVariableSource, map, map2);
                            }

                            @Override // net.bytebuddy.pool.TypePool.Default.LazyTypeDescription.GenericTypeToken.Resolution.ForMethod
                            public TypeList.Generic resolveExceptionTypes(List<String> list, TypePool typePool, Map<Integer, Map<String, List<AnnotationToken>>> map, MethodDescription.InDefinedShape inDefinedShape) {
                                if (this.exceptionTypeTokens.isEmpty()) {
                                    return Raw.INSTANCE.resolveExceptionTypes(list, typePool, map, inDefinedShape);
                                }
                                return new TokenizedGenericType.TokenList(typePool, this.exceptionTypeTokens, map, list, inDefinedShape);
                            }

                            public Tokenized(GenericTypeToken genericTypeToken, List<GenericTypeToken> list, List<GenericTypeToken> list2, List<OfFormalTypeVariable> list3) {
                                this.returnTypeToken = genericTypeToken;
                                this.parameterTypeTokens = list;
                                this.exceptionTypeTokens = list2;
                                this.typeVariableTokens = list3;
                            }
                        }

                        TypeList.Generic resolveExceptionTypes(List<String> list, TypePool typePool, Map<Integer, Map<String, List<AnnotationToken>>> map, MethodDescription.InDefinedShape inDefinedShape);

                        TypeList.Generic resolveParameterTypes(List<String> list, TypePool typePool, Map<Integer, Map<String, List<AnnotationToken>>> map, MethodDescription.InDefinedShape inDefinedShape);

                        TypeDescription.Generic resolveReturnType(String str, TypePool typePool, Map<String, List<AnnotationToken>> map, MethodDescription.InDefinedShape inDefinedShape);
                    }

                    /* loaded from: classes.dex */
                    public interface ForRecordComponent {

                        @HashCodeAndEqualsPlugin.Enhance
                        /* loaded from: classes.dex */
                        public static class Tokenized implements ForRecordComponent {
                            private final GenericTypeToken recordComponentTypeToken;

                            public boolean equals(@MaybeNull Object obj) {
                                if (this == obj) {
                                    return true;
                                }
                                return obj != null && getClass() == obj.getClass() && this.recordComponentTypeToken.equals(((Tokenized) obj).recordComponentTypeToken);
                            }

                            public int hashCode() {
                                return (getClass().hashCode() * 31) + this.recordComponentTypeToken.hashCode();
                            }

                            @Override // net.bytebuddy.pool.TypePool.Default.LazyTypeDescription.GenericTypeToken.Resolution.ForRecordComponent
                            public TypeDescription.Generic resolveRecordType(String str, TypePool typePool, Map<String, List<AnnotationToken>> map, RecordComponentDescription.InDefinedShape inDefinedShape) {
                                return TokenizedGenericType.m14786of(typePool, this.recordComponentTypeToken, str, map, inDefinedShape.getDeclaringType());
                            }

                            public Tokenized(GenericTypeToken genericTypeToken) {
                                this.recordComponentTypeToken = genericTypeToken;
                            }
                        }

                        TypeDescription.Generic resolveRecordType(String str, TypePool typePool, Map<String, List<AnnotationToken>> map, RecordComponentDescription.InDefinedShape inDefinedShape);
                    }

                    /* loaded from: classes.dex */
                    public interface ForType extends Resolution {
                        TypeList.Generic resolveInterfaceTypes(List<String> list, TypePool typePool, Map<Integer, Map<String, List<AnnotationToken>>> map, TypeDescription typeDescription);

                        TypeDescription.Generic resolveSuperClass(String str, TypePool typePool, Map<String, List<AnnotationToken>> map, TypeDescription typeDescription);

                        @HashCodeAndEqualsPlugin.Enhance
                        /* loaded from: classes.dex */
                        public static class Tokenized implements ForType {
                            private final List<GenericTypeToken> interfaceTypeTokens;
                            private final GenericTypeToken superClassToken;
                            private final List<OfFormalTypeVariable> typeVariableTokens;

                            public boolean equals(@MaybeNull Object obj) {
                                if (this == obj) {
                                    return true;
                                }
                                if (obj != null && getClass() == obj.getClass()) {
                                    Tokenized tokenized = (Tokenized) obj;
                                    return this.superClassToken.equals(tokenized.superClassToken) && this.interfaceTypeTokens.equals(tokenized.interfaceTypeTokens) && this.typeVariableTokens.equals(tokenized.typeVariableTokens);
                                }
                                return false;
                            }

                            public int hashCode() {
                                return (((((getClass().hashCode() * 31) + this.superClassToken.hashCode()) * 31) + this.interfaceTypeTokens.hashCode()) * 31) + this.typeVariableTokens.hashCode();
                            }

                            @Override // net.bytebuddy.pool.TypePool.Default.LazyTypeDescription.GenericTypeToken.Resolution.ForType
                            public TypeList.Generic resolveInterfaceTypes(List<String> list, TypePool typePool, Map<Integer, Map<String, List<AnnotationToken>>> map, TypeDescription typeDescription) {
                                return new TokenizedGenericType.TokenList(typePool, this.interfaceTypeTokens, map, list, typeDescription);
                            }

                            @Override // net.bytebuddy.pool.TypePool.Default.LazyTypeDescription.GenericTypeToken.Resolution.ForType
                            public TypeDescription.Generic resolveSuperClass(String str, TypePool typePool, Map<String, List<AnnotationToken>> map, TypeDescription typeDescription) {
                                return TokenizedGenericType.m14786of(typePool, this.superClassToken, str, map, typeDescription);
                            }

                            @Override // net.bytebuddy.pool.TypePool.Default.LazyTypeDescription.GenericTypeToken.Resolution
                            public TypeList.Generic resolveTypeVariables(TypePool typePool, TypeVariableSource typeVariableSource, Map<Integer, Map<String, List<AnnotationToken>>> map, Map<Integer, Map<Integer, Map<String, List<AnnotationToken>>>> map2) {
                                return new TokenizedGenericType.TypeVariableList(typePool, this.typeVariableTokens, typeVariableSource, map, map2);
                            }

                            public Tokenized(GenericTypeToken genericTypeToken, List<GenericTypeToken> list, List<OfFormalTypeVariable> list2) {
                                this.superClassToken = genericTypeToken;
                                this.interfaceTypeTokens = list;
                                this.typeVariableTokens = list2;
                            }
                        }
                    }

                    /* loaded from: classes.dex */
                    public enum Malformed implements ForType, ForField, ForMethod, ForRecordComponent {
                        INSTANCE;

                        @Override // net.bytebuddy.pool.TypePool.Default.LazyTypeDescription.GenericTypeToken.Resolution.ForMethod
                        public TypeList.Generic resolveExceptionTypes(List<String> list, TypePool typePool, Map<Integer, Map<String, List<AnnotationToken>>> map, MethodDescription.InDefinedShape inDefinedShape) {
                            return new TokenizedGenericType.Malformed.TokenList(typePool, list);
                        }

                        @Override // net.bytebuddy.pool.TypePool.Default.LazyTypeDescription.GenericTypeToken.Resolution.ForField
                        public TypeDescription.Generic resolveFieldType(String str, TypePool typePool, Map<String, List<AnnotationToken>> map, FieldDescription.InDefinedShape inDefinedShape) {
                            return new TokenizedGenericType.Malformed(typePool, str);
                        }

                        @Override // net.bytebuddy.pool.TypePool.Default.LazyTypeDescription.GenericTypeToken.Resolution.ForType
                        public TypeList.Generic resolveInterfaceTypes(List<String> list, TypePool typePool, Map<Integer, Map<String, List<AnnotationToken>>> map, TypeDescription typeDescription) {
                            return new TokenizedGenericType.Malformed.TokenList(typePool, list);
                        }

                        @Override // net.bytebuddy.pool.TypePool.Default.LazyTypeDescription.GenericTypeToken.Resolution.ForMethod
                        public TypeList.Generic resolveParameterTypes(List<String> list, TypePool typePool, Map<Integer, Map<String, List<AnnotationToken>>> map, MethodDescription.InDefinedShape inDefinedShape) {
                            return new TokenizedGenericType.Malformed.TokenList(typePool, list);
                        }

                        @Override // net.bytebuddy.pool.TypePool.Default.LazyTypeDescription.GenericTypeToken.Resolution.ForRecordComponent
                        public TypeDescription.Generic resolveRecordType(String str, TypePool typePool, Map<String, List<AnnotationToken>> map, RecordComponentDescription.InDefinedShape inDefinedShape) {
                            return new TokenizedGenericType.Malformed(typePool, str);
                        }

                        @Override // net.bytebuddy.pool.TypePool.Default.LazyTypeDescription.GenericTypeToken.Resolution.ForMethod
                        public TypeDescription.Generic resolveReturnType(String str, TypePool typePool, Map<String, List<AnnotationToken>> map, MethodDescription.InDefinedShape inDefinedShape) {
                            return new TokenizedGenericType.Malformed(typePool, str);
                        }

                        @Override // net.bytebuddy.pool.TypePool.Default.LazyTypeDescription.GenericTypeToken.Resolution.ForType
                        public TypeDescription.Generic resolveSuperClass(String str, TypePool typePool, Map<String, List<AnnotationToken>> map, TypeDescription typeDescription) {
                            return new TokenizedGenericType.Malformed(typePool, str);
                        }

                        @Override // net.bytebuddy.pool.TypePool.Default.LazyTypeDescription.GenericTypeToken.Resolution
                        public TypeList.Generic resolveTypeVariables(TypePool typePool, TypeVariableSource typeVariableSource, Map<Integer, Map<String, List<AnnotationToken>>> map, Map<Integer, Map<Integer, Map<String, List<AnnotationToken>>>> map2) {
                            throw new GenericSignatureFormatError();
                        }
                    }

                    /* loaded from: classes.dex */
                    public enum Raw implements ForType, ForField, ForMethod, ForRecordComponent {
                        INSTANCE;

                        /* loaded from: classes.dex */
                        public static class RawAnnotatedType extends TypeDescription.Generic.OfNonGenericType {
                            private final Map<String, List<AnnotationToken>> annotationTokens;
                            private final TypeDescription typeDescription;
                            private final String typePath;
                            private final TypePool typePool;

                            /* loaded from: classes.dex */
                            public static class LazyRawAnnotatedTypeList extends TypeList.Generic.AbstractBase {
                                private final Map<Integer, Map<String, List<AnnotationToken>>> annotationTokens;
                                private final List<String> descriptors;
                                private final TypePool typePool;

                                @Override // net.bytebuddy.description.type.TypeList.Generic.AbstractBase, net.bytebuddy.description.type.TypeList.Generic
                                public TypeList asErasures() {
                                    return new LazyTypeList(this.typePool, this.descriptors);
                                }

                                @Override // net.bytebuddy.description.type.TypeList.Generic.AbstractBase, net.bytebuddy.description.type.TypeList.Generic
                                public TypeList.Generic asRawTypes() {
                                    return this;
                                }

                                @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
                                public int size() {
                                    return this.descriptors.size();
                                }

                                /* renamed from: of */
                                public static TypeList.Generic m14797of(TypePool typePool, @MaybeNull Map<Integer, Map<String, List<AnnotationToken>>> map, List<String> list) {
                                    if (map == null) {
                                        map = Collections.emptyMap();
                                    }
                                    return new LazyRawAnnotatedTypeList(typePool, map, list);
                                }

                                @Override // java.util.AbstractList, java.util.List
                                public TypeDescription.Generic get(int i) {
                                    return RawAnnotatedType.m14798of(this.typePool, this.annotationTokens.get(Integer.valueOf(i)), this.descriptors.get(i));
                                }

                                @Override // net.bytebuddy.description.type.TypeList.Generic.AbstractBase, net.bytebuddy.description.type.TypeList.Generic
                                public int getStackSize() {
                                    int i = 0;
                                    for (String str : this.descriptors) {
                                        i += Type.getType(str).getSize();
                                    }
                                    return i;
                                }

                                public LazyRawAnnotatedTypeList(TypePool typePool, Map<Integer, Map<String, List<AnnotationToken>>> map, List<String> list) {
                                    this.typePool = typePool;
                                    this.annotationTokens = map;
                                    this.descriptors = list;
                                }
                            }

                            @Override // net.bytebuddy.description.type.TypeDefinition
                            public TypeDescription asErasure() {
                                return this.typeDescription;
                            }

                            /* renamed from: of */
                            public static TypeDescription.Generic m14798of(TypePool typePool, @MaybeNull Map<String, List<AnnotationToken>> map, String str) {
                                if (map == null) {
                                    map = Collections.emptyMap();
                                }
                                return new RawAnnotatedType(typePool, "", map, TokenizedGenericType.toErasure(typePool, str));
                            }

                            @Override // net.bytebuddy.description.type.TypeDescription.Generic, net.bytebuddy.description.type.TypeDefinition
                            @MaybeNull
                            public TypeDescription.Generic getComponentType() {
                                TypeDescription componentType = this.typeDescription.getComponentType();
                                if (componentType == null) {
                                    return TypeDescription.Generic.UNDEFINED;
                                }
                                TypePool typePool = this.typePool;
                                return new RawAnnotatedType(typePool, this.typePath + GenericTypeToken.COMPONENT_TYPE_PATH, this.annotationTokens, componentType);
                            }

                            @Override // net.bytebuddy.description.annotation.AnnotationSource
                            public AnnotationList getDeclaredAnnotations() {
                                StringBuilder sb = new StringBuilder(this.typePath);
                                for (int i = 0; i < this.typeDescription.getInnerClassCount(); i++) {
                                    sb.append(GenericTypeToken.INNER_CLASS_PATH);
                                }
                                return LazyAnnotationDescription.asListOfNullable(this.typePool, this.annotationTokens.get(sb.toString()));
                            }

                            @Override // net.bytebuddy.description.type.TypeDescription.Generic
                            @MaybeNull
                            public TypeDescription.Generic getOwnerType() {
                                TypeDescription declaringType = this.typeDescription.getDeclaringType();
                                if (declaringType == null) {
                                    return TypeDescription.Generic.UNDEFINED;
                                }
                                return new RawAnnotatedType(this.typePool, this.typePath, this.annotationTokens, declaringType);
                            }

                            public RawAnnotatedType(TypePool typePool, String str, Map<String, List<AnnotationToken>> map, TypeDescription typeDescription) {
                                this.typePool = typePool;
                                this.typePath = str;
                                this.annotationTokens = map;
                                this.typeDescription = typeDescription;
                            }
                        }

                        @Override // net.bytebuddy.pool.TypePool.Default.LazyTypeDescription.GenericTypeToken.Resolution.ForMethod
                        public TypeList.Generic resolveExceptionTypes(List<String> list, TypePool typePool, Map<Integer, Map<String, List<AnnotationToken>>> map, MethodDescription.InDefinedShape inDefinedShape) {
                            return RawAnnotatedType.LazyRawAnnotatedTypeList.m14797of(typePool, map, list);
                        }

                        @Override // net.bytebuddy.pool.TypePool.Default.LazyTypeDescription.GenericTypeToken.Resolution.ForField
                        public TypeDescription.Generic resolveFieldType(String str, TypePool typePool, Map<String, List<AnnotationToken>> map, FieldDescription.InDefinedShape inDefinedShape) {
                            return RawAnnotatedType.m14798of(typePool, map, str);
                        }

                        @Override // net.bytebuddy.pool.TypePool.Default.LazyTypeDescription.GenericTypeToken.Resolution.ForType
                        public TypeList.Generic resolveInterfaceTypes(List<String> list, TypePool typePool, Map<Integer, Map<String, List<AnnotationToken>>> map, TypeDescription typeDescription) {
                            return RawAnnotatedType.LazyRawAnnotatedTypeList.m14797of(typePool, map, list);
                        }

                        @Override // net.bytebuddy.pool.TypePool.Default.LazyTypeDescription.GenericTypeToken.Resolution.ForMethod
                        public TypeList.Generic resolveParameterTypes(List<String> list, TypePool typePool, Map<Integer, Map<String, List<AnnotationToken>>> map, MethodDescription.InDefinedShape inDefinedShape) {
                            return RawAnnotatedType.LazyRawAnnotatedTypeList.m14797of(typePool, map, list);
                        }

                        @Override // net.bytebuddy.pool.TypePool.Default.LazyTypeDescription.GenericTypeToken.Resolution.ForRecordComponent
                        public TypeDescription.Generic resolveRecordType(String str, TypePool typePool, Map<String, List<AnnotationToken>> map, RecordComponentDescription.InDefinedShape inDefinedShape) {
                            return RawAnnotatedType.m14798of(typePool, map, str);
                        }

                        @Override // net.bytebuddy.pool.TypePool.Default.LazyTypeDescription.GenericTypeToken.Resolution.ForMethod
                        public TypeDescription.Generic resolveReturnType(String str, TypePool typePool, Map<String, List<AnnotationToken>> map, MethodDescription.InDefinedShape inDefinedShape) {
                            return RawAnnotatedType.m14798of(typePool, map, str);
                        }

                        @Override // net.bytebuddy.pool.TypePool.Default.LazyTypeDescription.GenericTypeToken.Resolution.ForType
                        public TypeDescription.Generic resolveSuperClass(String str, TypePool typePool, Map<String, List<AnnotationToken>> map, TypeDescription typeDescription) {
                            return RawAnnotatedType.m14798of(typePool, map, str);
                        }

                        @Override // net.bytebuddy.pool.TypePool.Default.LazyTypeDescription.GenericTypeToken.Resolution
                        public TypeList.Generic resolveTypeVariables(TypePool typePool, TypeVariableSource typeVariableSource, Map<Integer, Map<String, List<AnnotationToken>>> map, Map<Integer, Map<Integer, Map<String, List<AnnotationToken>>>> map2) {
                            return new TypeList.Generic.Empty();
                        }
                    }

                    TypeList.Generic resolveTypeVariables(TypePool typePool, TypeVariableSource typeVariableSource, Map<Integer, Map<String, List<AnnotationToken>>> map, Map<Integer, Map<Integer, Map<String, List<AnnotationToken>>>> map2);
                }

                String getTypePathPrefix();

                boolean isPrimaryBound(TypePool typePool);

                TypeDescription.Generic toGenericType(TypePool typePool, TypeVariableSource typeVariableSource, String str, Map<String, List<AnnotationToken>> map);

                @HashCodeAndEqualsPlugin.Enhance
                /* loaded from: classes.dex */
                public static class ForGenericArray implements GenericTypeToken {
                    private final GenericTypeToken componentTypeToken;

                    /* loaded from: classes.dex */
                    public static class LazyGenericArray extends TypeDescription.Generic.OfGenericArray {
                        private final Map<String, List<AnnotationToken>> annotationTokens;
                        private final GenericTypeToken componentTypeToken;
                        private final String typePath;
                        private final TypePool typePool;
                        private final TypeVariableSource typeVariableSource;

                        @Override // net.bytebuddy.description.annotation.AnnotationSource
                        public AnnotationList getDeclaredAnnotations() {
                            return LazyAnnotationDescription.asListOfNullable(this.typePool, this.annotationTokens.get(this.typePath));
                        }

                        @Override // net.bytebuddy.description.type.TypeDescription.Generic, net.bytebuddy.description.type.TypeDefinition
                        public TypeDescription.Generic getComponentType() {
                            GenericTypeToken genericTypeToken = this.componentTypeToken;
                            TypePool typePool = this.typePool;
                            TypeVariableSource typeVariableSource = this.typeVariableSource;
                            return genericTypeToken.toGenericType(typePool, typeVariableSource, this.typePath + GenericTypeToken.COMPONENT_TYPE_PATH, this.annotationTokens);
                        }

                        public LazyGenericArray(TypePool typePool, TypeVariableSource typeVariableSource, String str, Map<String, List<AnnotationToken>> map, GenericTypeToken genericTypeToken) {
                            this.typePool = typePool;
                            this.typeVariableSource = typeVariableSource;
                            this.typePath = str;
                            this.annotationTokens = map;
                            this.componentTypeToken = genericTypeToken;
                        }
                    }

                    public boolean equals(@MaybeNull Object obj) {
                        if (this == obj) {
                            return true;
                        }
                        return obj != null && getClass() == obj.getClass() && this.componentTypeToken.equals(((ForGenericArray) obj).componentTypeToken);
                    }

                    @Override // net.bytebuddy.pool.TypePool.Default.LazyTypeDescription.GenericTypeToken
                    public String getTypePathPrefix() {
                        throw new IllegalStateException("A generic array type cannot be the owner of a nested type: " + this);
                    }

                    public int hashCode() {
                        return (getClass().hashCode() * 31) + this.componentTypeToken.hashCode();
                    }

                    @Override // net.bytebuddy.pool.TypePool.Default.LazyTypeDescription.GenericTypeToken
                    public boolean isPrimaryBound(TypePool typePool) {
                        throw new IllegalStateException("A generic array type cannot be a type variable bound: " + this);
                    }

                    @Override // net.bytebuddy.pool.TypePool.Default.LazyTypeDescription.GenericTypeToken
                    public TypeDescription.Generic toGenericType(TypePool typePool, TypeVariableSource typeVariableSource, String str, Map<String, List<AnnotationToken>> map) {
                        return new LazyGenericArray(typePool, typeVariableSource, str, map, this.componentTypeToken);
                    }

                    public ForGenericArray(GenericTypeToken genericTypeToken) {
                        this.componentTypeToken = genericTypeToken;
                    }
                }

                @HashCodeAndEqualsPlugin.Enhance
                /* loaded from: classes.dex */
                public static class ForParameterizedType implements GenericTypeToken {
                    private final String name;
                    private final List<GenericTypeToken> parameterTypeTokens;

                    /* loaded from: classes.dex */
                    public static class LazyParameterizedType extends TypeDescription.Generic.OfParameterizedType {
                        private final Map<String, List<AnnotationToken>> annotationTokens;
                        private final String name;
                        private final List<GenericTypeToken> parameterTypeTokens;
                        private final String typePath;
                        private final TypePool typePool;
                        private final TypeVariableSource typeVariableSource;

                        @Override // net.bytebuddy.description.type.TypeDefinition
                        public TypeDescription asErasure() {
                            return this.typePool.describe(this.name).resolve();
                        }

                        @Override // net.bytebuddy.description.annotation.AnnotationSource
                        public AnnotationList getDeclaredAnnotations() {
                            return LazyAnnotationDescription.asListOfNullable(this.typePool, this.annotationTokens.get(this.typePath));
                        }

                        @Override // net.bytebuddy.description.type.TypeDescription.Generic
                        public TypeList.Generic getTypeArguments() {
                            return new LazyTokenList(this.typePool, this.typeVariableSource, this.typePath, this.annotationTokens, this.parameterTypeTokens);
                        }

                        @Override // net.bytebuddy.description.type.TypeDescription.Generic
                        @MaybeNull
                        public TypeDescription.Generic getOwnerType() {
                            TypeDescription enclosingType = this.typePool.describe(this.name).resolve().getEnclosingType();
                            if (enclosingType == null) {
                                return TypeDescription.Generic.UNDEFINED;
                            }
                            return enclosingType.asGenericType();
                        }

                        public LazyParameterizedType(TypePool typePool, TypeVariableSource typeVariableSource, String str, Map<String, List<AnnotationToken>> map, String str2, List<GenericTypeToken> list) {
                            this.typePool = typePool;
                            this.typeVariableSource = typeVariableSource;
                            this.typePath = str;
                            this.annotationTokens = map;
                            this.name = str2;
                            this.parameterTypeTokens = list;
                        }
                    }

                    @HashCodeAndEqualsPlugin.Enhance
                    /* loaded from: classes.dex */
                    public static class Nested implements GenericTypeToken {
                        private final String name;
                        private final GenericTypeToken ownerTypeToken;
                        private final List<GenericTypeToken> parameterTypeTokens;

                        public boolean equals(@MaybeNull Object obj) {
                            if (this == obj) {
                                return true;
                            }
                            if (obj != null && getClass() == obj.getClass()) {
                                Nested nested = (Nested) obj;
                                return this.name.equals(nested.name) && this.parameterTypeTokens.equals(nested.parameterTypeTokens) && this.ownerTypeToken.equals(nested.ownerTypeToken);
                            }
                            return false;
                        }

                        @Override // net.bytebuddy.pool.TypePool.Default.LazyTypeDescription.GenericTypeToken
                        public String getTypePathPrefix() {
                            return this.ownerTypeToken.getTypePathPrefix() + GenericTypeToken.INNER_CLASS_PATH;
                        }

                        public int hashCode() {
                            return (((((getClass().hashCode() * 31) + this.name.hashCode()) * 31) + this.parameterTypeTokens.hashCode()) * 31) + this.ownerTypeToken.hashCode();
                        }

                        @Override // net.bytebuddy.pool.TypePool.Default.LazyTypeDescription.GenericTypeToken
                        public boolean isPrimaryBound(TypePool typePool) {
                            return !typePool.describe(this.name).resolve().isInterface();
                        }

                        @Override // net.bytebuddy.pool.TypePool.Default.LazyTypeDescription.GenericTypeToken
                        public TypeDescription.Generic toGenericType(TypePool typePool, TypeVariableSource typeVariableSource, String str, Map<String, List<AnnotationToken>> map) {
                            return new LazyParameterizedType(typePool, typeVariableSource, str, map, this.name, this.parameterTypeTokens, this.ownerTypeToken);
                        }

                        /* loaded from: classes.dex */
                        public static class LazyParameterizedType extends TypeDescription.Generic.OfParameterizedType {
                            private final Map<String, List<AnnotationToken>> annotationTokens;
                            private final String name;
                            private final GenericTypeToken ownerTypeToken;
                            private final List<GenericTypeToken> parameterTypeTokens;
                            private final String typePath;
                            private final TypePool typePool;
                            private final TypeVariableSource typeVariableSource;

                            @Override // net.bytebuddy.description.type.TypeDefinition
                            public TypeDescription asErasure() {
                                return this.typePool.describe(this.name).resolve();
                            }

                            @Override // net.bytebuddy.description.annotation.AnnotationSource
                            public AnnotationList getDeclaredAnnotations() {
                                TypePool typePool = this.typePool;
                                Map<String, List<AnnotationToken>> map = this.annotationTokens;
                                return LazyAnnotationDescription.asListOfNullable(typePool, map.get(this.typePath + this.ownerTypeToken.getTypePathPrefix()));
                            }

                            @Override // net.bytebuddy.description.type.TypeDescription.Generic
                            @MaybeNull
                            public TypeDescription.Generic getOwnerType() {
                                return this.ownerTypeToken.toGenericType(this.typePool, this.typeVariableSource, this.typePath, this.annotationTokens);
                            }

                            @Override // net.bytebuddy.description.type.TypeDescription.Generic
                            public TypeList.Generic getTypeArguments() {
                                TypePool typePool = this.typePool;
                                TypeVariableSource typeVariableSource = this.typeVariableSource;
                                return new LazyTokenList(typePool, typeVariableSource, this.typePath + this.ownerTypeToken.getTypePathPrefix(), this.annotationTokens, this.parameterTypeTokens);
                            }

                            public LazyParameterizedType(TypePool typePool, TypeVariableSource typeVariableSource, String str, Map<String, List<AnnotationToken>> map, String str2, List<GenericTypeToken> list, GenericTypeToken genericTypeToken) {
                                this.typePool = typePool;
                                this.typeVariableSource = typeVariableSource;
                                this.typePath = str;
                                this.annotationTokens = map;
                                this.name = str2;
                                this.parameterTypeTokens = list;
                                this.ownerTypeToken = genericTypeToken;
                            }
                        }

                        public Nested(String str, List<GenericTypeToken> list, GenericTypeToken genericTypeToken) {
                            this.name = str;
                            this.parameterTypeTokens = list;
                            this.ownerTypeToken = genericTypeToken;
                        }
                    }

                    public boolean equals(@MaybeNull Object obj) {
                        if (this == obj) {
                            return true;
                        }
                        if (obj != null && getClass() == obj.getClass()) {
                            ForParameterizedType forParameterizedType = (ForParameterizedType) obj;
                            return this.name.equals(forParameterizedType.name) && this.parameterTypeTokens.equals(forParameterizedType.parameterTypeTokens);
                        }
                        return false;
                    }

                    @Override // net.bytebuddy.pool.TypePool.Default.LazyTypeDescription.GenericTypeToken
                    public String getTypePathPrefix() {
                        return String.valueOf((char) GenericTypeToken.INNER_CLASS_PATH);
                    }

                    public int hashCode() {
                        return (((getClass().hashCode() * 31) + this.name.hashCode()) * 31) + this.parameterTypeTokens.hashCode();
                    }

                    @Override // net.bytebuddy.pool.TypePool.Default.LazyTypeDescription.GenericTypeToken
                    public boolean isPrimaryBound(TypePool typePool) {
                        return !typePool.describe(this.name).resolve().isInterface();
                    }

                    @Override // net.bytebuddy.pool.TypePool.Default.LazyTypeDescription.GenericTypeToken
                    public TypeDescription.Generic toGenericType(TypePool typePool, TypeVariableSource typeVariableSource, String str, Map<String, List<AnnotationToken>> map) {
                        return new LazyParameterizedType(typePool, typeVariableSource, str, map, this.name, this.parameterTypeTokens);
                    }

                    public ForParameterizedType(String str, List<GenericTypeToken> list) {
                        this.name = str;
                        this.parameterTypeTokens = list;
                    }
                }
            }

            /* loaded from: classes.dex */
            public static class LazyAnnotationDescription extends AnnotationDescription.AbstractBase {
                private final TypeDescription annotationType;
                public final TypePool typePool;
                public final Map<String, AnnotationValue<?, ?>> values;

                /* loaded from: classes.dex */
                public static class Loadable<S extends Annotation> extends LazyAnnotationDescription implements AnnotationDescription.Loadable<S> {
                    private final Class<S> annotationType;

                    @Override // net.bytebuddy.description.annotation.AnnotationDescription.Loadable
                    public S load() {
                        return (S) AnnotationDescription.AnnotationInvocationHandler.m15238of(this.annotationType.getClassLoader(), this.annotationType, this.values);
                    }

                    @Override // net.bytebuddy.pool.TypePool.Default.LazyTypeDescription.LazyAnnotationDescription, net.bytebuddy.description.annotation.AnnotationDescription
                    public /* bridge */ /* synthetic */ AnnotationDescription.Loadable prepare(Class cls) {
                        return super.prepare(cls);
                    }

                    private Loadable(TypePool typePool, Class<S> cls, Map<String, AnnotationValue<?, ?>> map) {
                        super(typePool, TypeDescription.ForLoadedType.m15196of(cls), map);
                        this.annotationType = cls;
                    }
                }

                @Override // net.bytebuddy.description.annotation.AnnotationDescription
                public TypeDescription getAnnotationType() {
                    return this.annotationType;
                }

                private LazyAnnotationDescription(TypePool typePool, TypeDescription typeDescription, Map<String, AnnotationValue<?, ?>> map) {
                    this.typePool = typePool;
                    this.annotationType = typeDescription;
                    this.values = map;
                }

                public static AnnotationList asList(TypePool typePool, List<? extends AnnotationToken> list) {
                    ArrayList arrayList = new ArrayList(list.size());
                    for (AnnotationToken annotationToken : list) {
                        AnnotationToken.Resolution annotationDescription = annotationToken.toAnnotationDescription(typePool);
                        if (annotationDescription.isResolved() && annotationDescription.resolve().getAnnotationType().isAnnotation()) {
                            arrayList.add(annotationDescription.resolve());
                        }
                    }
                    return new AnnotationList.Explicit(arrayList);
                }

                public static AnnotationList asListOfNullable(TypePool typePool, @MaybeNull List<? extends AnnotationToken> list) {
                    if (list == null) {
                        return new AnnotationList.Empty();
                    }
                    return asList(typePool, list);
                }

                @Override // net.bytebuddy.description.annotation.AnnotationDescription
                public <T extends Annotation> Loadable<T> prepare(Class<T> cls) {
                    if (this.annotationType.represents(cls)) {
                        return new Loadable<>(this.typePool, cls, this.values);
                    }
                    throw new IllegalArgumentException(cls + " does not represent " + this.annotationType);
                }

                @Override // net.bytebuddy.description.annotation.AnnotationDescription
                public AnnotationValue<?, ?> getValue(MethodDescription.InDefinedShape inDefinedShape) {
                    if (inDefinedShape.getDeclaringType().asErasure().equals(this.annotationType)) {
                        AnnotationValue<?, ?> annotationValue = this.values.get(inDefinedShape.getName());
                        if (annotationValue != null) {
                            return annotationValue.filter(inDefinedShape);
                        }
                        AnnotationValue<?, ?> defaultValue = ((MethodDescription.InDefinedShape) getAnnotationType().getDeclaredMethods().filter(ElementMatchers.m14822is(inDefinedShape)).getOnly()).getDefaultValue();
                        if (defaultValue == null) {
                            return new AnnotationValue.ForMissingValue(this.annotationType, inDefinedShape.getName());
                        }
                        return defaultValue;
                    }
                    throw new IllegalArgumentException(inDefinedShape + " is not declared by " + getAnnotationType());
                }
            }

            /* loaded from: classes.dex */
            public static abstract class LazyAnnotationValue<U, V> extends AnnotationValue.AbstractBase<U, V> {
                private transient /* synthetic */ int hashCode;

                /* loaded from: classes.dex */
                public static class ForAnnotationValue extends LazyAnnotationValue<AnnotationDescription, Annotation> {
                    private final AnnotationToken annotationToken;
                    private transient /* synthetic */ AnnotationValue resolved;
                    private final TypePool typePool;

                    @Override // net.bytebuddy.description.annotation.AnnotationValue
                    public AnnotationValue.Sort getSort() {
                        return AnnotationValue.Sort.ANNOTATION;
                    }

                    private ForAnnotationValue(TypePool typePool, AnnotationToken annotationToken) {
                        super();
                        this.typePool = typePool;
                        this.annotationToken = annotationToken;
                    }

                    @Override // net.bytebuddy.pool.TypePool.Default.LazyTypeDescription.LazyAnnotationValue
                    @CachedReturnPlugin.Enhance("resolved")
                    public AnnotationValue<AnnotationDescription, Annotation> doResolve() {
                        AnnotationValue<AnnotationDescription, Annotation> annotationValue = null;
                        if (this.resolved == null) {
                            AnnotationToken.Resolution annotationDescription = this.annotationToken.toAnnotationDescription(this.typePool);
                            if (!annotationDescription.isResolved()) {
                                annotationValue = new AnnotationValue.ForMissingType<>(this.annotationToken.getBinaryName());
                            } else if (!annotationDescription.resolve().getAnnotationType().isAnnotation()) {
                                annotationValue = new ForMismatchedType(annotationDescription.resolve().getAnnotationType().getName(), AnnotationValue.Sort.ANNOTATION);
                            } else {
                                annotationValue = new AnnotationValue.ForAnnotationDescription<>(annotationDescription.resolve());
                            }
                        }
                        if (annotationValue == null) {
                            return this.resolved;
                        }
                        this.resolved = annotationValue;
                        return annotationValue;
                    }
                }

                /* loaded from: classes.dex */
                public static class ForArray extends LazyAnnotationValue<Object, Object> {
                    private final AbstractBase.ComponentTypeReference componentTypeReference;
                    private transient /* synthetic */ AnnotationValue resolved;
                    private final TypePool typePool;
                    private final List<AnnotationValue<?, ?>> values;

                    @Override // net.bytebuddy.description.annotation.AnnotationValue
                    public AnnotationValue.Sort getSort() {
                        return AnnotationValue.Sort.ARRAY;
                    }

                    private ForArray(TypePool typePool, AbstractBase.ComponentTypeReference componentTypeReference, List<AnnotationValue<?, ?>> list) {
                        super();
                        this.typePool = typePool;
                        this.componentTypeReference = componentTypeReference;
                        this.values = list;
                    }

                    @Override // net.bytebuddy.pool.TypePool.Default.LazyTypeDescription.LazyAnnotationValue
                    @CachedReturnPlugin.Enhance("resolved")
                    public AnnotationValue<Object, Object> doResolve() {
                        AnnotationValue<Object, Object> annotationValue = null;
                        if (this.resolved == null) {
                            String resolve = this.componentTypeReference.resolve();
                            if (resolve != null) {
                                Resolution describe = this.typePool.describe(resolve);
                                if (!describe.isResolved()) {
                                    annotationValue = new AnnotationValue.ForMissingType<>(resolve);
                                } else if (describe.resolve().isEnum()) {
                                    annotationValue = new AnnotationValue.ForDescriptionArray<>(EnumerationDescription.class, describe.resolve(), this.values);
                                } else if (describe.resolve().isAnnotation()) {
                                    annotationValue = new AnnotationValue.ForDescriptionArray<>(AnnotationDescription.class, describe.resolve(), this.values);
                                } else if (describe.resolve().represents(Class.class)) {
                                    annotationValue = new AnnotationValue.ForDescriptionArray<>(TypeDescription.class, describe.resolve(), this.values);
                                } else if (describe.resolve().represents(String.class)) {
                                    annotationValue = new AnnotationValue.ForDescriptionArray<>(String.class, describe.resolve(), this.values);
                                } else {
                                    TypeDescription resolve2 = describe.resolve();
                                    Class cls = Boolean.TYPE;
                                    if (resolve2.represents(cls)) {
                                        annotationValue = new AnnotationValue.ForDescriptionArray<>(cls, describe.resolve(), this.values);
                                    } else if (describe.resolve().represents(Byte.TYPE)) {
                                        annotationValue = new AnnotationValue.ForDescriptionArray<>(Byte.TYPE, describe.resolve(), this.values);
                                    } else if (describe.resolve().represents(Short.TYPE)) {
                                        annotationValue = new AnnotationValue.ForDescriptionArray<>(Short.TYPE, describe.resolve(), this.values);
                                    } else if (describe.resolve().represents(Character.TYPE)) {
                                        annotationValue = new AnnotationValue.ForDescriptionArray<>(Character.TYPE, describe.resolve(), this.values);
                                    } else {
                                        TypeDescription resolve3 = describe.resolve();
                                        Class cls2 = Integer.TYPE;
                                        if (resolve3.represents(cls2)) {
                                            annotationValue = new AnnotationValue.ForDescriptionArray<>(cls2, describe.resolve(), this.values);
                                        } else {
                                            TypeDescription resolve4 = describe.resolve();
                                            Class cls3 = Long.TYPE;
                                            if (resolve4.represents(cls3)) {
                                                annotationValue = new AnnotationValue.ForDescriptionArray<>(cls3, describe.resolve(), this.values);
                                            } else {
                                                TypeDescription resolve5 = describe.resolve();
                                                Class cls4 = Float.TYPE;
                                                if (resolve5.represents(cls4)) {
                                                    annotationValue = new AnnotationValue.ForDescriptionArray<>(cls4, describe.resolve(), this.values);
                                                } else if (describe.resolve().represents(Double.TYPE)) {
                                                    annotationValue = new AnnotationValue.ForDescriptionArray<>(Double.TYPE, describe.resolve(), this.values);
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                            AnnotationValue.Sort sort = AnnotationValue.Sort.NONE;
                            List<AnnotationValue<?, ?>> list = this.values;
                            ListIterator<AnnotationValue<?, ?>> listIterator = list.listIterator(list.size());
                            while (listIterator.hasPrevious() && !sort.isDefined()) {
                                sort = listIterator.previous().getSort();
                            }
                            annotationValue = new ForMismatchedType(AnnotationValue.RenderingDispatcher.CURRENT.toArrayErrorString(sort), sort);
                        }
                        if (annotationValue == null) {
                            return this.resolved;
                        }
                        this.resolved = annotationValue;
                        return annotationValue;
                    }
                }

                /* loaded from: classes.dex */
                public static class ForEnumerationValue extends LazyAnnotationValue<EnumerationDescription, Enum<?>> {
                    private transient /* synthetic */ AnnotationValue resolved;
                    private final String typeName;
                    private final TypePool typePool;
                    private final String value;

                    @Override // net.bytebuddy.description.annotation.AnnotationValue
                    public AnnotationValue.Sort getSort() {
                        return AnnotationValue.Sort.ENUMERATION;
                    }

                    private ForEnumerationValue(TypePool typePool, String str, String str2) {
                        super();
                        this.typePool = typePool;
                        this.typeName = str;
                        this.value = str2;
                    }

                    @Override // net.bytebuddy.pool.TypePool.Default.LazyTypeDescription.LazyAnnotationValue
                    @CachedReturnPlugin.Enhance("resolved")
                    public AnnotationValue<EnumerationDescription, Enum<?>> doResolve() {
                        AnnotationValue<EnumerationDescription, Enum<?>> annotationValue = null;
                        if (this.resolved == null) {
                            Resolution describe = this.typePool.describe(this.typeName);
                            if (!describe.isResolved()) {
                                annotationValue = new AnnotationValue.ForMissingType<>(this.typeName);
                            } else if (!describe.resolve().isEnum()) {
                                annotationValue = new ForMismatchedType(this.typeName + "." + this.value, AnnotationValue.Sort.ENUMERATION);
                            } else if (describe.resolve().getDeclaredFields().filter(ElementMatchers.named(this.value)).isEmpty()) {
                                annotationValue = new AnnotationValue.ForEnumerationDescription.WithUnknownConstant<>(describe.resolve(), this.value);
                            } else {
                                annotationValue = new AnnotationValue.ForEnumerationDescription<>(new EnumerationDescription.Latent(describe.resolve(), this.value));
                            }
                        }
                        if (annotationValue == null) {
                            return this.resolved;
                        }
                        this.resolved = annotationValue;
                        return annotationValue;
                    }
                }

                @HashCodeAndEqualsPlugin.Enhance
                /* loaded from: classes.dex */
                public static class ForMismatchedType<W, X> extends AnnotationValue.AbstractBase<W, X> {
                    private final AnnotationValue.Sort sort;
                    private final String value;

                    public boolean equals(@MaybeNull Object obj) {
                        if (this == obj) {
                            return true;
                        }
                        if (obj != null && getClass() == obj.getClass()) {
                            ForMismatchedType forMismatchedType = (ForMismatchedType) obj;
                            return this.sort.equals(forMismatchedType.sort) && this.value.equals(forMismatchedType.value);
                        }
                        return false;
                    }

                    @Override // net.bytebuddy.description.annotation.AnnotationValue
                    public AnnotationValue.Sort getSort() {
                        return AnnotationValue.Sort.NONE;
                    }

                    @Override // net.bytebuddy.description.annotation.AnnotationValue
                    public AnnotationValue.State getState() {
                        return AnnotationValue.State.UNRESOLVED;
                    }

                    public int hashCode() {
                        return (((getClass().hashCode() * 31) + this.value.hashCode()) * 31) + this.sort.hashCode();
                    }

                    @Override // net.bytebuddy.description.annotation.AnnotationValue
                    public AnnotationValue.Loaded<X> load(@MaybeNull ClassLoader classLoader) {
                        throw new IllegalStateException("Expected filtering of this unresolved property");
                    }

                    @Override // net.bytebuddy.description.annotation.AnnotationValue
                    public W resolve() {
                        throw new IllegalStateException("Expected filtering of this unresolved property");
                    }

                    private ForMismatchedType(String str, AnnotationValue.Sort sort) {
                        this.value = str;
                        this.sort = sort;
                    }

                    @Override // net.bytebuddy.description.annotation.AnnotationValue
                    public AnnotationValue<W, X> filter(MethodDescription.InDefinedShape inDefinedShape, TypeDefinition typeDefinition) {
                        String str;
                        if (inDefinedShape.getReturnType().isArray()) {
                            str = AnnotationValue.RenderingDispatcher.CURRENT.toArrayErrorString(this.sort);
                        } else {
                            str = this.value;
                        }
                        return new AnnotationValue.ForMismatchedType(inDefinedShape, str);
                    }
                }

                /* loaded from: classes.dex */
                public static class ForTypeValue extends LazyAnnotationValue<TypeDescription, Class<?>> {
                    private transient /* synthetic */ AnnotationValue resolved;
                    private final String typeName;
                    private final TypePool typePool;

                    @Override // net.bytebuddy.description.annotation.AnnotationValue
                    public AnnotationValue.Sort getSort() {
                        return AnnotationValue.Sort.TYPE;
                    }

                    private ForTypeValue(TypePool typePool, String str) {
                        super();
                        this.typePool = typePool;
                        this.typeName = str;
                    }

                    @Override // net.bytebuddy.pool.TypePool.Default.LazyTypeDescription.LazyAnnotationValue
                    @CachedReturnPlugin.Enhance("resolved")
                    public AnnotationValue<TypeDescription, Class<?>> doResolve() {
                        AnnotationValue.AbstractBase forMissingType;
                        if (this.resolved != null) {
                            forMissingType = null;
                        } else {
                            Resolution describe = this.typePool.describe(this.typeName);
                            if (describe.isResolved()) {
                                forMissingType = new AnnotationValue.ForTypeDescription(describe.resolve());
                            } else {
                                forMissingType = new AnnotationValue.ForMissingType(this.typeName);
                            }
                        }
                        if (forMissingType == null) {
                            return this.resolved;
                        }
                        this.resolved = forMissingType;
                        return forMissingType;
                    }
                }

                private LazyAnnotationValue() {
                }

                public abstract AnnotationValue<U, V> doResolve();

                public boolean equals(@MaybeNull Object obj) {
                    return doResolve().equals(obj);
                }

                @Override // net.bytebuddy.description.annotation.AnnotationValue
                public AnnotationValue<U, V> filter(MethodDescription.InDefinedShape inDefinedShape, TypeDefinition typeDefinition) {
                    return doResolve().filter(inDefinedShape, typeDefinition);
                }

                @Override // net.bytebuddy.description.annotation.AnnotationValue
                public AnnotationValue.State getState() {
                    return doResolve().getState();
                }

                @CachedReturnPlugin.Enhance("hashCode")
                public int hashCode() {
                    int hashCode = this.hashCode != 0 ? 0 : doResolve().hashCode();
                    if (hashCode == 0) {
                        return this.hashCode;
                    }
                    this.hashCode = hashCode;
                    return hashCode;
                }

                @Override // net.bytebuddy.description.annotation.AnnotationValue
                public AnnotationValue.Loaded<V> load(@MaybeNull ClassLoader classLoader) {
                    return doResolve().load(classLoader);
                }

                @Override // net.bytebuddy.description.annotation.AnnotationValue
                public U resolve() {
                    return doResolve().resolve();
                }

                public String toString() {
                    return doResolve().toString();
                }
            }

            /* loaded from: classes.dex */
            public class LazyFieldDescription extends FieldDescription.InDefinedShape.AbstractBase {
                private final List<AnnotationToken> annotationTokens;
                private final String descriptor;
                @MaybeNull
                private final String genericSignature;
                private final int modifiers;
                private final String name;
                private final GenericTypeToken.Resolution.ForField signatureResolution;
                private final Map<String, List<AnnotationToken>> typeAnnotationTokens;

                @Override // net.bytebuddy.description.annotation.AnnotationSource
                public AnnotationList getDeclaredAnnotations() {
                    return LazyAnnotationDescription.asListOfNullable(LazyTypeDescription.this.typePool, this.annotationTokens);
                }

                @Override // net.bytebuddy.description.field.FieldDescription.AbstractBase, net.bytebuddy.description.NamedElement.WithDescriptor
                @MaybeNull
                public String getGenericSignature() {
                    return this.genericSignature;
                }

                @Override // net.bytebuddy.description.ModifierReviewable
                public int getModifiers() {
                    return this.modifiers;
                }

                @Override // net.bytebuddy.description.NamedElement.WithRuntimeName
                public String getName() {
                    return this.name;
                }

                @Override // net.bytebuddy.description.field.FieldDescription
                public TypeDescription.Generic getType() {
                    return this.signatureResolution.resolveFieldType(this.descriptor, LazyTypeDescription.this.typePool, this.typeAnnotationTokens, this);
                }

                private LazyFieldDescription(String str, int i, String str2, @MaybeNull String str3, GenericTypeToken.Resolution.ForField forField, Map<String, List<AnnotationToken>> map, List<AnnotationToken> list) {
                    this.modifiers = i;
                    this.name = str;
                    this.descriptor = str2;
                    this.genericSignature = str3;
                    this.signatureResolution = forField;
                    this.typeAnnotationTokens = map;
                    this.annotationTokens = list;
                }

                @Override // net.bytebuddy.description.DeclaredByType
                public TypeDescription getDeclaringType() {
                    return LazyTypeDescription.this;
                }
            }

            /* loaded from: classes.dex */
            public class LazyMethodDescription extends MethodDescription.InDefinedShape.AbstractBase {
                private final List<AnnotationToken> annotationTokens;
                @MaybeNull
                private final AnnotationValue<?, ?> defaultValue;
                private final Map<Integer, Map<String, List<AnnotationToken>>> exceptionTypeAnnotationTokens;
                private final List<String> exceptionTypeDescriptors;
                @MaybeNull
                private final String genericSignature;
                private final String internalName;
                private final int modifiers;
                private final Map<Integer, List<AnnotationToken>> parameterAnnotationTokens;
                private final Integer[] parameterModifiers;
                private final String[] parameterNames;
                private final Map<Integer, Map<String, List<AnnotationToken>>> parameterTypeAnnotationTokens;
                private final List<String> parameterTypeDescriptors;
                private final Map<String, List<AnnotationToken>> receiverTypeAnnotationTokens;
                private final Map<String, List<AnnotationToken>> returnTypeAnnotationTokens;
                private final String returnTypeDescriptor;
                private final GenericTypeToken.Resolution.ForMethod signatureResolution;
                private final Map<Integer, Map<String, List<AnnotationToken>>> typeVariableAnnotationTokens;
                private final Map<Integer, Map<Integer, Map<String, List<AnnotationToken>>>> typeVariableBoundAnnotationTokens;

                /* loaded from: classes.dex */
                public class LazyNonGenericReceiverType extends TypeDescription.Generic.OfNonGenericType {
                    private final TypeDescription typeDescription;

                    public LazyNonGenericReceiverType(LazyMethodDescription lazyMethodDescription) {
                        this(LazyTypeDescription.this);
                    }

                    @Override // net.bytebuddy.description.type.TypeDefinition
                    public TypeDescription asErasure() {
                        return this.typeDescription;
                    }

                    public LazyNonGenericReceiverType(TypeDescription typeDescription) {
                        this.typeDescription = typeDescription;
                    }

                    @Override // net.bytebuddy.description.type.TypeDescription.Generic, net.bytebuddy.description.type.TypeDefinition
                    @MaybeNull
                    public TypeDescription.Generic getComponentType() {
                        return TypeDescription.Generic.UNDEFINED;
                    }

                    @Override // net.bytebuddy.description.annotation.AnnotationSource
                    public AnnotationList getDeclaredAnnotations() {
                        StringBuilder sb = new StringBuilder();
                        for (int i = 0; i < this.typeDescription.getInnerClassCount(); i++) {
                            sb.append(GenericTypeToken.INNER_CLASS_PATH);
                        }
                        return LazyAnnotationDescription.asListOfNullable(LazyTypeDescription.this.typePool, (List) LazyMethodDescription.this.receiverTypeAnnotationTokens.get(sb.toString()));
                    }

                    @Override // net.bytebuddy.description.type.TypeDescription.Generic
                    @MaybeNull
                    public TypeDescription.Generic getOwnerType() {
                        TypeDescription declaringType = this.typeDescription.getDeclaringType();
                        if (declaringType == null) {
                            return TypeDescription.Generic.UNDEFINED;
                        }
                        return new LazyNonGenericReceiverType(declaringType);
                    }
                }

                /* loaded from: classes.dex */
                public class LazyParameterDescription extends ParameterDescription.InDefinedShape.AbstractBase {
                    private final int index;

                    @Override // net.bytebuddy.description.annotation.AnnotationSource
                    public AnnotationList getDeclaredAnnotations() {
                        return LazyAnnotationDescription.asListOfNullable(LazyTypeDescription.this.typePool, (List) LazyMethodDescription.this.parameterAnnotationTokens.get(Integer.valueOf(this.index)));
                    }

                    @Override // net.bytebuddy.description.method.ParameterDescription
                    public int getIndex() {
                        return this.index;
                    }

                    @Override // net.bytebuddy.description.method.ParameterDescription
                    public TypeDescription.Generic getType() {
                        return LazyMethodDescription.this.signatureResolution.resolveParameterTypes(LazyMethodDescription.this.parameterTypeDescriptors, LazyTypeDescription.this.typePool, LazyMethodDescription.this.parameterTypeAnnotationTokens, LazyMethodDescription.this).get(this.index);
                    }

                    @Override // net.bytebuddy.description.method.ParameterDescription
                    public boolean hasModifiers() {
                        return LazyMethodDescription.this.parameterModifiers[this.index] != null;
                    }

                    @Override // net.bytebuddy.description.NamedElement.WithOptionalName
                    public boolean isNamed() {
                        return LazyMethodDescription.this.parameterNames[this.index] != null;
                    }

                    public LazyParameterDescription(int i) {
                        this.index = i;
                    }

                    @Override // net.bytebuddy.description.method.ParameterDescription, net.bytebuddy.description.method.ParameterDescription.InDefinedShape
                    public MethodDescription.InDefinedShape getDeclaringMethod() {
                        return LazyMethodDescription.this;
                    }

                    @Override // net.bytebuddy.description.method.ParameterDescription.AbstractBase, net.bytebuddy.description.ModifierReviewable
                    public int getModifiers() {
                        if (hasModifiers()) {
                            return LazyMethodDescription.this.parameterModifiers[this.index].intValue();
                        }
                        return super.getModifiers();
                    }

                    @Override // net.bytebuddy.description.method.ParameterDescription.AbstractBase, net.bytebuddy.description.NamedElement.WithRuntimeName
                    public String getName() {
                        if (isNamed()) {
                            return LazyMethodDescription.this.parameterNames[this.index];
                        }
                        return super.getName();
                    }
                }

                /* loaded from: classes.dex */
                public class LazyParameterList extends ParameterList.AbstractBase<ParameterDescription.InDefinedShape> {
                    private LazyParameterList() {
                    }

                    @Override // net.bytebuddy.description.method.ParameterList.AbstractBase, net.bytebuddy.description.method.ParameterList
                    public TypeList.Generic asTypeList() {
                        return LazyMethodDescription.this.signatureResolution.resolveParameterTypes(LazyMethodDescription.this.parameterTypeDescriptors, LazyTypeDescription.this.typePool, LazyMethodDescription.this.parameterTypeAnnotationTokens, LazyMethodDescription.this);
                    }

                    @Override // net.bytebuddy.description.method.ParameterList.AbstractBase, net.bytebuddy.description.method.ParameterList
                    public boolean hasExplicitMetaData() {
                        for (int i = 0; i < size(); i++) {
                            if (LazyMethodDescription.this.parameterNames[i] == null || LazyMethodDescription.this.parameterModifiers[i] == null) {
                                return false;
                            }
                        }
                        return true;
                    }

                    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
                    public int size() {
                        return LazyMethodDescription.this.parameterTypeDescriptors.size();
                    }

                    @Override // java.util.AbstractList, java.util.List
                    public ParameterDescription.InDefinedShape get(int i) {
                        return new LazyParameterDescription(i);
                    }
                }

                /* loaded from: classes.dex */
                public class LazyParameterizedReceiverType extends TypeDescription.Generic.OfParameterizedType {
                    private final TypeDescription typeDescription;

                    /* loaded from: classes.dex */
                    public class TypeArgumentList extends TypeList.Generic.AbstractBase {
                        private final List<? extends TypeDescription.Generic> typeVariables;

                        /* loaded from: classes.dex */
                        public class AnnotatedTypeVariable extends TypeDescription.Generic.OfTypeVariable {
                            private final int index;
                            private final TypeDescription.Generic typeVariable;

                            @Override // net.bytebuddy.description.annotation.AnnotationSource
                            public AnnotationList getDeclaredAnnotations() {
                                TypePool typePool = LazyTypeDescription.this.typePool;
                                Map map = LazyMethodDescription.this.receiverTypeAnnotationTokens;
                                return LazyAnnotationDescription.asListOfNullable(typePool, (List) map.get(LazyParameterizedReceiverType.this.getTypePath() + this.index + GenericTypeToken.INDEXED_TYPE_DELIMITER));
                            }

                            @Override // net.bytebuddy.description.type.TypeDescription.Generic
                            public String getSymbol() {
                                return this.typeVariable.getSymbol();
                            }

                            @Override // net.bytebuddy.description.type.TypeDescription.Generic
                            public TypeVariableSource getTypeVariableSource() {
                                return this.typeVariable.getTypeVariableSource();
                            }

                            @Override // net.bytebuddy.description.type.TypeDescription.Generic
                            public TypeList.Generic getUpperBounds() {
                                return this.typeVariable.getUpperBounds();
                            }

                            public AnnotatedTypeVariable(TypeDescription.Generic generic, int i) {
                                this.typeVariable = generic;
                                this.index = i;
                            }
                        }

                        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
                        public int size() {
                            return this.typeVariables.size();
                        }

                        public TypeArgumentList(List<? extends TypeDescription.Generic> list) {
                            this.typeVariables = list;
                        }

                        @Override // java.util.AbstractList, java.util.List
                        public TypeDescription.Generic get(int i) {
                            return new AnnotatedTypeVariable(this.typeVariables.get(i), i);
                        }
                    }

                    public LazyParameterizedReceiverType(LazyMethodDescription lazyMethodDescription) {
                        this(LazyTypeDescription.this);
                    }

                    @Override // net.bytebuddy.description.type.TypeDefinition
                    public TypeDescription asErasure() {
                        return this.typeDescription;
                    }

                    @Override // net.bytebuddy.description.annotation.AnnotationSource
                    public AnnotationList getDeclaredAnnotations() {
                        return LazyAnnotationDescription.asListOfNullable(LazyTypeDescription.this.typePool, (List) LazyMethodDescription.this.receiverTypeAnnotationTokens.get(getTypePath()));
                    }

                    @Override // net.bytebuddy.description.type.TypeDescription.Generic
                    public TypeList.Generic getTypeArguments() {
                        return new TypeArgumentList(this.typeDescription.getTypeVariables());
                    }

                    public LazyParameterizedReceiverType(TypeDescription typeDescription) {
                        this.typeDescription = typeDescription;
                    }

                    /* JADX INFO: Access modifiers changed from: private */
                    public String getTypePath() {
                        StringBuilder sb = new StringBuilder();
                        for (int i = 0; i < this.typeDescription.getInnerClassCount(); i++) {
                            sb.append(GenericTypeToken.INNER_CLASS_PATH);
                        }
                        return sb.toString();
                    }

                    @Override // net.bytebuddy.description.type.TypeDescription.Generic
                    @MaybeNull
                    public TypeDescription.Generic getOwnerType() {
                        TypeDescription declaringType = this.typeDescription.getDeclaringType();
                        if (declaringType == null) {
                            return TypeDescription.Generic.UNDEFINED;
                        }
                        if (!this.typeDescription.isStatic() && declaringType.isGenerified()) {
                            return new LazyParameterizedReceiverType(declaringType);
                        }
                        return new LazyNonGenericReceiverType(declaringType);
                    }
                }

                @Override // net.bytebuddy.description.annotation.AnnotationSource
                public AnnotationList getDeclaredAnnotations() {
                    return LazyAnnotationDescription.asList(LazyTypeDescription.this.typePool, this.annotationTokens);
                }

                @Override // net.bytebuddy.description.method.MethodDescription
                @MaybeNull
                public AnnotationValue<?, ?> getDefaultValue() {
                    return this.defaultValue;
                }

                @Override // net.bytebuddy.description.method.MethodDescription
                public TypeList.Generic getExceptionTypes() {
                    return this.signatureResolution.resolveExceptionTypes(this.exceptionTypeDescriptors, LazyTypeDescription.this.typePool, this.exceptionTypeAnnotationTokens, this);
                }

                @Override // net.bytebuddy.description.method.MethodDescription.AbstractBase, net.bytebuddy.description.NamedElement.WithDescriptor
                @MaybeNull
                public String getGenericSignature() {
                    return this.genericSignature;
                }

                @Override // net.bytebuddy.description.NamedElement.WithRuntimeName
                public String getInternalName() {
                    return this.internalName;
                }

                @Override // net.bytebuddy.description.ModifierReviewable
                public int getModifiers() {
                    return this.modifiers;
                }

                @Override // net.bytebuddy.description.method.MethodDescription, net.bytebuddy.description.method.MethodDescription.InDefinedShape
                public ParameterList<ParameterDescription.InDefinedShape> getParameters() {
                    return new LazyParameterList();
                }

                @Override // net.bytebuddy.description.method.MethodDescription
                public TypeDescription.Generic getReturnType() {
                    return this.signatureResolution.resolveReturnType(this.returnTypeDescriptor, LazyTypeDescription.this.typePool, this.returnTypeAnnotationTokens, this);
                }

                @Override // net.bytebuddy.description.TypeVariableSource
                public TypeList.Generic getTypeVariables() {
                    return this.signatureResolution.resolveTypeVariables(LazyTypeDescription.this.typePool, this, this.typeVariableAnnotationTokens, this.typeVariableBoundAnnotationTokens);
                }

                private LazyMethodDescription(String str, int i, String str2, @MaybeNull String str3, GenericTypeToken.Resolution.ForMethod forMethod, @MaybeNull String[] strArr, Map<Integer, Map<String, List<AnnotationToken>>> map, Map<Integer, Map<Integer, Map<String, List<AnnotationToken>>>> map2, Map<String, List<AnnotationToken>> map3, Map<Integer, Map<String, List<AnnotationToken>>> map4, Map<Integer, Map<String, List<AnnotationToken>>> map5, Map<String, List<AnnotationToken>> map6, List<AnnotationToken> list, Map<Integer, List<AnnotationToken>> map7, List<MethodToken.ParameterToken> list2, @MaybeNull AnnotationValue<?, ?> annotationValue) {
                    this.modifiers = i;
                    this.internalName = str;
                    Type methodType = Type.getMethodType(str2);
                    Type returnType = methodType.getReturnType();
                    Type[] argumentTypes = methodType.getArgumentTypes();
                    this.returnTypeDescriptor = returnType.getDescriptor();
                    this.parameterTypeDescriptors = new ArrayList(argumentTypes.length);
                    int i2 = 0;
                    for (Type type : argumentTypes) {
                        this.parameterTypeDescriptors.add(type.getDescriptor());
                    }
                    this.genericSignature = str3;
                    this.signatureResolution = forMethod;
                    if (strArr == null) {
                        this.exceptionTypeDescriptors = Collections.emptyList();
                    } else {
                        this.exceptionTypeDescriptors = new ArrayList(strArr.length);
                        for (String str4 : strArr) {
                            this.exceptionTypeDescriptors.add(Type.getObjectType(str4).getDescriptor());
                        }
                    }
                    this.typeVariableAnnotationTokens = map;
                    this.typeVariableBoundAnnotationTokens = map2;
                    this.returnTypeAnnotationTokens = map3;
                    this.parameterTypeAnnotationTokens = map4;
                    this.exceptionTypeAnnotationTokens = map5;
                    this.receiverTypeAnnotationTokens = map6;
                    this.annotationTokens = list;
                    this.parameterAnnotationTokens = map7;
                    this.parameterNames = new String[argumentTypes.length];
                    this.parameterModifiers = new Integer[argumentTypes.length];
                    if (list2.size() == argumentTypes.length) {
                        for (MethodToken.ParameterToken parameterToken : list2) {
                            this.parameterNames[i2] = parameterToken.getName();
                            this.parameterModifiers[i2] = parameterToken.getModifiers();
                            i2++;
                        }
                    }
                    this.defaultValue = annotationValue;
                }

                @Override // net.bytebuddy.description.DeclaredByType.WithMandatoryDeclaration, net.bytebuddy.description.DeclaredByType
                public TypeDescription getDeclaringType() {
                    return LazyTypeDescription.this;
                }

                @Override // net.bytebuddy.description.method.MethodDescription.InDefinedShape.AbstractBase, net.bytebuddy.description.method.MethodDescription
                @MaybeNull
                public TypeDescription.Generic getReceiverType() {
                    if (isStatic()) {
                        return TypeDescription.Generic.UNDEFINED;
                    }
                    if (isConstructor()) {
                        TypeDescription declaringType = getDeclaringType();
                        TypeDescription enclosingType = declaringType.getEnclosingType();
                        if (enclosingType == null) {
                            if (declaringType.isGenerified()) {
                                return new LazyParameterizedReceiverType(declaringType);
                            }
                            return new LazyNonGenericReceiverType(declaringType);
                        } else if (!declaringType.isStatic() && declaringType.isGenerified()) {
                            return new LazyParameterizedReceiverType(enclosingType);
                        } else {
                            return new LazyNonGenericReceiverType(enclosingType);
                        }
                    } else if (LazyTypeDescription.this.isGenerified()) {
                        return new LazyParameterizedReceiverType(this);
                    } else {
                        return new LazyNonGenericReceiverType(this);
                    }
                }
            }

            /* loaded from: classes.dex */
            public static class LazyNestMemberList extends TypeList.AbstractBase {
                private final List<String> nestMembers;
                private final TypeDescription typeDescription;
                private final TypePool typePool;

                @Override // net.bytebuddy.description.type.TypeList.AbstractBase, net.bytebuddy.description.type.TypeList
                public int getStackSize() {
                    return this.nestMembers.size() + 1;
                }

                @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
                public int size() {
                    return this.nestMembers.size() + 1;
                }

                @Override // java.util.AbstractList, java.util.List
                public TypeDescription get(int i) {
                    if (i == 0) {
                        return this.typeDescription;
                    }
                    return this.typePool.describe(this.nestMembers.get(i - 1)).resolve();
                }

                @Override // net.bytebuddy.description.type.TypeList.AbstractBase, net.bytebuddy.description.type.TypeList
                public String[] toInternalNames() {
                    int i = 1;
                    String[] strArr = new String[this.nestMembers.size() + 1];
                    strArr[0] = this.typeDescription.getInternalName();
                    for (String str : this.nestMembers) {
                        strArr[i] = str.replace(GenericTypeToken.INNER_CLASS_PATH, '/');
                        i++;
                    }
                    return strArr;
                }

                public LazyNestMemberList(TypeDescription typeDescription, TypePool typePool, List<String> list) {
                    this.typeDescription = typeDescription;
                    this.typePool = typePool;
                    this.nestMembers = list;
                }
            }

            /* loaded from: classes.dex */
            public static class LazyPackageDescription extends PackageDescription.AbstractBase {
                private final String name;
                private final TypePool typePool;

                @Override // net.bytebuddy.description.NamedElement.WithRuntimeName
                public String getName() {
                    return this.name;
                }

                private LazyPackageDescription(TypePool typePool, String str) {
                    this.typePool = typePool;
                    this.name = str;
                }

                @Override // net.bytebuddy.description.annotation.AnnotationSource
                public AnnotationList getDeclaredAnnotations() {
                    TypePool typePool = this.typePool;
                    Resolution describe = typePool.describe(this.name + "." + PackageDescription.PACKAGE_CLASS_NAME);
                    if (describe.isResolved()) {
                        return describe.resolve().getDeclaredAnnotations();
                    }
                    return new AnnotationList.Empty();
                }
            }

            /* loaded from: classes.dex */
            public class LazyRecordComponentDescription extends RecordComponentDescription.InDefinedShape.AbstractBase {
                private final List<AnnotationToken> annotationTokens;
                private final String descriptor;
                @MaybeNull
                private final String genericSignature;
                private final String name;
                private final GenericTypeToken.Resolution.ForRecordComponent signatureResolution;
                private final Map<String, List<AnnotationToken>> typeAnnotationTokens;

                @Override // net.bytebuddy.description.NamedElement
                public String getActualName() {
                    return this.name;
                }

                @Override // net.bytebuddy.description.annotation.AnnotationSource
                public AnnotationList getDeclaredAnnotations() {
                    return LazyAnnotationDescription.asList(LazyTypeDescription.this.typePool, this.annotationTokens);
                }

                @Override // net.bytebuddy.description.type.RecordComponentDescription.AbstractBase, net.bytebuddy.description.NamedElement.WithDescriptor
                @MaybeNull
                public String getGenericSignature() {
                    return this.genericSignature;
                }

                @Override // net.bytebuddy.description.type.RecordComponentDescription
                public TypeDescription.Generic getType() {
                    return this.signatureResolution.resolveRecordType(this.descriptor, LazyTypeDescription.this.typePool, this.typeAnnotationTokens, this);
                }

                private LazyRecordComponentDescription(String str, String str2, @MaybeNull String str3, GenericTypeToken.Resolution.ForRecordComponent forRecordComponent, Map<String, List<AnnotationToken>> map, List<AnnotationToken> list) {
                    this.name = str;
                    this.descriptor = str2;
                    this.genericSignature = str3;
                    this.signatureResolution = forRecordComponent;
                    this.typeAnnotationTokens = map;
                    this.annotationTokens = list;
                }

                @Override // net.bytebuddy.description.DeclaredByType.WithMandatoryDeclaration, net.bytebuddy.description.DeclaredByType
                public TypeDescription getDeclaringType() {
                    return LazyTypeDescription.this;
                }
            }

            /* loaded from: classes.dex */
            public static class LazyTypeList extends TypeList.AbstractBase {
                private final List<String> descriptors;
                private final TypePool typePool;

                @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
                public int size() {
                    return this.descriptors.size();
                }

                @Override // java.util.AbstractList, java.util.List
                public TypeDescription get(int i) {
                    return TokenizedGenericType.toErasure(this.typePool, this.descriptors.get(i));
                }

                @Override // net.bytebuddy.description.type.TypeList.AbstractBase, net.bytebuddy.description.type.TypeList
                public int getStackSize() {
                    int i = 0;
                    for (String str : this.descriptors) {
                        i += Type.getType(str).getSize();
                    }
                    return i;
                }

                @Override // net.bytebuddy.description.type.TypeList.AbstractBase, net.bytebuddy.description.type.TypeList
                @MaybeNull
                public String[] toInternalNames() {
                    int size = this.descriptors.size();
                    String[] strArr = new String[size];
                    int i = 0;
                    for (String str : this.descriptors) {
                        strArr[i] = Type.getType(str).getInternalName();
                        i++;
                    }
                    if (size == 0) {
                        return TypeList.NO_INTERFACES;
                    }
                    return strArr;
                }

                public LazyTypeList(TypePool typePool, List<String> list) {
                    this.typePool = typePool;
                    this.descriptors = list;
                }
            }

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static class MethodToken {
                private final List<AnnotationToken> annotationTokens;
                @UnknownNull
                private final AnnotationValue<?, ?> defaultValue;
                private final String descriptor;
                @MaybeNull
                private final String[] exceptionName;
                private final Map<Integer, Map<String, List<AnnotationToken>>> exceptionTypeAnnotationTokens;
                @UnknownNull
                private final String genericSignature;
                private final int modifiers;
                private final String name;
                private final Map<Integer, List<AnnotationToken>> parameterAnnotationTokens;
                private final List<ParameterToken> parameterTokens;
                private final Map<Integer, Map<String, List<AnnotationToken>>> parameterTypeAnnotationTokens;
                private final Map<String, List<AnnotationToken>> receiverTypeAnnotationTokens;
                private final Map<String, List<AnnotationToken>> returnTypeAnnotationTokens;
                private final GenericTypeToken.Resolution.ForMethod signatureResolution;
                private final Map<Integer, Map<String, List<AnnotationToken>>> typeVariableAnnotationTokens;
                private final Map<Integer, Map<Integer, Map<String, List<AnnotationToken>>>> typeVariableBoundAnnotationTokens;

                @HashCodeAndEqualsPlugin.Enhance
                /* loaded from: classes.dex */
                public static class ParameterToken {
                    @AlwaysNull
                    public static final Integer NO_MODIFIERS = null;
                    @AlwaysNull
                    public static final String NO_NAME = null;
                    @MaybeNull
                    @HashCodeAndEqualsPlugin.ValueHandling(HashCodeAndEqualsPlugin.ValueHandling.Sort.REVERSE_NULLABILITY)
                    private final Integer modifiers;
                    @MaybeNull
                    @HashCodeAndEqualsPlugin.ValueHandling(HashCodeAndEqualsPlugin.ValueHandling.Sort.REVERSE_NULLABILITY)
                    private final String name;

                    public ParameterToken() {
                        this(NO_NAME);
                    }

                    /* JADX WARN: Code restructure failed: missing block: B:17:0x0024, code lost:
                        if (r2 != null) goto L26;
                     */
                    /* JADX WARN: Removed duplicated region for block: B:27:0x0039 A[RETURN] */
                    /*
                        Code decompiled incorrectly, please refer to instructions dump.
                        To view partially-correct add '--show-bad-code' argument
                    */
                    public boolean equals(@net.bytebuddy.utility.nullability.MaybeNull java.lang.Object r5) {
                        /*
                            r4 = this;
                            r0 = 1
                            if (r4 != r5) goto L4
                            return r0
                        L4:
                            r1 = 0
                            if (r5 != 0) goto L8
                            return r1
                        L8:
                            java.lang.Class r2 = r4.getClass()
                            java.lang.Class r3 = r5.getClass()
                            if (r2 == r3) goto L13
                            return r1
                        L13:
                            java.lang.Integer r2 = r4.modifiers
                            net.bytebuddy.pool.TypePool$Default$LazyTypeDescription$MethodToken$ParameterToken r5 = (net.bytebuddy.pool.TypePool.Default.LazyTypeDescription.MethodToken.ParameterToken) r5
                            java.lang.Integer r3 = r5.modifiers
                            if (r3 == 0) goto L24
                            if (r2 == 0) goto L26
                            boolean r2 = r2.equals(r3)
                            if (r2 != 0) goto L27
                            return r1
                        L24:
                            if (r2 == 0) goto L27
                        L26:
                            return r1
                        L27:
                            java.lang.String r2 = r4.name
                            java.lang.String r5 = r5.name
                            if (r5 == 0) goto L36
                            if (r2 == 0) goto L38
                            boolean r5 = r2.equals(r5)
                            if (r5 != 0) goto L39
                            return r1
                        L36:
                            if (r2 == 0) goto L39
                        L38:
                            return r1
                        L39:
                            return r0
                        */
                        throw new UnsupportedOperationException("Method not decompiled: net.bytebuddy.pool.TypePool.Default.LazyTypeDescription.MethodToken.ParameterToken.equals(java.lang.Object):boolean");
                    }

                    @MaybeNull
                    public Integer getModifiers() {
                        return this.modifiers;
                    }

                    @MaybeNull
                    public String getName() {
                        return this.name;
                    }

                    public int hashCode() {
                        int hashCode = getClass().hashCode() * 31;
                        String str = this.name;
                        if (str != null) {
                            hashCode += str.hashCode();
                        }
                        int i = hashCode * 31;
                        Integer num = this.modifiers;
                        return num != null ? i + num.hashCode() : i;
                    }

                    public ParameterToken(@MaybeNull String str) {
                        this(str, NO_MODIFIERS);
                    }

                    public ParameterToken(@MaybeNull String str, @MaybeNull Integer num) {
                        this.name = str;
                        this.modifiers = num;
                    }
                }

                public MethodToken(String str, int i, String str2, @MaybeNull String str3, @MaybeNull String[] strArr, Map<Integer, Map<String, List<AnnotationToken>>> map, Map<Integer, Map<Integer, Map<String, List<AnnotationToken>>>> map2, Map<String, List<AnnotationToken>> map3, Map<Integer, Map<String, List<AnnotationToken>>> map4, Map<Integer, Map<String, List<AnnotationToken>>> map5, Map<String, List<AnnotationToken>> map6, List<AnnotationToken> list, Map<Integer, List<AnnotationToken>> map7, List<ParameterToken> list2, @MaybeNull AnnotationValue<?, ?> annotationValue) {
                    GenericTypeToken.Resolution.ForMethod extract;
                    this.modifiers = (-131073) & i;
                    this.name = str;
                    this.descriptor = str2;
                    this.genericSignature = str3;
                    if (TypeDescription.AbstractBase.RAW_TYPES) {
                        extract = GenericTypeToken.Resolution.Raw.INSTANCE;
                    } else {
                        extract = GenericTypeExtractor.ForSignature.OfMethod.extract(str3);
                    }
                    this.signatureResolution = extract;
                    this.exceptionName = strArr;
                    this.typeVariableAnnotationTokens = map;
                    this.typeVariableBoundAnnotationTokens = map2;
                    this.returnTypeAnnotationTokens = map3;
                    this.parameterTypeAnnotationTokens = map4;
                    this.exceptionTypeAnnotationTokens = map5;
                    this.receiverTypeAnnotationTokens = map6;
                    this.annotationTokens = list;
                    this.parameterAnnotationTokens = map7;
                    this.parameterTokens = list2;
                    this.defaultValue = annotationValue;
                }

                /* JADX INFO: Access modifiers changed from: private */
                public MethodDescription.InDefinedShape toMethodDescription(LazyTypeDescription lazyTypeDescription) {
                    lazyTypeDescription.getClass();
                    return new LazyMethodDescription(this.name, this.modifiers, this.descriptor, this.genericSignature, this.signatureResolution, this.exceptionName, this.typeVariableAnnotationTokens, this.typeVariableBoundAnnotationTokens, this.returnTypeAnnotationTokens, this.parameterTypeAnnotationTokens, this.exceptionTypeAnnotationTokens, this.receiverTypeAnnotationTokens, this.annotationTokens, this.parameterAnnotationTokens, this.parameterTokens, this.defaultValue);
                }

                public boolean equals(@MaybeNull Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    if (obj != null && getClass() == obj.getClass()) {
                        MethodToken methodToken = (MethodToken) obj;
                        return this.modifiers == methodToken.modifiers && this.name.equals(methodToken.name) && this.descriptor.equals(methodToken.descriptor) && this.genericSignature.equals(methodToken.genericSignature) && this.signatureResolution.equals(methodToken.signatureResolution) && Arrays.equals(this.exceptionName, methodToken.exceptionName) && this.typeVariableAnnotationTokens.equals(methodToken.typeVariableAnnotationTokens) && this.typeVariableBoundAnnotationTokens.equals(methodToken.typeVariableBoundAnnotationTokens) && this.returnTypeAnnotationTokens.equals(methodToken.returnTypeAnnotationTokens) && this.parameterTypeAnnotationTokens.equals(methodToken.parameterTypeAnnotationTokens) && this.exceptionTypeAnnotationTokens.equals(methodToken.exceptionTypeAnnotationTokens) && this.receiverTypeAnnotationTokens.equals(methodToken.receiverTypeAnnotationTokens) && this.annotationTokens.equals(methodToken.annotationTokens) && this.parameterAnnotationTokens.equals(methodToken.parameterAnnotationTokens) && this.parameterTokens.equals(methodToken.parameterTokens) && this.defaultValue.equals(methodToken.defaultValue);
                    }
                    return false;
                }

                public int hashCode() {
                    return (((((((((((((((((((((((((((((((getClass().hashCode() * 31) + this.name.hashCode()) * 31) + this.modifiers) * 31) + this.descriptor.hashCode()) * 31) + this.genericSignature.hashCode()) * 31) + this.signatureResolution.hashCode()) * 31) + Arrays.hashCode(this.exceptionName)) * 31) + this.typeVariableAnnotationTokens.hashCode()) * 31) + this.typeVariableBoundAnnotationTokens.hashCode()) * 31) + this.returnTypeAnnotationTokens.hashCode()) * 31) + this.parameterTypeAnnotationTokens.hashCode()) * 31) + this.exceptionTypeAnnotationTokens.hashCode()) * 31) + this.receiverTypeAnnotationTokens.hashCode()) * 31) + this.annotationTokens.hashCode()) * 31) + this.parameterAnnotationTokens.hashCode()) * 31) + this.parameterTokens.hashCode()) * 31) + this.defaultValue.hashCode();
                }
            }

            /* loaded from: classes.dex */
            public class MethodTokenList extends MethodList.AbstractBase<MethodDescription.InDefinedShape> {
                public MethodTokenList() {
                }

                @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
                public int size() {
                    return LazyTypeDescription.this.methodTokens.size();
                }

                @Override // java.util.AbstractList, java.util.List
                public MethodDescription.InDefinedShape get(int i) {
                    return ((MethodToken) LazyTypeDescription.this.methodTokens.get(i)).toMethodDescription(LazyTypeDescription.this);
                }
            }

            /* loaded from: classes.dex */
            public class RecordComponentTokenList extends RecordComponentList.AbstractBase<RecordComponentDescription.InDefinedShape> {
                public RecordComponentTokenList() {
                }

                @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
                public int size() {
                    return LazyTypeDescription.this.recordComponentTokens.size();
                }

                @Override // java.util.AbstractList, java.util.List
                public RecordComponentDescription.InDefinedShape get(int i) {
                    return ((RecordComponentToken) LazyTypeDescription.this.recordComponentTokens.get(i)).toRecordComponentDescription(LazyTypeDescription.this);
                }
            }

            /* loaded from: classes.dex */
            public static class TokenizedGenericType extends TypeDescription.Generic.LazyProjection.WithEagerNavigation {
                private final Map<String, List<AnnotationToken>> annotationTokens;
                private transient /* synthetic */ TypeDescription erasure;
                private final GenericTypeToken genericTypeToken;
                private final String rawTypeDescriptor;
                private transient /* synthetic */ TypeDescription.Generic resolved;
                private final TypePool typePool;
                private final TypeVariableSource typeVariableSource;

                /* loaded from: classes.dex */
                public static class TokenList extends TypeList.Generic.AbstractBase {
                    private final Map<Integer, Map<String, List<AnnotationToken>>> annotationTokens;
                    private final List<GenericTypeToken> genericTypeTokens;
                    private final List<String> rawTypeDescriptors;
                    private final TypePool typePool;
                    private final TypeVariableSource typeVariableSource;

                    @Override // net.bytebuddy.description.type.TypeList.Generic.AbstractBase, net.bytebuddy.description.type.TypeList.Generic
                    public TypeList asErasures() {
                        return new LazyTypeList(this.typePool, this.rawTypeDescriptors);
                    }

                    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
                    public int size() {
                        return this.rawTypeDescriptors.size();
                    }

                    private TokenList(TypePool typePool, List<GenericTypeToken> list, Map<Integer, Map<String, List<AnnotationToken>>> map, List<String> list2, TypeVariableSource typeVariableSource) {
                        this.typePool = typePool;
                        this.genericTypeTokens = list;
                        this.annotationTokens = map;
                        this.rawTypeDescriptors = list2;
                        this.typeVariableSource = typeVariableSource;
                    }

                    @Override // java.util.AbstractList, java.util.List
                    public TypeDescription.Generic get(int i) {
                        if (this.rawTypeDescriptors.size() == this.genericTypeTokens.size()) {
                            return TokenizedGenericType.m14786of(this.typePool, this.genericTypeTokens.get(i), this.rawTypeDescriptors.get(i), this.annotationTokens.get(Integer.valueOf(i)), this.typeVariableSource);
                        }
                        return TokenizedGenericType.toErasure(this.typePool, this.rawTypeDescriptors.get(i)).asGenericType();
                    }
                }

                /* loaded from: classes.dex */
                public static class TypeVariableList extends TypeList.Generic.AbstractBase {
                    private final Map<Integer, Map<String, List<AnnotationToken>>> annotationTokens;
                    private final Map<Integer, Map<Integer, Map<String, List<AnnotationToken>>>> boundAnnotationTokens;
                    private final TypePool typePool;
                    private final TypeVariableSource typeVariableSource;
                    private final List<GenericTypeToken.OfFormalTypeVariable> typeVariables;

                    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
                    public int size() {
                        return this.typeVariables.size();
                    }

                    @Override // java.util.AbstractList, java.util.List
                    public TypeDescription.Generic get(int i) {
                        return this.typeVariables.get(i).toGenericType(this.typePool, this.typeVariableSource, this.annotationTokens.get(Integer.valueOf(i)), this.boundAnnotationTokens.get(Integer.valueOf(i)));
                    }

                    public TypeVariableList(TypePool typePool, List<GenericTypeToken.OfFormalTypeVariable> list, TypeVariableSource typeVariableSource, Map<Integer, Map<String, List<AnnotationToken>>> map, Map<Integer, Map<Integer, Map<String, List<AnnotationToken>>>> map2) {
                        this.typePool = typePool;
                        this.typeVariables = list;
                        this.typeVariableSource = typeVariableSource;
                        this.annotationTokens = map;
                        this.boundAnnotationTokens = map2;
                    }
                }

                @Override // net.bytebuddy.description.type.TypeDefinition
                @CachedReturnPlugin.Enhance("erasure")
                public TypeDescription asErasure() {
                    TypeDescription erasure = this.erasure != null ? null : toErasure(this.typePool, this.rawTypeDescriptor);
                    if (erasure == null) {
                        return this.erasure;
                    }
                    this.erasure = erasure;
                    return erasure;
                }

                @Override // net.bytebuddy.description.annotation.AnnotationSource
                public AnnotationList getDeclaredAnnotations() {
                    return resolve().getDeclaredAnnotations();
                }

                @Override // net.bytebuddy.description.type.TypeDescription.Generic.LazyProjection
                @CachedReturnPlugin.Enhance("resolved")
                public TypeDescription.Generic resolve() {
                    TypeDescription.Generic genericType = this.resolved != null ? null : this.genericTypeToken.toGenericType(this.typePool, this.typeVariableSource, "", this.annotationTokens);
                    if (genericType == null) {
                        return this.resolved;
                    }
                    this.resolved = genericType;
                    return genericType;
                }

                /* loaded from: classes.dex */
                public static class Malformed extends TypeDescription.Generic.LazyProjection.WithEagerNavigation {
                    private final String rawTypeDescriptor;
                    private final TypePool typePool;

                    /* loaded from: classes.dex */
                    public static class TokenList extends TypeList.Generic.AbstractBase {
                        private final List<String> rawTypeDescriptors;
                        private final TypePool typePool;

                        @Override // net.bytebuddy.description.type.TypeList.Generic.AbstractBase, net.bytebuddy.description.type.TypeList.Generic
                        public TypeList asErasures() {
                            return new LazyTypeList(this.typePool, this.rawTypeDescriptors);
                        }

                        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
                        public int size() {
                            return this.rawTypeDescriptors.size();
                        }

                        @Override // java.util.AbstractList, java.util.List
                        public TypeDescription.Generic get(int i) {
                            return new Malformed(this.typePool, this.rawTypeDescriptors.get(i));
                        }

                        public TokenList(TypePool typePool, List<String> list) {
                            this.typePool = typePool;
                            this.rawTypeDescriptors = list;
                        }
                    }

                    @Override // net.bytebuddy.description.type.TypeDefinition
                    public TypeDescription asErasure() {
                        return TokenizedGenericType.toErasure(this.typePool, this.rawTypeDescriptor);
                    }

                    @Override // net.bytebuddy.description.annotation.AnnotationSource
                    public AnnotationList getDeclaredAnnotations() {
                        throw new GenericSignatureFormatError();
                    }

                    @Override // net.bytebuddy.description.type.TypeDescription.Generic.LazyProjection
                    public TypeDescription.Generic resolve() {
                        throw new GenericSignatureFormatError();
                    }

                    public Malformed(TypePool typePool, String str) {
                        this.typePool = typePool;
                        this.rawTypeDescriptor = str;
                    }
                }

                /* renamed from: of */
                public static TypeDescription.Generic m14786of(TypePool typePool, GenericTypeToken genericTypeToken, String str, @MaybeNull Map<String, List<AnnotationToken>> map, TypeVariableSource typeVariableSource) {
                    if (map == null) {
                        map = Collections.emptyMap();
                    }
                    return new TokenizedGenericType(typePool, genericTypeToken, str, map, typeVariableSource);
                }

                public TokenizedGenericType(TypePool typePool, GenericTypeToken genericTypeToken, String str, Map<String, List<AnnotationToken>> map, TypeVariableSource typeVariableSource) {
                    this.typePool = typePool;
                    this.genericTypeToken = genericTypeToken;
                    this.rawTypeDescriptor = str;
                    this.annotationTokens = map;
                    this.typeVariableSource = typeVariableSource;
                }

                public static TypeDescription toErasure(TypePool typePool, String str) {
                    String className;
                    Type type = Type.getType(str);
                    if (type.getSort() == 9) {
                        className = type.getInternalName().replace('/', GenericTypeToken.INNER_CLASS_PATH);
                    } else {
                        className = type.getClassName();
                    }
                    return typePool.describe(className).resolve();
                }
            }

            /* loaded from: classes.dex */
            public interface TypeContainment {

                /* loaded from: classes.dex */
                public enum SelfContained implements TypeContainment {
                    INSTANCE;

                    @Override // net.bytebuddy.pool.TypePool.Default.LazyTypeDescription.TypeContainment
                    @MaybeNull
                    public MethodDescription.InDefinedShape getEnclosingMethod(TypePool typePool) {
                        return MethodDescription.UNDEFINED;
                    }

                    @Override // net.bytebuddy.pool.TypePool.Default.LazyTypeDescription.TypeContainment
                    @MaybeNull
                    public TypeDescription getEnclosingType(TypePool typePool) {
                        return TypeDescription.UNDEFINED;
                    }

                    @Override // net.bytebuddy.pool.TypePool.Default.LazyTypeDescription.TypeContainment
                    public boolean isLocalType() {
                        return false;
                    }

                    @Override // net.bytebuddy.pool.TypePool.Default.LazyTypeDescription.TypeContainment
                    public boolean isSelfContained() {
                        return true;
                    }
                }

                @MaybeNull
                MethodDescription.InDefinedShape getEnclosingMethod(TypePool typePool);

                @MaybeNull
                TypeDescription getEnclosingType(TypePool typePool);

                boolean isLocalType();

                boolean isSelfContained();

                @HashCodeAndEqualsPlugin.Enhance
                /* loaded from: classes.dex */
                public static class WithinMethod implements TypeContainment {
                    private final String methodDescriptor;
                    private final String methodName;
                    private final String name;

                    public boolean equals(@MaybeNull Object obj) {
                        if (this == obj) {
                            return true;
                        }
                        if (obj != null && getClass() == obj.getClass()) {
                            WithinMethod withinMethod = (WithinMethod) obj;
                            return this.name.equals(withinMethod.name) && this.methodName.equals(withinMethod.methodName) && this.methodDescriptor.equals(withinMethod.methodDescriptor);
                        }
                        return false;
                    }

                    @Override // net.bytebuddy.pool.TypePool.Default.LazyTypeDescription.TypeContainment
                    public TypeDescription getEnclosingType(TypePool typePool) {
                        return typePool.describe(this.name).resolve();
                    }

                    public int hashCode() {
                        return (((((getClass().hashCode() * 31) + this.name.hashCode()) * 31) + this.methodName.hashCode()) * 31) + this.methodDescriptor.hashCode();
                    }

                    @Override // net.bytebuddy.pool.TypePool.Default.LazyTypeDescription.TypeContainment
                    public boolean isLocalType() {
                        return true;
                    }

                    @Override // net.bytebuddy.pool.TypePool.Default.LazyTypeDescription.TypeContainment
                    public boolean isSelfContained() {
                        return false;
                    }

                    public WithinMethod(String str, String str2, String str3) {
                        this.name = str.replace('/', GenericTypeToken.INNER_CLASS_PATH);
                        this.methodName = str2;
                        this.methodDescriptor = str3;
                    }

                    @Override // net.bytebuddy.pool.TypePool.Default.LazyTypeDescription.TypeContainment
                    public MethodDescription.InDefinedShape getEnclosingMethod(TypePool typePool) {
                        TypeDescription enclosingType = getEnclosingType(typePool);
                        if (enclosingType != null) {
                            MethodList filter = enclosingType.getDeclaredMethods().filter(ElementMatchers.hasMethodName(this.methodName).and(ElementMatchers.hasDescriptor(this.methodDescriptor)));
                            if (!filter.isEmpty()) {
                                return (MethodDescription.InDefinedShape) filter.getOnly();
                            }
                            throw new IllegalStateException(this.methodName + this.methodDescriptor + " not declared by " + enclosingType);
                        }
                        throw new IllegalStateException("Could not resolve enclosing type " + this.name);
                    }
                }

                @HashCodeAndEqualsPlugin.Enhance
                /* loaded from: classes.dex */
                public static class WithinType implements TypeContainment {
                    private final boolean localType;
                    private final String name;

                    public boolean equals(@MaybeNull Object obj) {
                        if (this == obj) {
                            return true;
                        }
                        if (obj != null && getClass() == obj.getClass()) {
                            WithinType withinType = (WithinType) obj;
                            return this.localType == withinType.localType && this.name.equals(withinType.name);
                        }
                        return false;
                    }

                    @Override // net.bytebuddy.pool.TypePool.Default.LazyTypeDescription.TypeContainment
                    @MaybeNull
                    public MethodDescription.InDefinedShape getEnclosingMethod(TypePool typePool) {
                        return MethodDescription.UNDEFINED;
                    }

                    @Override // net.bytebuddy.pool.TypePool.Default.LazyTypeDescription.TypeContainment
                    public TypeDescription getEnclosingType(TypePool typePool) {
                        return typePool.describe(this.name).resolve();
                    }

                    public int hashCode() {
                        return (((getClass().hashCode() * 31) + this.name.hashCode()) * 31) + (this.localType ? 1 : 0);
                    }

                    @Override // net.bytebuddy.pool.TypePool.Default.LazyTypeDescription.TypeContainment
                    public boolean isLocalType() {
                        return this.localType;
                    }

                    @Override // net.bytebuddy.pool.TypePool.Default.LazyTypeDescription.TypeContainment
                    public boolean isSelfContained() {
                        return false;
                    }

                    public WithinType(String str, boolean z) {
                        this.name = str.replace('/', GenericTypeToken.INNER_CLASS_PATH);
                        this.localType = z;
                    }
                }
            }

            public LazyTypeDescription(TypePool typePool, int i, int i2, String str, @MaybeNull String str2, @MaybeNull String[] strArr, @MaybeNull String str3, TypeContainment typeContainment, @MaybeNull String str4, List<String> list, boolean z, @MaybeNull String str5, List<String> list2, Map<String, List<AnnotationToken>> map, Map<Integer, Map<String, List<AnnotationToken>>> map2, Map<Integer, Map<String, List<AnnotationToken>>> map3, Map<Integer, Map<Integer, Map<String, List<AnnotationToken>>>> map4, List<AnnotationToken> list3, List<FieldToken> list4, List<MethodToken> list5, List<RecordComponentToken> list6, List<String> list7, ClassFileVersion classFileVersion) {
                String descriptor;
                String replace;
                String className;
                this.typePool = typePool;
                this.actualModifiers = i & (-33);
                this.modifiers = (-131105) & i2;
                this.name = Type.getObjectType(str).getClassName();
                if (str2 == null) {
                    descriptor = NO_TYPE;
                } else {
                    descriptor = Type.getObjectType(str2).getDescriptor();
                }
                this.superClassDescriptor = descriptor;
                this.genericSignature = str3;
                this.signatureResolution = TypeDescription.AbstractBase.RAW_TYPES ? GenericTypeToken.Resolution.Raw.INSTANCE : GenericTypeExtractor.ForSignature.OfType.extract(str3);
                if (strArr == null) {
                    this.interfaceTypeDescriptors = Collections.emptyList();
                } else {
                    this.interfaceTypeDescriptors = new ArrayList(strArr.length);
                    for (String str6 : strArr) {
                        this.interfaceTypeDescriptors.add(Type.getObjectType(str6).getDescriptor());
                    }
                }
                this.typeContainment = typeContainment;
                if (str4 == null) {
                    replace = NO_TYPE;
                } else {
                    replace = str4.replace('/', GenericTypeToken.INNER_CLASS_PATH);
                }
                this.declaringTypeName = replace;
                this.declaredTypes = list;
                this.anonymousType = z;
                if (str5 == null) {
                    className = NO_TYPE;
                } else {
                    className = Type.getObjectType(str5).getClassName();
                }
                this.nestHost = className;
                this.nestMembers = new ArrayList(list2.size());
                for (String str7 : list2) {
                    this.nestMembers.add(Type.getObjectType(str7).getClassName());
                }
                this.superClassAnnotationTokens = map;
                this.interfaceAnnotationTokens = map2;
                this.typeVariableAnnotationTokens = map3;
                this.typeVariableBoundsAnnotationTokens = map4;
                this.annotationTokens = list3;
                this.fieldTokens = list4;
                this.methodTokens = list5;
                this.recordComponentTokens = list6;
                this.permittedSubclasses = new ArrayList(list7.size());
                for (String str8 : list7) {
                    this.permittedSubclasses.add(Type.getObjectType(str8).getDescriptor());
                }
                this.classFileVersion = classFileVersion;
            }

            @Override // net.bytebuddy.description.type.TypeDescription.AbstractBase, net.bytebuddy.description.type.TypeDescription
            public int getActualModifiers(boolean z) {
                return z ? this.actualModifiers | 32 : this.actualModifiers;
            }

            @Override // net.bytebuddy.description.type.TypeDescription.AbstractBase, net.bytebuddy.description.type.TypeDescription
            public ClassFileVersion getClassFileVersion() {
                return this.classFileVersion;
            }

            @Override // net.bytebuddy.description.annotation.AnnotationSource
            public AnnotationList getDeclaredAnnotations() {
                return LazyAnnotationDescription.asList(this.typePool, this.annotationTokens);
            }

            @Override // net.bytebuddy.description.type.TypeDescription, net.bytebuddy.description.type.TypeDefinition
            public FieldList<FieldDescription.InDefinedShape> getDeclaredFields() {
                return new FieldTokenList();
            }

            @Override // net.bytebuddy.description.type.TypeDescription, net.bytebuddy.description.type.TypeDefinition
            public MethodList<MethodDescription.InDefinedShape> getDeclaredMethods() {
                return new MethodTokenList();
            }

            @Override // net.bytebuddy.description.type.TypeDescription
            public TypeList getDeclaredTypes() {
                return new LazyTypeList(this.typePool, this.declaredTypes);
            }

            @Override // net.bytebuddy.description.type.TypeDescription
            @MaybeNull
            public MethodDescription.InDefinedShape getEnclosingMethod() {
                return this.typeContainment.getEnclosingMethod(this.typePool);
            }

            @Override // net.bytebuddy.description.type.TypeDescription
            @MaybeNull
            public TypeDescription getEnclosingType() {
                return this.typeContainment.getEnclosingType(this.typePool);
            }

            @Override // net.bytebuddy.description.type.TypeDescription.AbstractBase, net.bytebuddy.description.NamedElement.WithDescriptor
            @MaybeNull
            public String getGenericSignature() {
                return this.genericSignature;
            }

            @Override // net.bytebuddy.description.type.TypeDefinition
            public TypeList.Generic getInterfaces() {
                return this.signatureResolution.resolveInterfaceTypes(this.interfaceTypeDescriptors, this.typePool, this.interfaceAnnotationTokens, this);
            }

            @Override // net.bytebuddy.description.ModifierReviewable
            public int getModifiers() {
                return this.modifiers;
            }

            @Override // net.bytebuddy.description.NamedElement.WithRuntimeName
            public String getName() {
                return this.name;
            }

            @Override // net.bytebuddy.description.type.TypeDescription
            public TypeList getPermittedSubtypes() {
                return new LazyTypeList(this.typePool, this.permittedSubclasses);
            }

            @Override // net.bytebuddy.description.type.TypeDescription, net.bytebuddy.description.type.TypeDefinition
            public RecordComponentList<RecordComponentDescription.InDefinedShape> getRecordComponents() {
                return new RecordComponentTokenList();
            }

            @Override // net.bytebuddy.description.TypeVariableSource
            public TypeList.Generic getTypeVariables() {
                return this.signatureResolution.resolveTypeVariables(this.typePool, this, this.typeVariableAnnotationTokens, this.typeVariableBoundsAnnotationTokens);
            }

            @Override // net.bytebuddy.description.type.TypeDescription
            public boolean isAnonymousType() {
                return this.anonymousType;
            }

            @Override // net.bytebuddy.description.type.TypeDescription
            public boolean isLocalType() {
                return !this.anonymousType && this.typeContainment.isLocalType();
            }

            @Override // net.bytebuddy.description.type.TypeDefinition
            public boolean isRecord() {
                return (this.actualModifiers & 65536) != 0 && JavaType.RECORD.getTypeStub().getDescriptor().equals(this.superClassDescriptor);
            }

            @Override // net.bytebuddy.description.type.TypeDescription.AbstractBase, net.bytebuddy.description.type.TypeDescription
            public boolean isSealed() {
                return !this.permittedSubclasses.isEmpty();
            }

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static class AnnotationToken {
                private final String descriptor;
                private final Map<String, AnnotationValue<?, ?>> values;

                /* loaded from: classes.dex */
                public interface Resolution {
                    boolean isResolved();

                    AnnotationDescription resolve();

                    @HashCodeAndEqualsPlugin.Enhance
                    /* loaded from: classes.dex */
                    public static class Illegal implements Resolution {
                        private final String annotationType;

                        public boolean equals(@MaybeNull Object obj) {
                            if (this == obj) {
                                return true;
                            }
                            return obj != null && getClass() == obj.getClass() && this.annotationType.equals(((Illegal) obj).annotationType);
                        }

                        public int hashCode() {
                            return (getClass().hashCode() * 31) + this.annotationType.hashCode();
                        }

                        @Override // net.bytebuddy.pool.TypePool.Default.LazyTypeDescription.AnnotationToken.Resolution
                        public boolean isResolved() {
                            return false;
                        }

                        @Override // net.bytebuddy.pool.TypePool.Default.LazyTypeDescription.AnnotationToken.Resolution
                        public AnnotationDescription resolve() {
                            throw new IllegalStateException("Annotation type is not available: " + this.annotationType);
                        }

                        public Illegal(String str) {
                            this.annotationType = str;
                        }
                    }

                    @HashCodeAndEqualsPlugin.Enhance
                    /* loaded from: classes.dex */
                    public static class Simple implements Resolution {
                        private final AnnotationDescription annotationDescription;

                        public boolean equals(@MaybeNull Object obj) {
                            if (this == obj) {
                                return true;
                            }
                            return obj != null && getClass() == obj.getClass() && this.annotationDescription.equals(((Simple) obj).annotationDescription);
                        }

                        public int hashCode() {
                            return (getClass().hashCode() * 31) + this.annotationDescription.hashCode();
                        }

                        @Override // net.bytebuddy.pool.TypePool.Default.LazyTypeDescription.AnnotationToken.Resolution
                        public boolean isResolved() {
                            return true;
                        }

                        @Override // net.bytebuddy.pool.TypePool.Default.LazyTypeDescription.AnnotationToken.Resolution
                        public AnnotationDescription resolve() {
                            return this.annotationDescription;
                        }

                        public Simple(AnnotationDescription annotationDescription) {
                            this.annotationDescription = annotationDescription;
                        }
                    }
                }

                public boolean equals(@MaybeNull Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    if (obj != null && getClass() == obj.getClass()) {
                        AnnotationToken annotationToken = (AnnotationToken) obj;
                        return this.descriptor.equals(annotationToken.descriptor) && this.values.equals(annotationToken.values);
                    }
                    return false;
                }

                public String getBinaryName() {
                    String str = this.descriptor;
                    return str.substring(1, str.length() - 1).replace('/', GenericTypeToken.INNER_CLASS_PATH);
                }

                public int hashCode() {
                    return (((getClass().hashCode() * 31) + this.descriptor.hashCode()) * 31) + this.values.hashCode();
                }

                public AnnotationToken(String str, Map<String, AnnotationValue<?, ?>> map) {
                    this.descriptor = str;
                    this.values = map;
                }

                /* JADX INFO: Access modifiers changed from: private */
                public Resolution toAnnotationDescription(TypePool typePool) {
                    Resolution describe = typePool.describe(getBinaryName());
                    if (describe.isResolved()) {
                        return new Resolution.Simple(new LazyAnnotationDescription(typePool, describe.resolve(), this.values));
                    }
                    return new Resolution.Illegal(getBinaryName());
                }
            }

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static class FieldToken {
                private final List<AnnotationToken> annotationTokens;
                private final String descriptor;
                @UnknownNull
                private final String genericSignature;
                private final int modifiers;
                private final String name;
                private final GenericTypeToken.Resolution.ForField signatureResolution;
                private final Map<String, List<AnnotationToken>> typeAnnotationTokens;

                /* JADX INFO: Access modifiers changed from: private */
                public LazyFieldDescription toFieldDescription(LazyTypeDescription lazyTypeDescription) {
                    lazyTypeDescription.getClass();
                    return new LazyFieldDescription(this.name, this.modifiers, this.descriptor, this.genericSignature, this.signatureResolution, this.typeAnnotationTokens, this.annotationTokens);
                }

                public boolean equals(@MaybeNull Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    if (obj != null && getClass() == obj.getClass()) {
                        FieldToken fieldToken = (FieldToken) obj;
                        return this.modifiers == fieldToken.modifiers && this.name.equals(fieldToken.name) && this.descriptor.equals(fieldToken.descriptor) && this.genericSignature.equals(fieldToken.genericSignature) && this.signatureResolution.equals(fieldToken.signatureResolution) && this.typeAnnotationTokens.equals(fieldToken.typeAnnotationTokens) && this.annotationTokens.equals(fieldToken.annotationTokens);
                    }
                    return false;
                }

                public int hashCode() {
                    return (((((((((((((getClass().hashCode() * 31) + this.name.hashCode()) * 31) + this.modifiers) * 31) + this.descriptor.hashCode()) * 31) + this.genericSignature.hashCode()) * 31) + this.signatureResolution.hashCode()) * 31) + this.typeAnnotationTokens.hashCode()) * 31) + this.annotationTokens.hashCode();
                }

                public FieldToken(String str, int i, String str2, @MaybeNull String str3, Map<String, List<AnnotationToken>> map, List<AnnotationToken> list) {
                    GenericTypeToken.Resolution.ForField extract;
                    this.modifiers = i & (-131073);
                    this.name = str;
                    this.descriptor = str2;
                    this.genericSignature = str3;
                    if (TypeDescription.AbstractBase.RAW_TYPES) {
                        extract = GenericTypeToken.Resolution.Raw.INSTANCE;
                    } else {
                        extract = GenericTypeExtractor.ForSignature.OfField.extract(str3);
                    }
                    this.signatureResolution = extract;
                    this.typeAnnotationTokens = map;
                    this.annotationTokens = list;
                }
            }

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static class RecordComponentToken {
                private final List<AnnotationToken> annotationTokens;
                private final String descriptor;
                @UnknownNull
                private final String genericSignature;
                private final String name;
                private final GenericTypeToken.Resolution.ForRecordComponent signatureResolution;
                private final Map<String, List<AnnotationToken>> typeAnnotationTokens;

                /* JADX INFO: Access modifiers changed from: private */
                public RecordComponentDescription.InDefinedShape toRecordComponentDescription(LazyTypeDescription lazyTypeDescription) {
                    lazyTypeDescription.getClass();
                    return new LazyRecordComponentDescription(this.name, this.descriptor, this.genericSignature, this.signatureResolution, this.typeAnnotationTokens, this.annotationTokens);
                }

                public boolean equals(@MaybeNull Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    if (obj != null && getClass() == obj.getClass()) {
                        RecordComponentToken recordComponentToken = (RecordComponentToken) obj;
                        return this.name.equals(recordComponentToken.name) && this.descriptor.equals(recordComponentToken.descriptor) && this.genericSignature.equals(recordComponentToken.genericSignature) && this.signatureResolution.equals(recordComponentToken.signatureResolution) && this.typeAnnotationTokens.equals(recordComponentToken.typeAnnotationTokens) && this.annotationTokens.equals(recordComponentToken.annotationTokens);
                    }
                    return false;
                }

                public int hashCode() {
                    return (((((((((((getClass().hashCode() * 31) + this.name.hashCode()) * 31) + this.descriptor.hashCode()) * 31) + this.genericSignature.hashCode()) * 31) + this.signatureResolution.hashCode()) * 31) + this.typeAnnotationTokens.hashCode()) * 31) + this.annotationTokens.hashCode();
                }

                public RecordComponentToken(String str, String str2, @MaybeNull String str3, Map<String, List<AnnotationToken>> map, List<AnnotationToken> list) {
                    GenericTypeToken.Resolution.ForRecordComponent extract;
                    this.name = str;
                    this.descriptor = str2;
                    this.genericSignature = str3;
                    if (TypeDescription.AbstractBase.RAW_TYPES) {
                        extract = GenericTypeToken.Resolution.Raw.INSTANCE;
                    } else {
                        extract = GenericTypeExtractor.ForSignature.OfRecordComponent.extract(str3);
                    }
                    this.signatureResolution = extract;
                    this.typeAnnotationTokens = map;
                    this.annotationTokens = list;
                }
            }

            @Override // net.bytebuddy.description.type.TypeDescription, net.bytebuddy.description.DeclaredByType
            @MaybeNull
            public TypeDescription getDeclaringType() {
                String str = this.declaringTypeName;
                return str == null ? TypeDescription.UNDEFINED : this.typePool.describe(str).resolve();
            }

            @Override // net.bytebuddy.description.type.TypeDescription
            public TypeDescription getNestHost() {
                String str = this.nestHost;
                if (str == null) {
                    return this;
                }
                return this.typePool.describe(str).resolve();
            }

            @Override // net.bytebuddy.description.type.TypeDescription
            public TypeList getNestMembers() {
                String str = this.nestHost;
                if (str == null) {
                    return new LazyNestMemberList(this, this.typePool, this.nestMembers);
                }
                return this.typePool.describe(str).resolve().getNestMembers();
            }

            @Override // net.bytebuddy.description.type.TypeDefinition
            @MaybeNull
            public TypeDescription.Generic getSuperClass() {
                if (this.superClassDescriptor != null && !isInterface()) {
                    return this.signatureResolution.resolveSuperClass(this.superClassDescriptor, this.typePool, this.superClassAnnotationTokens, this);
                }
                return TypeDescription.Generic.UNDEFINED;
            }

            @Override // net.bytebuddy.description.type.TypeDescription
            @MaybeNull
            public PackageDescription getPackage() {
                String substring;
                String name = getName();
                int lastIndexOf = name.lastIndexOf(46);
                TypePool typePool = this.typePool;
                if (lastIndexOf == -1) {
                    substring = "";
                } else {
                    substring = name.substring(0, lastIndexOf);
                }
                return new LazyPackageDescription(typePool, substring);
            }
        }

        /* loaded from: classes.dex */
        public static class ParameterBag {
            private final Map<Integer, String> parameterRegistry = new HashMap();
            private final Type[] parameterType;

            public void register(int i, String str) {
                this.parameterRegistry.put(Integer.valueOf(i), str);
            }

            public List<LazyTypeDescription.MethodToken.ParameterToken> resolve(boolean z) {
                int size;
                Type[] typeArr;
                LazyTypeDescription.MethodToken.ParameterToken parameterToken;
                ArrayList arrayList = new ArrayList(this.parameterType.length);
                if (z) {
                    size = StackSize.ZERO.getSize();
                } else {
                    size = StackSize.SINGLE.getSize();
                }
                for (Type type : this.parameterType) {
                    String str = this.parameterRegistry.get(Integer.valueOf(size));
                    if (str == null) {
                        parameterToken = new LazyTypeDescription.MethodToken.ParameterToken();
                    } else {
                        parameterToken = new LazyTypeDescription.MethodToken.ParameterToken(str);
                    }
                    arrayList.add(parameterToken);
                    size += type.getSize();
                }
                return arrayList;
            }

            public ParameterBag(Type[] typeArr) {
                this.parameterType = typeArr;
            }
        }

        /* loaded from: classes.dex */
        public class TypeExtractor extends ClassVisitor {
            private static final int REAL_MODIFIER_MASK = 65535;
            private static final int SUPER_CLASS_INDEX = -1;
            private int actualModifiers;
            private final List<LazyTypeDescription.AnnotationToken> annotationTokens;
            private boolean anonymousType;
            @MaybeNull
            private ClassFileVersion classFileVersion;
            private final List<String> declaredTypes;
            @MaybeNull
            private String declaringTypeName;
            private final List<LazyTypeDescription.FieldToken> fieldTokens;
            @MaybeNull
            private String genericSignature;
            @MaybeNull
            private String[] interfaceName;
            @MaybeNull
            private String internalName;
            private final List<LazyTypeDescription.MethodToken> methodTokens;
            private int modifiers;
            @MaybeNull
            private String nestHost;
            private final List<String> nestMembers;
            private final List<String> permittedSubclasses;
            private final List<LazyTypeDescription.RecordComponentToken> recordComponentTokens;
            @MaybeNull
            private String superClassName;
            private final Map<Integer, Map<String, List<LazyTypeDescription.AnnotationToken>>> superTypeAnnotationTokens;
            private LazyTypeDescription.TypeContainment typeContainment;
            private final Map<Integer, Map<String, List<LazyTypeDescription.AnnotationToken>>> typeVariableAnnotationTokens;
            private final Map<Integer, Map<Integer, Map<String, List<LazyTypeDescription.AnnotationToken>>>> typeVariableBoundsAnnotationTokens;

            /* loaded from: classes.dex */
            public class AnnotationExtractor extends AnnotationVisitor {
                private final AnnotationRegistrant annotationRegistrant;
                private final ComponentTypeLocator componentTypeLocator;

                /* loaded from: classes.dex */
                public class AnnotationLookup implements AnnotationRegistrant {
                    private final String descriptor;
                    private final String name;
                    private final Map<String, AnnotationValue<?, ?>> values = new HashMap();

                    @Override // net.bytebuddy.pool.TypePool.Default.AnnotationRegistrant
                    public void onComplete() {
                        AnnotationExtractor.this.annotationRegistrant.register(this.name, new LazyTypeDescription.LazyAnnotationValue.ForAnnotationValue(Default.this, new LazyTypeDescription.AnnotationToken(this.descriptor, this.values)));
                    }

                    @Override // net.bytebuddy.pool.TypePool.Default.AnnotationRegistrant
                    public void register(String str, AnnotationValue<?, ?> annotationValue) {
                        this.values.put(str, annotationValue);
                    }

                    public AnnotationLookup(String str, String str2) {
                        this.descriptor = str;
                        this.name = str2;
                    }
                }

                /* loaded from: classes.dex */
                public class ArrayLookup implements AnnotationRegistrant {
                    private final AbstractBase.ComponentTypeReference componentTypeReference;
                    private final String name;
                    private final List<AnnotationValue<?, ?>> values;

                    @Override // net.bytebuddy.pool.TypePool.Default.AnnotationRegistrant
                    public void onComplete() {
                        AnnotationExtractor.this.annotationRegistrant.register(this.name, new LazyTypeDescription.LazyAnnotationValue.ForArray(Default.this, this.componentTypeReference, this.values));
                    }

                    @Override // net.bytebuddy.pool.TypePool.Default.AnnotationRegistrant
                    public void register(String str, AnnotationValue<?, ?> annotationValue) {
                        this.values.add(annotationValue);
                    }

                    private ArrayLookup(String str, AbstractBase.ComponentTypeReference componentTypeReference) {
                        this.name = str;
                        this.componentTypeReference = componentTypeReference;
                        this.values = new ArrayList();
                    }
                }

                public AnnotationExtractor(TypeExtractor typeExtractor, String str, List<LazyTypeDescription.AnnotationToken> list, ComponentTypeLocator componentTypeLocator) {
                    this(new AnnotationRegistrant.ForByteCodeElement(str, list), componentTypeLocator);
                }

                @Override // net.bytebuddy.jar.asm.AnnotationVisitor
                public AnnotationVisitor visitAnnotation(String str, String str2) {
                    return new AnnotationExtractor(new AnnotationLookup(str2, str), new ComponentTypeLocator.ForAnnotationProperty(Default.this, str2));
                }

                @Override // net.bytebuddy.jar.asm.AnnotationVisitor
                public AnnotationVisitor visitArray(String str) {
                    return new AnnotationExtractor(new ArrayLookup(str, this.componentTypeLocator.bind(str)), ComponentTypeLocator.Illegal.INSTANCE);
                }

                @Override // net.bytebuddy.jar.asm.AnnotationVisitor
                public void visitEnd() {
                    this.annotationRegistrant.onComplete();
                }

                public AnnotationExtractor(TypeExtractor typeExtractor, String str, int i, Map<Integer, List<LazyTypeDescription.AnnotationToken>> map, ComponentTypeLocator componentTypeLocator) {
                    this(new AnnotationRegistrant.ForByteCodeElement.WithIndex(str, i, map), componentTypeLocator);
                }

                @Override // net.bytebuddy.jar.asm.AnnotationVisitor
                public void visit(String str, Object obj) {
                    String className;
                    if (obj instanceof Type) {
                        Type type = (Type) obj;
                        AnnotationRegistrant annotationRegistrant = this.annotationRegistrant;
                        Default r2 = Default.this;
                        if (type.getSort() == 9) {
                            className = type.getInternalName().replace('/', LazyTypeDescription.GenericTypeToken.INNER_CLASS_PATH);
                        } else {
                            className = type.getClassName();
                        }
                        annotationRegistrant.register(str, new LazyTypeDescription.LazyAnnotationValue.ForTypeValue(r2, className));
                        return;
                    }
                    this.annotationRegistrant.register(str, AnnotationValue.ForConstant.m15228of(obj));
                }

                @Override // net.bytebuddy.jar.asm.AnnotationVisitor
                public void visitEnum(String str, String str2, String str3) {
                    this.annotationRegistrant.register(str, new LazyTypeDescription.LazyAnnotationValue.ForEnumerationValue(Default.this, str2.substring(1, str2.length() - 1).replace('/', LazyTypeDescription.GenericTypeToken.INNER_CLASS_PATH), str3));
                }

                public AnnotationExtractor(AnnotationRegistrant annotationRegistrant, ComponentTypeLocator componentTypeLocator) {
                    super(OpenedClassReader.ASM_API);
                    this.annotationRegistrant = annotationRegistrant;
                    this.componentTypeLocator = componentTypeLocator;
                }
            }

            /* loaded from: classes.dex */
            public class FieldExtractor extends FieldVisitor {
                private final List<LazyTypeDescription.AnnotationToken> annotationTokens;
                private final String descriptor;
                @MaybeNull
                private final String genericSignature;
                private final String internalName;
                private final int modifiers;
                private final Map<String, List<LazyTypeDescription.AnnotationToken>> typeAnnotationTokens;

                @Override // net.bytebuddy.jar.asm.FieldVisitor
                public AnnotationVisitor visitAnnotation(String str, boolean z) {
                    TypeExtractor typeExtractor = TypeExtractor.this;
                    return new AnnotationExtractor(typeExtractor, str, this.annotationTokens, new ComponentTypeLocator.ForAnnotationProperty(Default.this, str));
                }

                @Override // net.bytebuddy.jar.asm.FieldVisitor
                public void visitEnd() {
                    TypeExtractor.this.fieldTokens.add(new LazyTypeDescription.FieldToken(this.internalName, this.modifiers, this.descriptor, this.genericSignature, this.typeAnnotationTokens, this.annotationTokens));
                }

                public FieldExtractor(int i, String str, String str2, @MaybeNull String str3) {
                    super(OpenedClassReader.ASM_API);
                    this.modifiers = i;
                    this.internalName = str;
                    this.descriptor = str2;
                    this.genericSignature = str3;
                    this.typeAnnotationTokens = new HashMap();
                    this.annotationTokens = new ArrayList();
                }

                @Override // net.bytebuddy.jar.asm.FieldVisitor
                @MaybeNull
                public AnnotationVisitor visitTypeAnnotation(int i, @MaybeNull TypePath typePath, String str, boolean z) {
                    TypeReference typeReference = new TypeReference(i);
                    if (typeReference.getSort() == 19) {
                        AnnotationRegistrant.ForTypeVariable forTypeVariable = new AnnotationRegistrant.ForTypeVariable(str, typePath, this.typeAnnotationTokens);
                        TypeExtractor typeExtractor = TypeExtractor.this;
                        return new AnnotationExtractor(forTypeVariable, new ComponentTypeLocator.ForAnnotationProperty(Default.this, str));
                    }
                    throw new IllegalStateException("Unexpected type reference on field: " + typeReference.getSort());
                }
            }

            /* loaded from: classes.dex */
            public class MethodExtractor extends MethodVisitor implements AnnotationRegistrant {
                private final List<LazyTypeDescription.AnnotationToken> annotationTokens;
                @MaybeNull
                private AnnotationValue<?, ?> defaultValue;
                private final String descriptor;
                @MaybeNull
                private final String[] exceptionName;
                private final Map<Integer, Map<String, List<LazyTypeDescription.AnnotationToken>>> exceptionTypeAnnotationTokens;
                @MaybeNull
                private Label firstLabel;
                @MaybeNull
                private final String genericSignature;
                private final String internalName;
                private int invisibleParameterShift;
                private final ParameterBag legacyParameterBag;
                private final int modifiers;
                private final Map<Integer, List<LazyTypeDescription.AnnotationToken>> parameterAnnotationTokens;
                private final List<LazyTypeDescription.MethodToken.ParameterToken> parameterTokens;
                private final Map<Integer, Map<String, List<LazyTypeDescription.AnnotationToken>>> parameterTypeAnnotationTokens;
                private final Map<String, List<LazyTypeDescription.AnnotationToken>> receiverTypeAnnotationTokens;
                private final Map<String, List<LazyTypeDescription.AnnotationToken>> returnTypeAnnotationTokens;
                private final Map<Integer, Map<String, List<LazyTypeDescription.AnnotationToken>>> typeVariableAnnotationTokens;
                private final Map<Integer, Map<Integer, Map<String, List<LazyTypeDescription.AnnotationToken>>>> typeVariableBoundAnnotationTokens;
                private int visibleParameterShift;

                @Override // net.bytebuddy.pool.TypePool.Default.AnnotationRegistrant
                public void onComplete() {
                }

                @Override // net.bytebuddy.pool.TypePool.Default.AnnotationRegistrant
                public void register(String str, AnnotationValue<?, ?> annotationValue) {
                    this.defaultValue = annotationValue;
                }

                @Override // net.bytebuddy.jar.asm.MethodVisitor
                public AnnotationVisitor visitAnnotation(String str, boolean z) {
                    TypeExtractor typeExtractor = TypeExtractor.this;
                    return new AnnotationExtractor(typeExtractor, str, this.annotationTokens, new ComponentTypeLocator.ForAnnotationProperty(Default.this, str));
                }

                @Override // net.bytebuddy.jar.asm.MethodVisitor
                public AnnotationVisitor visitAnnotationDefault() {
                    return new AnnotationExtractor(this, new ComponentTypeLocator.ForArrayType(this.descriptor));
                }

                @Override // net.bytebuddy.jar.asm.MethodVisitor
                public void visitParameter(String str, int i) {
                    this.parameterTokens.add(new LazyTypeDescription.MethodToken.ParameterToken(str, Integer.valueOf(i)));
                }

                @Override // net.bytebuddy.jar.asm.MethodVisitor
                public AnnotationVisitor visitParameterAnnotation(int i, String str, boolean z) {
                    TypeExtractor typeExtractor = TypeExtractor.this;
                    return new AnnotationExtractor(typeExtractor, str, i + (z ? this.visibleParameterShift : this.invisibleParameterShift), this.parameterAnnotationTokens, new ComponentTypeLocator.ForAnnotationProperty(Default.this, str));
                }

                public MethodExtractor(int i, String str, String str2, @MaybeNull String str3, @MaybeNull String[] strArr) {
                    super(OpenedClassReader.ASM_API);
                    this.modifiers = i;
                    this.internalName = str;
                    this.descriptor = str2;
                    this.genericSignature = str3;
                    this.exceptionName = strArr;
                    this.typeVariableAnnotationTokens = new HashMap();
                    this.typeVariableBoundAnnotationTokens = new HashMap();
                    this.returnTypeAnnotationTokens = new HashMap();
                    this.parameterTypeAnnotationTokens = new HashMap();
                    this.exceptionTypeAnnotationTokens = new HashMap();
                    this.receiverTypeAnnotationTokens = new HashMap();
                    this.annotationTokens = new ArrayList();
                    this.parameterAnnotationTokens = new HashMap();
                    this.parameterTokens = new ArrayList();
                    this.legacyParameterBag = new ParameterBag(Type.getMethodType(str2).getArgumentTypes());
                }

                @Override // net.bytebuddy.jar.asm.MethodVisitor
                public void visitAnnotableParameterCount(int i, boolean z) {
                    if (z) {
                        this.visibleParameterShift = Type.getMethodType(this.descriptor).getArgumentTypes().length - i;
                    } else {
                        this.invisibleParameterShift = Type.getMethodType(this.descriptor).getArgumentTypes().length - i;
                    }
                }

                @Override // net.bytebuddy.jar.asm.MethodVisitor
                public void visitEnd() {
                    List list;
                    List<LazyTypeDescription.MethodToken.ParameterToken> list2;
                    boolean z;
                    List list3 = TypeExtractor.this.methodTokens;
                    String str = this.internalName;
                    int i = this.modifiers;
                    String str2 = this.descriptor;
                    String str3 = this.genericSignature;
                    String[] strArr = this.exceptionName;
                    Map<Integer, Map<String, List<LazyTypeDescription.AnnotationToken>>> map = this.typeVariableAnnotationTokens;
                    Map<Integer, Map<Integer, Map<String, List<LazyTypeDescription.AnnotationToken>>>> map2 = this.typeVariableBoundAnnotationTokens;
                    Map<String, List<LazyTypeDescription.AnnotationToken>> map3 = this.returnTypeAnnotationTokens;
                    Map<Integer, Map<String, List<LazyTypeDescription.AnnotationToken>>> map4 = this.parameterTypeAnnotationTokens;
                    Map<Integer, Map<String, List<LazyTypeDescription.AnnotationToken>>> map5 = this.exceptionTypeAnnotationTokens;
                    Map<String, List<LazyTypeDescription.AnnotationToken>> map6 = this.receiverTypeAnnotationTokens;
                    List<LazyTypeDescription.AnnotationToken> list4 = this.annotationTokens;
                    Map<Integer, List<LazyTypeDescription.AnnotationToken>> map7 = this.parameterAnnotationTokens;
                    if (this.parameterTokens.isEmpty()) {
                        ParameterBag parameterBag = this.legacyParameterBag;
                        list = list3;
                        if ((this.modifiers & 8) != 0) {
                            z = true;
                        } else {
                            z = false;
                        }
                        list2 = parameterBag.resolve(z);
                    } else {
                        list = list3;
                        list2 = this.parameterTokens;
                    }
                    List<LazyTypeDescription.MethodToken.ParameterToken> list5 = list2;
                    list.add(new LazyTypeDescription.MethodToken(str, i, str2, str3, strArr, map, map2, map3, map4, map5, map6, list4, map7, list5, this.defaultValue));
                }

                @Override // net.bytebuddy.jar.asm.MethodVisitor
                public void visitLabel(Label label) {
                    if (Default.this.readerMode.isExtended() && this.firstLabel == null) {
                        this.firstLabel = label;
                    }
                }

                @Override // net.bytebuddy.jar.asm.MethodVisitor
                public void visitLocalVariable(String str, String str2, String str3, Label label, Label label2, int i) {
                    if (Default.this.readerMode.isExtended() && label == this.firstLabel) {
                        this.legacyParameterBag.register(i, str);
                    }
                }

                @Override // net.bytebuddy.jar.asm.MethodVisitor
                @MaybeNull
                public AnnotationVisitor visitTypeAnnotation(int i, TypePath typePath, String str, boolean z) {
                    AnnotationRegistrant withIndex;
                    TypeReference typeReference = new TypeReference(i);
                    int sort = typeReference.getSort();
                    if (sort != 1) {
                        switch (sort) {
                            case 18:
                                withIndex = new AnnotationRegistrant.ForTypeVariable.WithIndex.DoubleIndexed(str, typePath, typeReference.getTypeParameterBoundIndex(), typeReference.getTypeParameterIndex(), this.typeVariableBoundAnnotationTokens);
                                break;
                            case 19:
                                return null;
                            case 20:
                                withIndex = new AnnotationRegistrant.ForTypeVariable(str, typePath, this.returnTypeAnnotationTokens);
                                break;
                            case 21:
                                withIndex = new AnnotationRegistrant.ForTypeVariable(str, typePath, this.receiverTypeAnnotationTokens);
                                break;
                            case 22:
                                withIndex = new AnnotationRegistrant.ForTypeVariable.WithIndex(str, typePath, typeReference.getFormalParameterIndex(), this.parameterTypeAnnotationTokens);
                                break;
                            case 23:
                                withIndex = new AnnotationRegistrant.ForTypeVariable.WithIndex(str, typePath, typeReference.getExceptionIndex(), this.exceptionTypeAnnotationTokens);
                                break;
                            default:
                                throw new IllegalStateException("Unexpected type reference on method: " + typeReference.getSort());
                        }
                    } else {
                        withIndex = new AnnotationRegistrant.ForTypeVariable.WithIndex(str, typePath, typeReference.getTypeParameterIndex(), this.typeVariableAnnotationTokens);
                    }
                    TypeExtractor typeExtractor = TypeExtractor.this;
                    return new AnnotationExtractor(withIndex, new ComponentTypeLocator.ForAnnotationProperty(Default.this, str));
                }
            }

            /* loaded from: classes.dex */
            public class RecordComponentExtractor extends RecordComponentVisitor {
                private final List<LazyTypeDescription.AnnotationToken> annotationTokens;
                private final String descriptor;
                @MaybeNull
                private final String genericSignature;
                private final String name;
                private final Map<String, List<LazyTypeDescription.AnnotationToken>> typeAnnotationTokens;

                @Override // net.bytebuddy.jar.asm.RecordComponentVisitor
                public AnnotationVisitor visitAnnotation(String str, boolean z) {
                    TypeExtractor typeExtractor = TypeExtractor.this;
                    return new AnnotationExtractor(typeExtractor, str, this.annotationTokens, new ComponentTypeLocator.ForAnnotationProperty(Default.this, str));
                }

                @Override // net.bytebuddy.jar.asm.RecordComponentVisitor
                public void visitEnd() {
                    TypeExtractor.this.recordComponentTokens.add(new LazyTypeDescription.RecordComponentToken(this.name, this.descriptor, this.genericSignature, this.typeAnnotationTokens, this.annotationTokens));
                }

                public RecordComponentExtractor(String str, String str2, @MaybeNull String str3) {
                    super(OpenedClassReader.ASM_API);
                    this.name = str;
                    this.descriptor = str2;
                    this.genericSignature = str3;
                    this.typeAnnotationTokens = new HashMap();
                    this.annotationTokens = new ArrayList();
                }

                @Override // net.bytebuddy.jar.asm.RecordComponentVisitor
                public AnnotationVisitor visitTypeAnnotation(int i, TypePath typePath, String str, boolean z) {
                    TypeReference typeReference = new TypeReference(i);
                    if (typeReference.getSort() == 19) {
                        AnnotationRegistrant.ForTypeVariable forTypeVariable = new AnnotationRegistrant.ForTypeVariable(str, typePath, this.typeAnnotationTokens);
                        TypeExtractor typeExtractor = TypeExtractor.this;
                        return new AnnotationExtractor(forTypeVariable, new ComponentTypeLocator.ForAnnotationProperty(Default.this, str));
                    }
                    throw new IllegalStateException("Unexpected type reference on record component: " + typeReference.getSort());
                }
            }

            @Override // net.bytebuddy.jar.asm.ClassVisitor
            public AnnotationVisitor visitAnnotation(String str, boolean z) {
                return new AnnotationExtractor(this, str, this.annotationTokens, new ComponentTypeLocator.ForAnnotationProperty(Default.this, str));
            }

            @Override // net.bytebuddy.jar.asm.ClassVisitor
            public FieldVisitor visitField(int i, String str, String str2, @MaybeNull String str3, @MaybeNull Object obj) {
                return new FieldExtractor(i & 65535, str, str2, str3);
            }

            @Override // net.bytebuddy.jar.asm.ClassVisitor
            public void visitNestHost(String str) {
                this.nestHost = str;
            }

            @Override // net.bytebuddy.jar.asm.ClassVisitor
            public void visitNestMember(String str) {
                this.nestMembers.add(str);
            }

            @Override // net.bytebuddy.jar.asm.ClassVisitor
            public void visitPermittedSubclass(String str) {
                this.permittedSubclasses.add(str);
            }

            @Override // net.bytebuddy.jar.asm.ClassVisitor
            public RecordComponentVisitor visitRecordComponent(String str, String str2, @MaybeNull String str3) {
                return new RecordComponentExtractor(str, str2, str3);
            }

            public TypeExtractor() {
                super(OpenedClassReader.ASM_API);
                this.superTypeAnnotationTokens = new HashMap();
                this.typeVariableAnnotationTokens = new HashMap();
                this.typeVariableBoundsAnnotationTokens = new HashMap();
                this.annotationTokens = new ArrayList();
                this.fieldTokens = new ArrayList();
                this.methodTokens = new ArrayList();
                this.recordComponentTokens = new ArrayList();
                this.anonymousType = false;
                this.typeContainment = LazyTypeDescription.TypeContainment.SelfContained.INSTANCE;
                this.nestMembers = new ArrayList();
                this.declaredTypes = new ArrayList();
                this.permittedSubclasses = new ArrayList();
            }

            public TypeDescription toTypeDescription() {
                if (this.internalName != null && this.classFileVersion != null) {
                    Map<String, List<LazyTypeDescription.AnnotationToken>> remove = this.superTypeAnnotationTokens.remove(-1);
                    Default r3 = Default.this;
                    int i = this.actualModifiers;
                    int i2 = this.modifiers;
                    String str = this.internalName;
                    String str2 = this.superClassName;
                    String[] strArr = this.interfaceName;
                    String str3 = this.genericSignature;
                    LazyTypeDescription.TypeContainment typeContainment = this.typeContainment;
                    String str4 = this.declaringTypeName;
                    List<String> list = this.declaredTypes;
                    boolean z = this.anonymousType;
                    String str5 = this.nestHost;
                    List<String> list2 = this.nestMembers;
                    if (remove == null) {
                        remove = Collections.emptyMap();
                    }
                    return new LazyTypeDescription(r3, i, i2, str, str2, strArr, str3, typeContainment, str4, list, z, str5, list2, remove, this.superTypeAnnotationTokens, this.typeVariableAnnotationTokens, this.typeVariableBoundsAnnotationTokens, this.annotationTokens, this.fieldTokens, this.methodTokens, this.recordComponentTokens, this.permittedSubclasses, this.classFileVersion);
                }
                throw new IllegalStateException("Internal name or class file version were not set");
            }

            @Override // net.bytebuddy.jar.asm.ClassVisitor
            public void visitInnerClass(String str, @MaybeNull String str2, @MaybeNull String str3, int i) {
                if (str.equals(this.internalName)) {
                    if (str2 != null) {
                        this.declaringTypeName = str2;
                        if (this.typeContainment.isSelfContained()) {
                            this.typeContainment = new LazyTypeDescription.TypeContainment.WithinType(str2, false);
                        }
                    }
                    if (str3 == null && !this.typeContainment.isSelfContained()) {
                        this.anonymousType = true;
                    }
                    this.modifiers = 65535 & i;
                } else if (str2 != null && str3 != null && str2.equals(this.internalName)) {
                    List<String> list = this.declaredTypes;
                    list.add("L" + str + ";");
                }
            }

            @Override // net.bytebuddy.jar.asm.ClassVisitor
            @MaybeNull
            public MethodVisitor visitMethod(int i, String str, String str2, @MaybeNull String str3, @MaybeNull String[] strArr) {
                if (str.equals(MethodDescription.TYPE_INITIALIZER_INTERNAL_NAME)) {
                    return Default.IGNORE_METHOD;
                }
                return new MethodExtractor(i & 65535, str, str2, str3, strArr);
            }

            @Override // net.bytebuddy.jar.asm.ClassVisitor
            public void visitOuterClass(@MaybeNull String str, @MaybeNull String str2, String str3) {
                if (str2 != null && !str2.equals(MethodDescription.TYPE_INITIALIZER_INTERNAL_NAME)) {
                    this.typeContainment = new LazyTypeDescription.TypeContainment.WithinMethod(str, str2, str3);
                } else if (str != null) {
                    this.typeContainment = new LazyTypeDescription.TypeContainment.WithinType(str, true);
                }
            }

            @Override // net.bytebuddy.jar.asm.ClassVisitor
            public AnnotationVisitor visitTypeAnnotation(int i, @MaybeNull TypePath typePath, String str, boolean z) {
                AnnotationRegistrant withIndex;
                TypeReference typeReference = new TypeReference(i);
                int sort = typeReference.getSort();
                if (sort != 0) {
                    if (sort != 16) {
                        if (sort == 17) {
                            withIndex = new AnnotationRegistrant.ForTypeVariable.WithIndex.DoubleIndexed(str, typePath, typeReference.getTypeParameterBoundIndex(), typeReference.getTypeParameterIndex(), this.typeVariableBoundsAnnotationTokens);
                        } else {
                            throw new IllegalArgumentException("Unexpected type reference: " + typeReference.getSort());
                        }
                    } else {
                        withIndex = new AnnotationRegistrant.ForTypeVariable.WithIndex(str, typePath, typeReference.getSuperTypeIndex(), this.superTypeAnnotationTokens);
                    }
                } else {
                    withIndex = new AnnotationRegistrant.ForTypeVariable.WithIndex(str, typePath, typeReference.getTypeParameterIndex(), this.typeVariableAnnotationTokens);
                }
                return new AnnotationExtractor(withIndex, new ComponentTypeLocator.ForAnnotationProperty(Default.this, str));
            }

            @Override // net.bytebuddy.jar.asm.ClassVisitor
            @SuppressFBWarnings(justification = "The array is not modified by class contract.", value = {"EI_EXPOSE_REP2"})
            public void visit(int i, int i2, String str, @MaybeNull String str2, @MaybeNull String str3, @MaybeNull String[] strArr) {
                this.modifiers = 65535 & i2;
                this.actualModifiers = i2;
                this.internalName = str;
                this.genericSignature = str2;
                this.superClassName = str3;
                this.interfaceName = strArr;
                this.classFileVersion = ClassFileVersion.ofMinorMajor(i);
            }
        }

        /* loaded from: classes.dex */
        public static class WithLazyResolution extends Default {

            @HashCodeAndEqualsPlugin.Enhance(includeSyntheticFields = true)
            /* loaded from: classes.dex */
            public class LazyResolution implements Resolution {
                private final String name;

                public boolean equals(@MaybeNull Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    if (obj != null && getClass() == obj.getClass()) {
                        LazyResolution lazyResolution = (LazyResolution) obj;
                        return this.name.equals(lazyResolution.name) && WithLazyResolution.this.equals(WithLazyResolution.this);
                    }
                    return false;
                }

                public int hashCode() {
                    return (((getClass().hashCode() * 31) + this.name.hashCode()) * 31) + WithLazyResolution.this.hashCode();
                }

                @Override // net.bytebuddy.pool.TypePool.Resolution
                public boolean isResolved() {
                    return WithLazyResolution.this.doResolve(this.name).isResolved();
                }

                @Override // net.bytebuddy.pool.TypePool.Resolution
                public TypeDescription resolve() {
                    return new LazyTypeDescription(this.name);
                }

                public LazyResolution(String str) {
                    this.name = str;
                }
            }

            /* loaded from: classes.dex */
            public class LazyTypeDescription extends TypeDescription.AbstractBase.OfSimpleType.WithDelegation {
                private transient /* synthetic */ TypeDescription delegate;
                private final String name;

                @Override // net.bytebuddy.description.type.TypeDescription.AbstractBase.OfSimpleType.WithDelegation
                @CachedReturnPlugin.Enhance(MethodDelegation.ImplementationDelegate.FIELD_NAME_PREFIX)
                public TypeDescription delegate() {
                    TypeDescription resolve = this.delegate != null ? null : WithLazyResolution.this.doResolve(this.name).resolve();
                    if (resolve == null) {
                        return this.delegate;
                    }
                    this.delegate = resolve;
                    return resolve;
                }

                @Override // net.bytebuddy.description.NamedElement.WithRuntimeName
                public String getName() {
                    return this.name;
                }

                public LazyTypeDescription(String str) {
                    this.name = str;
                }
            }

            public WithLazyResolution(CacheProvider cacheProvider, ClassFileLocator classFileLocator, ReaderMode readerMode) {
                this(cacheProvider, classFileLocator, readerMode, Empty.INSTANCE);
            }

            /* renamed from: of */
            public static TypePool m14780of(@MaybeNull ClassLoader classLoader) {
                return m14779of(ClassFileLocator.ForClassLoader.m15176of(classLoader));
            }

            public static TypePool ofBootLoader() {
                return m14779of(ClassFileLocator.ForClassLoader.ofBootLoader());
            }

            public static TypePool ofPlatformLoader() {
                return m14779of(ClassFileLocator.ForClassLoader.ofPlatformLoader());
            }

            public static TypePool ofSystemLoader() {
                return m14779of(ClassFileLocator.ForClassLoader.ofSystemLoader());
            }

            @Override // net.bytebuddy.pool.TypePool.AbstractBase
            public Resolution doCache(String str, Resolution resolution) {
                return resolution;
            }

            @Override // net.bytebuddy.pool.TypePool.Default, net.bytebuddy.pool.TypePool.AbstractBase
            public Resolution doDescribe(String str) {
                return new LazyResolution(str);
            }

            public WithLazyResolution(CacheProvider cacheProvider, ClassFileLocator classFileLocator, ReaderMode readerMode, TypePool typePool) {
                super(cacheProvider, classFileLocator, readerMode, typePool);
            }

            /* renamed from: of */
            public static TypePool m14779of(ClassFileLocator classFileLocator) {
                return new WithLazyResolution(new CacheProvider.Simple(), classFileLocator, ReaderMode.FAST);
            }

            public Resolution doResolve(String str) {
                Resolution find = this.cacheProvider.find(str);
                if (find == null) {
                    return this.cacheProvider.register(str, super.doDescribe(str));
                }
                return find;
            }
        }

        public Default(CacheProvider cacheProvider, ClassFileLocator classFileLocator, ReaderMode readerMode) {
            this(cacheProvider, classFileLocator, readerMode, Empty.INSTANCE);
        }

        /* renamed from: of */
        public static TypePool m14814of(@MaybeNull ClassLoader classLoader) {
            return m14813of(ClassFileLocator.ForClassLoader.m15176of(classLoader));
        }

        public static TypePool ofBootLoader() {
            return m14813of(ClassFileLocator.ForClassLoader.ofBootLoader());
        }

        public static TypePool ofPlatformLoader() {
            return m14813of(ClassFileLocator.ForClassLoader.ofPlatformLoader());
        }

        public static TypePool ofSystemLoader() {
            return m14813of(ClassFileLocator.ForClassLoader.ofSystemLoader());
        }

        @Override // net.bytebuddy.pool.TypePool.AbstractBase.Hierarchical, net.bytebuddy.pool.TypePool.AbstractBase
        public boolean equals(@MaybeNull Object obj) {
            if (super.equals(obj)) {
                if (this == obj) {
                    return true;
                }
                if (obj != null && getClass() == obj.getClass()) {
                    Default r5 = (Default) obj;
                    return this.readerMode.equals(r5.readerMode) && this.classFileLocator.equals(r5.classFileLocator);
                }
                return false;
            }
            return false;
        }

        @Override // net.bytebuddy.pool.TypePool.AbstractBase.Hierarchical, net.bytebuddy.pool.TypePool.AbstractBase
        public int hashCode() {
            return (((super.hashCode() * 31) + this.classFileLocator.hashCode()) * 31) + this.readerMode.hashCode();
        }

        /* loaded from: classes.dex */
        public enum ReaderMode {
            EXTENDED(4),
            FAST(1);
            
            private final int flags;

            public int getFlags() {
                return this.flags;
            }

            public boolean isExtended() {
                return this == EXTENDED;
            }

            ReaderMode(int i) {
                this.flags = i;
            }
        }

        public Default(CacheProvider cacheProvider, ClassFileLocator classFileLocator, ReaderMode readerMode, TypePool typePool) {
            super(cacheProvider, typePool);
            this.classFileLocator = classFileLocator;
            this.readerMode = readerMode;
        }

        /* renamed from: of */
        public static TypePool m14813of(ClassFileLocator classFileLocator) {
            return new Default(new CacheProvider.Simple(), classFileLocator, ReaderMode.FAST);
        }

        @Override // net.bytebuddy.pool.TypePool.AbstractBase
        public Resolution doDescribe(String str) {
            try {
                ClassFileLocator.Resolution locate = this.classFileLocator.locate(str);
                if (locate.isResolved()) {
                    return new Resolution.Simple(parse(locate.resolve()));
                }
                return new Resolution.Illegal(str);
            } catch (IOException e) {
                throw new IllegalStateException("Error while reading class file", e);
            }
        }

        private TypeDescription parse(byte[] bArr) {
            ClassReader m14758of = OpenedClassReader.m14758of(bArr);
            TypeExtractor typeExtractor = new TypeExtractor();
            m14758of.accept(typeExtractor, this.readerMode.getFlags());
            return typeExtractor.toTypeDescription();
        }
    }

    /* loaded from: classes.dex */
    public enum Empty implements TypePool {
        INSTANCE;

        @Override // net.bytebuddy.pool.TypePool
        public void clear() {
        }

        @Override // net.bytebuddy.pool.TypePool
        public Resolution describe(String str) {
            return new Resolution.Illegal(str);
        }
    }

    @HashCodeAndEqualsPlugin.Enhance
    /* loaded from: classes.dex */
    public static class Explicit extends AbstractBase.Hierarchical {
        private final Map<String, TypeDescription> types;

        public Explicit(Map<String, TypeDescription> map) {
            this(Empty.INSTANCE, map);
        }

        @Override // net.bytebuddy.pool.TypePool.AbstractBase.Hierarchical, net.bytebuddy.pool.TypePool.AbstractBase
        public boolean equals(@MaybeNull Object obj) {
            if (super.equals(obj)) {
                if (this == obj) {
                    return true;
                }
                return obj != null && getClass() == obj.getClass() && this.types.equals(((Explicit) obj).types);
            }
            return false;
        }

        @Override // net.bytebuddy.pool.TypePool.AbstractBase.Hierarchical, net.bytebuddy.pool.TypePool.AbstractBase
        public int hashCode() {
            return (super.hashCode() * 31) + this.types.hashCode();
        }

        public Explicit(TypePool typePool, Map<String, TypeDescription> map) {
            super(CacheProvider.NoOp.INSTANCE, typePool);
            this.types = map;
        }

        @Override // net.bytebuddy.pool.TypePool.AbstractBase
        public Resolution doDescribe(String str) {
            TypeDescription typeDescription = this.types.get(str);
            if (typeDescription == null) {
                return new Resolution.Illegal(str);
            }
            return new Resolution.Simple(typeDescription);
        }
    }

    @HashCodeAndEqualsPlugin.Enhance
    /* loaded from: classes.dex */
    public static class LazyFacade extends AbstractBase {
        private final TypePool typePool;

        @Override // net.bytebuddy.pool.TypePool.AbstractBase, net.bytebuddy.pool.TypePool
        public void clear() {
            this.typePool.clear();
        }

        @Override // net.bytebuddy.pool.TypePool.AbstractBase
        public Resolution doDescribe(String str) {
            return new LazyResolution(this.typePool, str);
        }

        @Override // net.bytebuddy.pool.TypePool.AbstractBase
        public boolean equals(@MaybeNull Object obj) {
            if (super.equals(obj)) {
                if (this == obj) {
                    return true;
                }
                return obj != null && getClass() == obj.getClass() && this.typePool.equals(((LazyFacade) obj).typePool);
            }
            return false;
        }

        @Override // net.bytebuddy.pool.TypePool.AbstractBase
        public int hashCode() {
            return (super.hashCode() * 31) + this.typePool.hashCode();
        }

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static class LazyResolution implements Resolution {
            private final String name;
            private final TypePool typePool;

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj != null && getClass() == obj.getClass()) {
                    LazyResolution lazyResolution = (LazyResolution) obj;
                    return this.name.equals(lazyResolution.name) && this.typePool.equals(lazyResolution.typePool);
                }
                return false;
            }

            public int hashCode() {
                return (((getClass().hashCode() * 31) + this.typePool.hashCode()) * 31) + this.name.hashCode();
            }

            @Override // net.bytebuddy.pool.TypePool.Resolution
            public boolean isResolved() {
                return this.typePool.describe(this.name).isResolved();
            }

            @Override // net.bytebuddy.pool.TypePool.Resolution
            public TypeDescription resolve() {
                return new LazyTypeDescription(this.typePool, this.name);
            }

            public LazyResolution(TypePool typePool, String str) {
                this.typePool = typePool;
                this.name = str;
            }
        }

        /* loaded from: classes.dex */
        public static class LazyTypeDescription extends TypeDescription.AbstractBase.OfSimpleType.WithDelegation {
            private transient /* synthetic */ TypeDescription delegate;
            private final String name;
            private final TypePool typePool;

            @Override // net.bytebuddy.description.type.TypeDescription.AbstractBase.OfSimpleType.WithDelegation
            @CachedReturnPlugin.Enhance(MethodDelegation.ImplementationDelegate.FIELD_NAME_PREFIX)
            public TypeDescription delegate() {
                TypeDescription resolve = this.delegate != null ? null : this.typePool.describe(this.name).resolve();
                if (resolve == null) {
                    return this.delegate;
                }
                this.delegate = resolve;
                return resolve;
            }

            @Override // net.bytebuddy.description.NamedElement.WithRuntimeName
            public String getName() {
                return this.name;
            }

            public LazyTypeDescription(TypePool typePool, String str) {
                this.typePool = typePool;
                this.name = str;
            }
        }

        public LazyFacade(TypePool typePool) {
            super(CacheProvider.NoOp.INSTANCE);
            this.typePool = typePool;
        }
    }

    /* loaded from: classes.dex */
    public interface Resolution {

        /* loaded from: classes.dex */
        public static class NoSuchTypeException extends IllegalStateException {
            private static final long serialVersionUID = 1;
            private final String name;

            public String getName() {
                return this.name;
            }

            public NoSuchTypeException(String str) {
                super("Cannot resolve type description for " + str);
                this.name = str;
            }
        }

        boolean isResolved();

        TypeDescription resolve();

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static class Illegal implements Resolution {
            private final String name;

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                return obj != null && getClass() == obj.getClass() && this.name.equals(((Illegal) obj).name);
            }

            public int hashCode() {
                return (getClass().hashCode() * 31) + this.name.hashCode();
            }

            @Override // net.bytebuddy.pool.TypePool.Resolution
            public boolean isResolved() {
                return false;
            }

            @Override // net.bytebuddy.pool.TypePool.Resolution
            public TypeDescription resolve() {
                throw new NoSuchTypeException(this.name);
            }

            public Illegal(String str) {
                this.name = str;
            }
        }

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static class Simple implements Resolution {
            private final TypeDescription typeDescription;

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                return obj != null && getClass() == obj.getClass() && this.typeDescription.equals(((Simple) obj).typeDescription);
            }

            public int hashCode() {
                return (getClass().hashCode() * 31) + this.typeDescription.hashCode();
            }

            @Override // net.bytebuddy.pool.TypePool.Resolution
            public boolean isResolved() {
                return true;
            }

            @Override // net.bytebuddy.pool.TypePool.Resolution
            public TypeDescription resolve() {
                return this.typeDescription;
            }

            public Simple(TypeDescription typeDescription) {
                this.typeDescription = typeDescription;
            }
        }
    }

    void clear();

    Resolution describe(String str);
}
