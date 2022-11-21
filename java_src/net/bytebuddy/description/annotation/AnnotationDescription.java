package net.bytebuddy.description.annotation;

import edu.umd.cs.findbugs.annotations.SuppressFBWarnings;
import java.lang.annotation.Annotation;
import java.lang.annotation.AnnotationTypeMismatchException;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.IncompleteAnnotationException;
import java.lang.annotation.Inherited;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.security.AccessController;
import java.security.PrivilegedAction;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import net.bytebuddy.ClassFileVersion;
import net.bytebuddy.build.AccessControllerPlugin;
import net.bytebuddy.build.CachedReturnPlugin;
import net.bytebuddy.build.HashCodeAndEqualsPlugin;
import net.bytebuddy.description.annotation.AnnotationList;
import net.bytebuddy.description.annotation.AnnotationValue;
import net.bytebuddy.description.enumeration.EnumerationDescription;
import net.bytebuddy.description.method.MethodDescription;
import net.bytebuddy.description.method.MethodList;
import net.bytebuddy.description.type.TypeDescription;
import net.bytebuddy.description.type.TypeList;
import net.bytebuddy.dynamic.loading.ClassLoadingStrategy;
import net.bytebuddy.jar.asm.signature.SignatureVisitor;
import net.bytebuddy.matcher.ElementMatchers;
import net.bytebuddy.utility.nullability.AlwaysNull;
import net.bytebuddy.utility.nullability.MaybeNull;
import net.bytebuddy.utility.privilege.SetAccessibleAction;
/* loaded from: classes2.dex */
public interface AnnotationDescription {
    @AlwaysNull
    public static final Loadable<?> UNDEFINED = null;

    /* loaded from: classes2.dex */
    public static abstract class AbstractBase implements AnnotationDescription {
        private static final Set<ElementType> DEFAULT_TARGET = new HashSet();
        private static final MethodDescription.InDefinedShape RETENTION_VALUE;
        private static final MethodDescription.InDefinedShape TARGET_VALUE;
        private transient /* synthetic */ int hashCode;

        public boolean equals(@MaybeNull Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof AnnotationDescription)) {
                return false;
            }
            AnnotationDescription annotationDescription = (AnnotationDescription) obj;
            TypeDescription annotationType = getAnnotationType();
            if (!annotationDescription.getAnnotationType().equals(annotationType)) {
                return false;
            }
            for (MethodDescription.InDefinedShape inDefinedShape : annotationType.getDeclaredMethods()) {
                if (!getValue(inDefinedShape).equals(annotationDescription.getValue(inDefinedShape))) {
                    return false;
                }
            }
            return true;
        }

        @Override // net.bytebuddy.description.annotation.AnnotationDescription
        public boolean isDocumented() {
            return getAnnotationType().getDeclaredAnnotations().isAnnotationPresent(Documented.class);
        }

        @Override // net.bytebuddy.description.annotation.AnnotationDescription
        public boolean isInherited() {
            return getAnnotationType().getDeclaredAnnotations().isAnnotationPresent(Inherited.class);
        }

        @Override // net.bytebuddy.description.annotation.AnnotationDescription
        public boolean isSupportedOn(ElementType elementType) {
            return isSupportedOn(elementType.name());
        }

        static {
            ElementType[] values;
            for (ElementType elementType : ElementType.values()) {
                if (!elementType.name().equals("TYPE_PARAMETER")) {
                    DEFAULT_TARGET.add(elementType);
                }
            }
            RETENTION_VALUE = (MethodDescription.InDefinedShape) TypeDescription.ForLoadedType.m15196of(Retention.class).getDeclaredMethods().filter(ElementMatchers.named("value")).getOnly();
            TARGET_VALUE = (MethodDescription.InDefinedShape) TypeDescription.ForLoadedType.m15196of(Target.class).getDeclaredMethods().filter(ElementMatchers.named("value")).getOnly();
        }

        @CachedReturnPlugin.Enhance("hashCode")
        public int hashCode() {
            int i = 0;
            if (this.hashCode == 0) {
                for (MethodDescription.InDefinedShape inDefinedShape : getAnnotationType().getDeclaredMethods()) {
                    i += getValue(inDefinedShape).hashCode() * 31;
                }
            }
            if (i == 0) {
                return this.hashCode;
            }
            this.hashCode = i;
            return i;
        }

        @Override // net.bytebuddy.description.annotation.AnnotationDescription
        public boolean isSupportedOn(String str) {
            Loadable ofType = getAnnotationType().getDeclaredAnnotations().ofType(Target.class);
            if (ofType == null) {
                if (str.equals("TYPE_USE")) {
                    return true;
                }
                for (ElementType elementType : DEFAULT_TARGET) {
                    if (elementType.name().equals(str)) {
                        return true;
                    }
                }
            } else {
                for (EnumerationDescription enumerationDescription : (EnumerationDescription[]) ofType.getValue(TARGET_VALUE).resolve(EnumerationDescription[].class)) {
                    if (enumerationDescription.getValue().equals(str)) {
                        return true;
                    }
                }
            }
            return false;
        }

        @Override // net.bytebuddy.description.annotation.AnnotationDescription
        public Set<ElementType> getElementTypes() {
            Loadable ofType = getAnnotationType().getDeclaredAnnotations().ofType(Target.class);
            if (ofType == null) {
                return Collections.unmodifiableSet(DEFAULT_TARGET);
            }
            return new HashSet(Arrays.asList((Object[]) ofType.getValue(TARGET_VALUE).load(ClassLoadingStrategy.BOOTSTRAP_LOADER).resolve(ElementType[].class)));
        }

        @Override // net.bytebuddy.description.annotation.AnnotationDescription
        public RetentionPolicy getRetention() {
            Loadable ofType = getAnnotationType().getDeclaredAnnotations().ofType(Retention.class);
            if (ofType == null) {
                return RetentionPolicy.CLASS;
            }
            return (RetentionPolicy) ofType.getValue(RETENTION_VALUE).load(ClassLoadingStrategy.BOOTSTRAP_LOADER).resolve(RetentionPolicy.class);
        }

        @Override // net.bytebuddy.description.annotation.AnnotationDescription
        public AnnotationValue<?, ?> getValue(String str) {
            MethodList filter = getAnnotationType().getDeclaredMethods().filter(ElementMatchers.named(str).and(ElementMatchers.takesArguments(0)).and(ElementMatchers.isPublic()).and(ElementMatchers.not(ElementMatchers.isStatic())));
            if (filter.size() == 1) {
                return getValue((MethodDescription.InDefinedShape) filter.getOnly());
            }
            throw new IllegalArgumentException("Unknown property of " + getAnnotationType() + ": " + str);
        }

        public String toString() {
            TypeDescription annotationType = getAnnotationType();
            StringBuilder sb = new StringBuilder();
            sb.append('@');
            RenderingDispatcher.CURRENT.appendType(sb, annotationType);
            sb.append('(');
            boolean z = true;
            for (MethodDescription.InDefinedShape inDefinedShape : annotationType.getDeclaredMethods()) {
                AnnotationValue<?, ?> value = getValue(inDefinedShape);
                if (value.getState() != AnnotationValue.State.UNDEFINED) {
                    if (z) {
                        z = false;
                    } else {
                        sb.append(", ");
                    }
                    RenderingDispatcher.CURRENT.appendPrefix(sb, inDefinedShape.getName(), annotationType.getDeclaredMethods().size());
                    sb.append(value);
                }
            }
            sb.append(')');
            return sb.toString();
        }
    }

    /* loaded from: classes2.dex */
    public static class AnnotationInvocationHandler<T extends Annotation> implements InvocationHandler {
        private static final String ANNOTATION_TYPE = "annotationType";
        private static final String EQUALS = "equals";
        private static final String HASH_CODE = "hashCode";
        private static final Object[] NO_ARGUMENT = new Object[0];
        private static final String TO_STRING = "toString";
        private final Class<? extends Annotation> annotationType;
        private transient /* synthetic */ int hashCode;
        private final LinkedHashMap<Method, AnnotationValue.Loaded<?>> values;

        private boolean equalsRepresentation(Object obj, Object obj2) {
            if (obj == obj2) {
                return true;
            }
            if (!this.annotationType.isInstance(obj2)) {
                return false;
            }
            if (Proxy.isProxyClass(obj2.getClass())) {
                InvocationHandler invocationHandler = Proxy.getInvocationHandler(obj2);
                if (invocationHandler instanceof AnnotationInvocationHandler) {
                    return invocationHandler.equals(this);
                }
            }
            try {
                for (Map.Entry<Method, AnnotationValue.Loaded<?>> entry : this.values.entrySet()) {
                    if (!entry.getValue().represents(entry.getKey().invoke(obj2, NO_ARGUMENT))) {
                        return false;
                    }
                }
                return true;
            } catch (IllegalAccessException e) {
                throw new IllegalStateException("Could not access annotation property", e);
            } catch (InvocationTargetException unused) {
                return false;
            }
        }

        public boolean equals(@MaybeNull Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof AnnotationInvocationHandler)) {
                return false;
            }
            AnnotationInvocationHandler annotationInvocationHandler = (AnnotationInvocationHandler) obj;
            if (!this.annotationType.equals(annotationInvocationHandler.annotationType)) {
                return false;
            }
            for (Map.Entry<Method, AnnotationValue.Loaded<?>> entry : this.values.entrySet()) {
                if (!entry.getValue().equals(annotationInvocationHandler.values.get(entry.getKey()))) {
                    return false;
                }
            }
            return true;
        }

        private int hashCodeRepresentation() {
            int i = 0;
            for (Map.Entry<Method, AnnotationValue.Loaded<?>> entry : this.values.entrySet()) {
                if (entry.getValue().getState().isDefined()) {
                    i += entry.getValue().hashCode() ^ (entry.getKey().getName().hashCode() * 127);
                }
            }
            return i;
        }

        /* renamed from: of */
        public static <S extends Annotation> S m15238of(@MaybeNull ClassLoader classLoader, Class<S> cls, Map<String, ? extends AnnotationValue<?, ?>> map) {
            Method[] declaredMethods;
            AnnotationValue asValue;
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            for (Method method : cls.getDeclaredMethods()) {
                AnnotationValue<?, ?> annotationValue = map.get(method.getName());
                if (annotationValue == null) {
                    Object defaultValue = method.getDefaultValue();
                    if (defaultValue == null) {
                        asValue = new AnnotationValue.ForMissingValue(new TypeDescription.ForLoadedType(method.getDeclaringClass()), method.getName());
                    } else {
                        asValue = ForLoadedAnnotation.asValue(defaultValue, method.getReturnType());
                    }
                    linkedHashMap.put(method, asValue.load(classLoader));
                } else {
                    linkedHashMap.put(method, annotationValue.filter(new MethodDescription.ForLoadedMethod(method)).load(classLoader));
                }
            }
            return (S) Proxy.newProxyInstance(classLoader, new Class[]{cls}, new AnnotationInvocationHandler(cls, linkedHashMap));
        }

        @CachedReturnPlugin.Enhance(HASH_CODE)
        public int hashCode() {
            int hashCode;
            if (this.hashCode != 0) {
                hashCode = 0;
            } else {
                hashCode = (this.annotationType.hashCode() * 31) + this.values.hashCode();
                for (Map.Entry<Method, AnnotationValue.Loaded<?>> entry : this.values.entrySet()) {
                    hashCode = (hashCode * 31) + entry.getValue().hashCode();
                }
            }
            if (hashCode == 0) {
                return this.hashCode;
            }
            this.hashCode = hashCode;
            return hashCode;
        }

        public String toStringRepresentation() {
            StringBuilder sb = new StringBuilder();
            sb.append('@');
            RenderingDispatcher.CURRENT.appendType(sb, TypeDescription.ForLoadedType.m15196of(this.annotationType));
            sb.append('(');
            boolean z = true;
            for (Map.Entry<Method, AnnotationValue.Loaded<?>> entry : this.values.entrySet()) {
                if (entry.getValue().getState().isDefined()) {
                    if (z) {
                        z = false;
                    } else {
                        sb.append(", ");
                    }
                    RenderingDispatcher.CURRENT.appendPrefix(sb, entry.getKey().getName(), this.values.entrySet().size());
                    sb.append(entry.getValue().toString());
                }
            }
            sb.append(')');
            return sb.toString();
        }

        public AnnotationInvocationHandler(Class<T> cls, LinkedHashMap<Method, AnnotationValue.Loaded<?>> linkedHashMap) {
            this.annotationType = cls;
            this.values = linkedHashMap;
        }

        @Override // java.lang.reflect.InvocationHandler
        public Object invoke(Object obj, Method method, @MaybeNull Object[] objArr) {
            if (method.getDeclaringClass() != this.annotationType) {
                if (method.getName().equals(HASH_CODE)) {
                    return Integer.valueOf(hashCodeRepresentation());
                }
                if (method.getName().equals(EQUALS) && method.getParameterTypes().length == 1) {
                    return Boolean.valueOf(equalsRepresentation(obj, objArr[0]));
                }
                if (method.getName().equals(TO_STRING)) {
                    return toStringRepresentation();
                }
                if (method.getName().equals(ANNOTATION_TYPE)) {
                    return this.annotationType;
                }
                throw new IllegalStateException("Unexpected method: " + method);
            }
            return this.values.get(method).resolve();
        }
    }

    @HashCodeAndEqualsPlugin.Enhance
    /* loaded from: classes.dex */
    public static class Builder {
        private final TypeDescription annotationType;
        private final Map<String, AnnotationValue<?, ?>> annotationValues;

        public static Builder ofType(Class<? extends Annotation> cls) {
            return ofType(TypeDescription.ForLoadedType.m15196of(cls));
        }

        public AnnotationDescription build() {
            for (MethodDescription.InDefinedShape inDefinedShape : this.annotationType.getDeclaredMethods()) {
                AnnotationValue<?, ?> annotationValue = this.annotationValues.get(inDefinedShape.getName());
                if (annotationValue == null && inDefinedShape.getDefaultValue() == null) {
                    throw new IllegalStateException("No value or default value defined for " + inDefinedShape.getName());
                } else if (annotationValue != null && annotationValue.filter(inDefinedShape).getState() != AnnotationValue.State.RESOLVED) {
                    throw new IllegalStateException("Illegal annotation value for " + inDefinedShape + ": " + annotationValue);
                }
            }
            return new Latent(this.annotationType, this.annotationValues);
        }

        public Builder define(String str, AnnotationValue<?, ?> annotationValue) {
            MethodList filter = this.annotationType.getDeclaredMethods().filter(ElementMatchers.named(str));
            if (!filter.isEmpty()) {
                HashMap hashMap = new HashMap(this.annotationValues);
                if (hashMap.put(((MethodDescription.InDefinedShape) filter.getOnly()).getName(), annotationValue) == null) {
                    return new Builder(this.annotationType, hashMap);
                }
                throw new IllegalArgumentException("Property already defined: " + str);
            }
            throw new IllegalArgumentException(this.annotationType + " does not define a property named " + str);
        }

        public <T extends Annotation> Builder defineAnnotationArray(String str, Class<T> cls, T... tArr) {
            return defineAnnotationArray(str, TypeDescription.ForLoadedType.m15196of(cls), (AnnotationDescription[]) new AnnotationList.ForLoadedAnnotations(tArr).toArray(new AnnotationDescription[0]));
        }

        public Builder defineArray(String str, boolean... zArr) {
            return define(str, (AnnotationValue<?, ?>) AnnotationValue.ForConstant.m15216of(zArr));
        }

        public <T extends Enum<?>> Builder defineEnumerationArray(String str, Class<T> cls, T... tArr) {
            EnumerationDescription[] enumerationDescriptionArr = new EnumerationDescription[tArr.length];
            int length = tArr.length;
            int i = 0;
            int i2 = 0;
            while (i < length) {
                enumerationDescriptionArr[i2] = new EnumerationDescription.ForLoadedEnumeration(tArr[i]);
                i++;
                i2++;
            }
            return defineEnumerationArray(str, TypeDescription.ForLoadedType.m15196of(cls), enumerationDescriptionArr);
        }

        public Builder defineTypeArray(String str, Class<?>... clsArr) {
            return defineTypeArray(str, (TypeDescription[]) new TypeList.ForLoadedTypes(clsArr).toArray(new TypeDescription[0]));
        }

        public boolean equals(@MaybeNull Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && getClass() == obj.getClass()) {
                Builder builder = (Builder) obj;
                return this.annotationType.equals(builder.annotationType) && this.annotationValues.equals(builder.annotationValues);
            }
            return false;
        }

        public int hashCode() {
            return (((getClass().hashCode() * 31) + this.annotationType.hashCode()) * 31) + this.annotationValues.hashCode();
        }

        public static Builder ofType(TypeDescription typeDescription) {
            if (typeDescription.isAnnotation()) {
                return new Builder(typeDescription, Collections.emptyMap());
            }
            throw new IllegalArgumentException("Not an annotation type: " + typeDescription);
        }

        public Builder defineArray(String str, byte... bArr) {
            return define(str, (AnnotationValue<?, ?>) AnnotationValue.ForConstant.m15224of(bArr));
        }

        public Builder defineTypeArray(String str, TypeDescription... typeDescriptionArr) {
            return define(str, (AnnotationValue<?, ?>) AnnotationValue.ForDescriptionArray.m15213of(typeDescriptionArr));
        }

        public Builder(TypeDescription typeDescription, Map<String, AnnotationValue<?, ?>> map) {
            this.annotationType = typeDescription;
            this.annotationValues = map;
        }

        public Builder defineArray(String str, char... cArr) {
            return define(str, (AnnotationValue<?, ?>) AnnotationValue.ForConstant.m15223of(cArr));
        }

        public Builder defineAnnotationArray(String str, TypeDescription typeDescription, AnnotationDescription... annotationDescriptionArr) {
            return define(str, AnnotationValue.ForDescriptionArray.m15215of(typeDescription, annotationDescriptionArr));
        }

        public Builder defineArray(String str, short... sArr) {
            return define(str, (AnnotationValue<?, ?>) AnnotationValue.ForConstant.m15217of(sArr));
        }

        public Builder defineArray(String str, int... iArr) {
            return define(str, (AnnotationValue<?, ?>) AnnotationValue.ForConstant.m15220of(iArr));
        }

        public Builder defineEnumerationArray(String str, TypeDescription typeDescription, String... strArr) {
            if (typeDescription.isEnum()) {
                EnumerationDescription[] enumerationDescriptionArr = new EnumerationDescription[strArr.length];
                for (int i = 0; i < strArr.length; i++) {
                    enumerationDescriptionArr[i] = new EnumerationDescription.Latent(typeDescription, strArr[i]);
                }
                return defineEnumerationArray(str, typeDescription, enumerationDescriptionArr);
            }
            throw new IllegalArgumentException("Not an enumeration type: " + typeDescription);
        }

        public Builder defineArray(String str, long... jArr) {
            return define(str, (AnnotationValue<?, ?>) AnnotationValue.ForConstant.m15219of(jArr));
        }

        public Builder defineArray(String str, float... fArr) {
            return define(str, (AnnotationValue<?, ?>) AnnotationValue.ForConstant.m15221of(fArr));
        }

        public AnnotationDescription build(boolean z) {
            return z ? build() : new Latent(this.annotationType, this.annotationValues);
        }

        public Builder define(String str, Enum<?> r3) {
            return define(str, new EnumerationDescription.ForLoadedEnumeration(r3));
        }

        public Builder defineArray(String str, double... dArr) {
            return define(str, (AnnotationValue<?, ?>) AnnotationValue.ForConstant.m15222of(dArr));
        }

        public Builder define(String str, TypeDescription typeDescription, String str2) {
            return define(str, new EnumerationDescription.Latent(typeDescription, str2));
        }

        public Builder defineArray(String str, String... strArr) {
            return define(str, (AnnotationValue<?, ?>) AnnotationValue.ForConstant.m15218of(strArr));
        }

        public Builder define(String str, EnumerationDescription enumerationDescription) {
            return define(str, AnnotationValue.ForEnumerationDescription.m15212of(enumerationDescription));
        }

        public Builder define(String str, Annotation annotation) {
            return define(str, new ForLoadedAnnotation(annotation));
        }

        public Builder defineEnumerationArray(String str, TypeDescription typeDescription, EnumerationDescription... enumerationDescriptionArr) {
            return define(str, AnnotationValue.ForDescriptionArray.m15214of(typeDescription, enumerationDescriptionArr));
        }

        public Builder define(String str, AnnotationDescription annotationDescription) {
            return define(str, new AnnotationValue.ForAnnotationDescription(annotationDescription));
        }

        public Builder define(String str, Class<?> cls) {
            return define(str, TypeDescription.ForLoadedType.m15196of(cls));
        }

        public Builder define(String str, TypeDescription typeDescription) {
            return define(str, AnnotationValue.ForTypeDescription.m15211of(typeDescription));
        }

        public Builder define(String str, boolean z) {
            return define(str, AnnotationValue.ForConstant.m15225of(z));
        }

        public Builder define(String str, byte b) {
            return define(str, AnnotationValue.ForConstant.m15234of(b));
        }

        public Builder define(String str, char c) {
            return define(str, AnnotationValue.ForConstant.m15233of(c));
        }

        public Builder define(String str, short s) {
            return define(str, AnnotationValue.ForConstant.m15226of(s));
        }

        public Builder define(String str, int i) {
            return define(str, AnnotationValue.ForConstant.m15230of(i));
        }

        public Builder define(String str, long j) {
            return define(str, AnnotationValue.ForConstant.m15229of(j));
        }

        public Builder define(String str, float f) {
            return define(str, AnnotationValue.ForConstant.m15231of(f));
        }

        public Builder define(String str, double d) {
            return define(str, AnnotationValue.ForConstant.m15232of(d));
        }

        public Builder define(String str, String str2) {
            return define(str, AnnotationValue.ForConstant.m15227of(str2));
        }
    }

    /* loaded from: classes2.dex */
    public static class ForLoadedAnnotation<S extends Annotation> extends AbstractBase implements Loadable<S> {
        private static final boolean ACCESS_CONTROLLER;
        private static final Object[] NO_ARGUMENT;
        private final S annotation;
        private final Class<S> annotationType;

        static {
            try {
                Class.forName("java.security.AccessController", false, null);
                ACCESS_CONTROLLER = Boolean.parseBoolean(System.getProperty("net.bytebuddy.securitymanager", "true"));
            } catch (ClassNotFoundException unused) {
                ACCESS_CONTROLLER = false;
            } catch (SecurityException unused2) {
                ACCESS_CONTROLLER = true;
            }
            NO_ARGUMENT = new Object[0];
        }

        public ForLoadedAnnotation(S s) {
            this(s, s.annotationType());
        }

        private static Map<String, AnnotationValue<?, ?>> asValue(Annotation annotation) {
            Method[] declaredMethods;
            HashMap hashMap = new HashMap();
            for (Method method : annotation.annotationType().getDeclaredMethods()) {
                try {
                    hashMap.put(method.getName(), asValue(method.invoke(annotation, NO_ARGUMENT), method.getReturnType()));
                } catch (IllegalAccessException e) {
                    throw new IllegalStateException("Cannot access " + method, e);
                } catch (InvocationTargetException e2) {
                    Throwable targetException = e2.getTargetException();
                    if (targetException instanceof TypeNotPresentException) {
                        hashMap.put(method.getName(), new AnnotationValue.ForMissingType(((TypeNotPresentException) targetException).typeName()));
                    } else if (targetException instanceof EnumConstantNotPresentException) {
                        EnumConstantNotPresentException enumConstantNotPresentException = (EnumConstantNotPresentException) targetException;
                        hashMap.put(method.getName(), new AnnotationValue.ForEnumerationDescription.WithUnknownConstant(new TypeDescription.ForLoadedType(enumConstantNotPresentException.enumType()), enumConstantNotPresentException.constantName()));
                    } else if (targetException instanceof AnnotationTypeMismatchException) {
                        AnnotationTypeMismatchException annotationTypeMismatchException = (AnnotationTypeMismatchException) targetException;
                        hashMap.put(method.getName(), new AnnotationValue.ForMismatchedType(new MethodDescription.ForLoadedMethod(annotationTypeMismatchException.element()), annotationTypeMismatchException.foundType()));
                    } else if (!(targetException instanceof IncompleteAnnotationException)) {
                        throw new IllegalStateException("Cannot read " + method, targetException);
                    }
                }
            }
            return hashMap;
        }

        @AccessControllerPlugin.Enhance
        private static <T> T doPrivileged(PrivilegedAction<T> privilegedAction) {
            return ACCESS_CONTROLLER ? (T) AccessController.doPrivileged(privilegedAction) : privilegedAction.run();
        }

        /* renamed from: of */
        public static <U extends Annotation> Loadable<U> m15237of(U u) {
            return new ForLoadedAnnotation(u);
        }

        @Override // net.bytebuddy.description.annotation.AnnotationDescription
        public TypeDescription getAnnotationType() {
            return TypeDescription.ForLoadedType.m15196of(this.annotation.annotationType());
        }

        private ForLoadedAnnotation(S s, Class<S> cls) {
            this.annotation = s;
            this.annotationType = cls;
        }

        @Override // net.bytebuddy.description.annotation.AnnotationDescription.Loadable
        public S load() {
            if (this.annotationType == this.annotation.annotationType()) {
                return this.annotation;
            }
            return (S) AnnotationInvocationHandler.m15238of(this.annotationType.getClassLoader(), this.annotationType, asValue(this.annotation));
        }

        @Override // net.bytebuddy.description.annotation.AnnotationDescription
        public <T extends Annotation> Loadable<T> prepare(Class<T> cls) {
            if (this.annotation.annotationType().getName().equals(cls.getName())) {
                if (cls == this.annotation.annotationType()) {
                    return this;
                }
                return new ForLoadedAnnotation(this.annotation, cls);
            }
            throw new IllegalArgumentException(cls + " does not represent " + this.annotation.annotationType());
        }

        @Override // net.bytebuddy.description.annotation.AnnotationDescription
        @SuppressFBWarnings(justification = "Exception should always be wrapped for clarity.", value = {"REC_CATCH_EXCEPTION"})
        public AnnotationValue<?, ?> getValue(MethodDescription.InDefinedShape inDefinedShape) {
            Method method;
            if (inDefinedShape.getDeclaringType().represents(this.annotation.annotationType())) {
                try {
                    boolean isPublic = inDefinedShape.getDeclaringType().isPublic();
                    if (inDefinedShape instanceof MethodDescription.ForLoadedMethod) {
                        method = ((MethodDescription.ForLoadedMethod) inDefinedShape).getLoadedMethod();
                    } else {
                        method = null;
                    }
                    if (method == null || method.getDeclaringClass() != this.annotation.annotationType() || (!isPublic && !method.isAccessible())) {
                        method = this.annotation.annotationType().getMethod(inDefinedShape.getName(), new Class[0]);
                        if (!isPublic) {
                            doPrivileged(new SetAccessibleAction(method));
                        }
                    }
                    return asValue(method.invoke(this.annotation, NO_ARGUMENT), method.getReturnType()).filter(inDefinedShape);
                } catch (InvocationTargetException e) {
                    Throwable targetException = e.getTargetException();
                    if (targetException instanceof TypeNotPresentException) {
                        return new AnnotationValue.ForMissingType(((TypeNotPresentException) targetException).typeName());
                    }
                    if (targetException instanceof EnumConstantNotPresentException) {
                        EnumConstantNotPresentException enumConstantNotPresentException = (EnumConstantNotPresentException) targetException;
                        return new AnnotationValue.ForEnumerationDescription.WithUnknownConstant(new TypeDescription.ForLoadedType(enumConstantNotPresentException.enumType()), enumConstantNotPresentException.constantName());
                    } else if (targetException instanceof AnnotationTypeMismatchException) {
                        AnnotationTypeMismatchException annotationTypeMismatchException = (AnnotationTypeMismatchException) targetException;
                        return new AnnotationValue.ForMismatchedType(new MethodDescription.ForLoadedMethod(annotationTypeMismatchException.element()), annotationTypeMismatchException.foundType());
                    } else if (targetException instanceof IncompleteAnnotationException) {
                        IncompleteAnnotationException incompleteAnnotationException = (IncompleteAnnotationException) targetException;
                        return new AnnotationValue.ForMissingValue(new TypeDescription.ForLoadedType(incompleteAnnotationException.annotationType()), incompleteAnnotationException.elementName());
                    } else {
                        throw new IllegalStateException("Error reading annotation property " + inDefinedShape, targetException);
                    }
                } catch (Exception e2) {
                    throw new IllegalStateException("Cannot access annotation property " + inDefinedShape, e2);
                }
            }
            throw new IllegalArgumentException(inDefinedShape + " does not represent " + this.annotation.annotationType());
        }

        public static AnnotationValue<?, ?> asValue(Object obj, Class<?> cls) {
            if (Enum.class.isAssignableFrom(cls)) {
                return AnnotationValue.ForEnumerationDescription.m15212of(new EnumerationDescription.ForLoadedEnumeration((Enum) obj));
            }
            int i = 0;
            if (Enum[].class.isAssignableFrom(cls)) {
                Enum[] enumArr = (Enum[]) obj;
                EnumerationDescription[] enumerationDescriptionArr = new EnumerationDescription[enumArr.length];
                int length = enumArr.length;
                int i2 = 0;
                while (i < length) {
                    enumerationDescriptionArr[i2] = new EnumerationDescription.ForLoadedEnumeration(enumArr[i]);
                    i++;
                    i2++;
                }
                return AnnotationValue.ForDescriptionArray.m15214of(TypeDescription.ForLoadedType.m15196of(cls.getComponentType()), enumerationDescriptionArr);
            } else if (Annotation.class.isAssignableFrom(cls)) {
                return AnnotationValue.ForAnnotationDescription.m15235of(TypeDescription.ForLoadedType.m15196of(cls), asValue((Annotation) obj));
            } else {
                if (Annotation[].class.isAssignableFrom(cls)) {
                    Annotation[] annotationArr = (Annotation[]) obj;
                    AnnotationDescription[] annotationDescriptionArr = new AnnotationDescription[annotationArr.length];
                    int length2 = annotationArr.length;
                    int i3 = 0;
                    while (i < length2) {
                        annotationDescriptionArr[i3] = new Latent(TypeDescription.ForLoadedType.m15196of(cls.getComponentType()), asValue(annotationArr[i]));
                        i++;
                        i3++;
                    }
                    return AnnotationValue.ForDescriptionArray.m15215of(TypeDescription.ForLoadedType.m15196of(cls.getComponentType()), annotationDescriptionArr);
                } else if (Class.class.isAssignableFrom(cls)) {
                    return AnnotationValue.ForTypeDescription.m15211of(TypeDescription.ForLoadedType.m15196of((Class) obj));
                } else {
                    if (Class[].class.isAssignableFrom(cls)) {
                        Class[] clsArr = (Class[]) obj;
                        TypeDescription[] typeDescriptionArr = new TypeDescription[clsArr.length];
                        int length3 = clsArr.length;
                        int i4 = 0;
                        while (i < length3) {
                            typeDescriptionArr[i4] = TypeDescription.ForLoadedType.m15196of(clsArr[i]);
                            i++;
                            i4++;
                        }
                        return AnnotationValue.ForDescriptionArray.m15213of(typeDescriptionArr);
                    }
                    return AnnotationValue.ForConstant.m15228of(obj);
                }
            }
        }
    }

    /* loaded from: classes2.dex */
    public static class Latent extends AbstractBase {
        private final TypeDescription annotationType;
        private final Map<String, ? extends AnnotationValue<?, ?>> annotationValues;

        /* loaded from: classes2.dex */
        public class Loadable<S extends Annotation> extends AbstractBase implements Loadable<S> {
            private final Class<S> annotationType;

            @Override // net.bytebuddy.description.annotation.AnnotationDescription
            public TypeDescription getAnnotationType() {
                return TypeDescription.ForLoadedType.m15196of(this.annotationType);
            }

            @Override // net.bytebuddy.description.annotation.AnnotationDescription
            public AnnotationValue<?, ?> getValue(MethodDescription.InDefinedShape inDefinedShape) {
                return Latent.this.getValue(inDefinedShape);
            }

            @Override // net.bytebuddy.description.annotation.AnnotationDescription.Loadable
            public S load() {
                return (S) AnnotationInvocationHandler.m15238of(this.annotationType.getClassLoader(), this.annotationType, Latent.this.annotationValues);
            }

            @Override // net.bytebuddy.description.annotation.AnnotationDescription
            public <T extends Annotation> Loadable<T> prepare(Class<T> cls) {
                return Latent.this.prepare((Class) cls);
            }

            public Loadable(Class<S> cls) {
                this.annotationType = cls;
            }
        }

        @Override // net.bytebuddy.description.annotation.AnnotationDescription
        public TypeDescription getAnnotationType() {
            return this.annotationType;
        }

        @Override // net.bytebuddy.description.annotation.AnnotationDescription
        public <T extends Annotation> Loadable<T> prepare(Class<T> cls) {
            if (this.annotationType.represents(cls)) {
                return new Loadable<>(cls);
            }
            throw new IllegalArgumentException(cls + " does not represent " + this.annotationType);
        }

        public Latent(TypeDescription typeDescription, Map<String, ? extends AnnotationValue<?, ?>> map) {
            this.annotationType = typeDescription;
            this.annotationValues = map;
        }

        @Override // net.bytebuddy.description.annotation.AnnotationDescription
        public AnnotationValue<?, ?> getValue(MethodDescription.InDefinedShape inDefinedShape) {
            if (inDefinedShape.getDeclaringType().equals(this.annotationType)) {
                AnnotationValue<?, ?> annotationValue = this.annotationValues.get(inDefinedShape.getName());
                if (annotationValue != null) {
                    return annotationValue.filter(inDefinedShape);
                }
                AnnotationValue<?, ?> defaultValue = inDefinedShape.getDefaultValue();
                if (defaultValue == null) {
                    return new AnnotationValue.ForMissingValue(this.annotationType, inDefinedShape.getName());
                }
                return defaultValue;
            }
            throw new IllegalArgumentException("Not a property of " + this.annotationType + ": " + inDefinedShape);
        }
    }

    /* loaded from: classes2.dex */
    public interface Loadable<S extends Annotation> extends AnnotationDescription {
        S load();
    }

    /* loaded from: classes2.dex */
    public enum RenderingDispatcher {
        LEGACY_VM,
        JAVA_14_CAPABLE_VM { // from class: net.bytebuddy.description.annotation.AnnotationDescription.RenderingDispatcher.1
            @Override // net.bytebuddy.description.annotation.AnnotationDescription.RenderingDispatcher
            public void appendPrefix(StringBuilder sb, String str, int i) {
                if (i > 1 || !str.equals("value")) {
                    super.appendPrefix(sb, str, i);
                }
            }
        },
        JAVA_19_CAPABLE_VM { // from class: net.bytebuddy.description.annotation.AnnotationDescription.RenderingDispatcher.2
            @Override // net.bytebuddy.description.annotation.AnnotationDescription.RenderingDispatcher
            public void appendPrefix(StringBuilder sb, String str, int i) {
                if (i > 1 || !str.equals("value")) {
                    super.appendPrefix(sb, str, i);
                }
            }

            @Override // net.bytebuddy.description.annotation.AnnotationDescription.RenderingDispatcher
            public void appendType(StringBuilder sb, TypeDescription typeDescription) {
                sb.append(typeDescription.getCanonicalName());
            }
        };
        
        public static final RenderingDispatcher CURRENT;

        public void appendPrefix(StringBuilder sb, String str, int i) {
            sb.append(str);
            sb.append(SignatureVisitor.INSTANCEOF);
        }

        public void appendType(StringBuilder sb, TypeDescription typeDescription) {
            sb.append(typeDescription.getName());
        }

        static {
            RenderingDispatcher renderingDispatcher = LEGACY_VM;
            RenderingDispatcher renderingDispatcher2 = JAVA_14_CAPABLE_VM;
            RenderingDispatcher renderingDispatcher3 = JAVA_19_CAPABLE_VM;
            ClassFileVersion ofThisVm = ClassFileVersion.ofThisVm(ClassFileVersion.JAVA_V5);
            if (ofThisVm.isAtLeast(ClassFileVersion.JAVA_V19)) {
                CURRENT = renderingDispatcher3;
            } else if (ofThisVm.isAtLeast(ClassFileVersion.JAVA_V14)) {
                CURRENT = renderingDispatcher2;
            } else {
                CURRENT = renderingDispatcher;
            }
        }
    }

    TypeDescription getAnnotationType();

    Set<ElementType> getElementTypes();

    RetentionPolicy getRetention();

    AnnotationValue<?, ?> getValue(String str);

    AnnotationValue<?, ?> getValue(MethodDescription.InDefinedShape inDefinedShape);

    boolean isDocumented();

    boolean isInherited();

    boolean isSupportedOn(String str);

    boolean isSupportedOn(ElementType elementType);

    <T extends Annotation> Loadable<T> prepare(Class<T> cls);
}
