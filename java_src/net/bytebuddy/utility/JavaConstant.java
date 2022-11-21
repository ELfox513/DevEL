package net.bytebuddy.utility;

import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.security.AccessController;
import java.security.PrivilegedAction;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import net.bytebuddy.ByteBuddy;
import net.bytebuddy.ClassFileVersion;
import net.bytebuddy.build.AccessControllerPlugin;
import net.bytebuddy.description.enumeration.EnumerationDescription;
import net.bytebuddy.description.field.FieldDescription;
import net.bytebuddy.description.method.MethodDescription;
import net.bytebuddy.description.type.TypeDescription;
import net.bytebuddy.description.type.TypeList;
import net.bytebuddy.dynamic.ClassFileLocator;
import net.bytebuddy.jar.asm.Type;
import net.bytebuddy.pool.TypePool;
import net.bytebuddy.utility.dispatcher.JavaDispatcher;
import net.bytebuddy.utility.nullability.MaybeNull;
/* loaded from: classes.dex */
public interface JavaConstant {

    /* renamed from: net.bytebuddy.utility.JavaConstant$1 */
    /* loaded from: classes.dex */
    public static /* synthetic */ class C50511 {

        /* renamed from: a */
        public static final /* synthetic */ int[] f19264a;

        static {
            int[] iArr = new int[MethodHandle.HandleType.values().length];
            f19264a = iArr;
            try {
                iArr[MethodHandle.HandleType.GET_FIELD.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f19264a[MethodHandle.HandleType.GET_STATIC_FIELD.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f19264a[MethodHandle.HandleType.PUT_FIELD.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f19264a[MethodHandle.HandleType.PUT_STATIC_FIELD.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* loaded from: classes.dex */
    public static class Dynamic implements JavaConstant {
        public static final String DEFAULT_NAME = "_";
        private final List<JavaConstant> arguments;
        private final MethodHandle bootstrap;
        private final String name;
        private final TypeDescription typeDescription;

        public static Dynamic bootstrap(String str, Method method, Object... objArr) {
            return bootstrap(str, method, Arrays.asList(objArr));
        }

        public static JavaConstant ofArrayVarHandle(Class<?> cls) {
            return ofArrayVarHandle(TypeDescription.ForLoadedType.m15196of(cls));
        }

        public static JavaConstant ofEnumeration(Enum<?> r1) {
            return ofEnumeration(new EnumerationDescription.ForLoadedEnumeration(r1));
        }

        public static Dynamic ofField(Field field) {
            return ofField(new FieldDescription.ForLoadedField(field));
        }

        public static Dynamic ofInvocation(Method method, Object... objArr) {
            return ofInvocation(method, Arrays.asList(objArr));
        }

        public static JavaConstant ofPrimitiveType(Class<?> cls) {
            return ofPrimitiveType(TypeDescription.ForLoadedType.m15196of(cls));
        }

        public static JavaConstant ofVarHandle(Field field) {
            return ofVarHandle(new FieldDescription.ForLoadedField(field));
        }

        @Override // net.bytebuddy.utility.JavaConstant
        public <T> T accept(Visitor<T> visitor) {
            return visitor.onDynamic(this);
        }

        public List<JavaConstant> getArguments() {
            return this.arguments;
        }

        public MethodHandle getBootstrap() {
            return this.bootstrap;
        }

        public String getName() {
            return this.name;
        }

        @Override // net.bytebuddy.utility.JavaConstant
        public TypeDescription getTypeDescription() {
            return this.typeDescription;
        }

        public JavaConstant withType(Class<?> cls) {
            return withType(TypeDescription.ForLoadedType.m15196of(cls));
        }

        public static Dynamic bootstrap(String str, Method method, List<?> list) {
            return bootstrap(str, new MethodDescription.ForLoadedMethod(method), list);
        }

        public static JavaConstant ofArrayVarHandle(TypeDescription typeDescription) {
            if (typeDescription.isArray()) {
                JavaType javaType = JavaType.VAR_HANDLE;
                TypeDescription typeStub = javaType.getTypeStub();
                MethodHandle.HandleType handleType = MethodHandle.HandleType.INVOKE_STATIC;
                TypeDescription typeStub2 = JavaType.CONSTANT_BOOTSTRAPS.getTypeStub();
                TypeDescription typeStub3 = javaType.getTypeStub();
                TypeDescription typeDescription2 = TypeDescription.CLASS;
                return new Dynamic(DEFAULT_NAME, typeStub, new MethodHandle(handleType, typeStub2, "arrayVarHandle", typeStub3, Arrays.asList(JavaType.METHOD_HANDLES_LOOKUP.getTypeStub(), TypeDescription.STRING, typeDescription2, typeDescription2)), Collections.singletonList(Simple.m14762of(typeDescription)));
            }
            throw new IllegalArgumentException("Not an array type: " + typeDescription);
        }

        public static JavaConstant ofEnumeration(EnumerationDescription enumerationDescription) {
            return new Dynamic(enumerationDescription.getValue(), enumerationDescription.getEnumerationType(), new MethodHandle(MethodHandle.HandleType.INVOKE_STATIC, JavaType.CONSTANT_BOOTSTRAPS.getTypeStub(), "enumConstant", TypeDescription.ForLoadedType.m15196of(Enum.class), Arrays.asList(JavaType.METHOD_HANDLES_LOOKUP.getTypeStub(), TypeDescription.STRING, TypeDescription.CLASS)), Collections.emptyList());
        }

        public static Dynamic ofField(FieldDescription.InDefinedShape inDefinedShape) {
            boolean equals;
            List asList;
            List singletonList;
            if (inDefinedShape.isStatic() && inDefinedShape.isFinal()) {
                if (inDefinedShape.getType().isPrimitive()) {
                    equals = inDefinedShape.getType().asErasure().asBoxed().equals(inDefinedShape.getType().asErasure());
                } else {
                    equals = inDefinedShape.getDeclaringType().equals(inDefinedShape.getType().asErasure());
                }
                String internalName = inDefinedShape.getInternalName();
                TypeDescription asErasure = inDefinedShape.getType().asErasure();
                MethodHandle.HandleType handleType = MethodHandle.HandleType.INVOKE_STATIC;
                TypeDescription typeStub = JavaType.CONSTANT_BOOTSTRAPS.getTypeStub();
                TypeDescription typeDescription = TypeDescription.OBJECT;
                if (equals) {
                    asList = Arrays.asList(JavaType.METHOD_HANDLES_LOOKUP.getTypeStub(), TypeDescription.STRING, TypeDescription.CLASS);
                } else {
                    TypeDescription typeDescription2 = TypeDescription.CLASS;
                    asList = Arrays.asList(JavaType.METHOD_HANDLES_LOOKUP.getTypeStub(), TypeDescription.STRING, typeDescription2, typeDescription2);
                }
                MethodHandle methodHandle = new MethodHandle(handleType, typeStub, "getStaticFinal", typeDescription, asList);
                if (equals) {
                    singletonList = Collections.emptyList();
                } else {
                    singletonList = Collections.singletonList(Simple.m14762of(inDefinedShape.getDeclaringType()));
                }
                return new Dynamic(internalName, asErasure, methodHandle, singletonList);
            }
            throw new IllegalArgumentException("Field must be static and final: " + inDefinedShape);
        }

        public static Dynamic ofInvocation(Method method, List<?> list) {
            return ofInvocation(new MethodDescription.ForLoadedMethod(method), list);
        }

        public static Dynamic ofNullConstant() {
            TypeDescription typeDescription = TypeDescription.OBJECT;
            return new Dynamic(DEFAULT_NAME, typeDescription, new MethodHandle(MethodHandle.HandleType.INVOKE_STATIC, JavaType.CONSTANT_BOOTSTRAPS.getTypeStub(), "nullConstant", typeDescription, Arrays.asList(JavaType.METHOD_HANDLES_LOOKUP.getTypeStub(), TypeDescription.STRING, TypeDescription.CLASS)), Collections.emptyList());
        }

        public static JavaConstant ofPrimitiveType(TypeDescription typeDescription) {
            if (typeDescription.isPrimitive()) {
                String descriptor = typeDescription.getDescriptor();
                TypeDescription typeDescription2 = TypeDescription.CLASS;
                return new Dynamic(descriptor, typeDescription2, new MethodHandle(MethodHandle.HandleType.INVOKE_STATIC, JavaType.CONSTANT_BOOTSTRAPS.getTypeStub(), "primitiveClass", typeDescription2, Arrays.asList(JavaType.METHOD_HANDLES_LOOKUP.getTypeStub(), TypeDescription.STRING, typeDescription2)), Collections.emptyList());
            }
            throw new IllegalArgumentException("Not a primitive type: " + typeDescription);
        }

        public static JavaConstant ofVarHandle(FieldDescription.InDefinedShape inDefinedShape) {
            String internalName = inDefinedShape.getInternalName();
            JavaType javaType = JavaType.VAR_HANDLE;
            TypeDescription typeStub = javaType.getTypeStub();
            MethodHandle.HandleType handleType = MethodHandle.HandleType.INVOKE_STATIC;
            TypeDescription typeStub2 = JavaType.CONSTANT_BOOTSTRAPS.getTypeStub();
            String str = inDefinedShape.isStatic() ? "staticFieldVarHandle" : "fieldVarHandle";
            TypeDescription typeStub3 = javaType.getTypeStub();
            TypeDescription typeDescription = TypeDescription.CLASS;
            return new Dynamic(internalName, typeStub, new MethodHandle(handleType, typeStub2, str, typeStub3, Arrays.asList(JavaType.METHOD_HANDLES_LOOKUP.getTypeStub(), TypeDescription.STRING, typeDescription, typeDescription, typeDescription)), Arrays.asList(Simple.m14762of(inDefinedShape.getDeclaringType()), Simple.m14762of(inDefinedShape.getType().asErasure())));
        }

        public boolean equals(@MaybeNull Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            Dynamic dynamic = (Dynamic) obj;
            if (!this.name.equals(dynamic.name) || !this.typeDescription.equals(dynamic.typeDescription) || !this.bootstrap.equals(dynamic.bootstrap)) {
                return false;
            }
            return this.arguments.equals(dynamic.arguments);
        }

        public int hashCode() {
            return (((((this.name.hashCode() * 31) + this.typeDescription.hashCode()) * 31) + this.bootstrap.hashCode()) * 31) + this.arguments.hashCode();
        }

        @Override // net.bytebuddy.utility.JavaConstant
        public Object toDescription() {
            Object[] array = Simple.CONSTANT_DESC.toArray(this.arguments.size());
            for (int i = 0; i < array.length; i++) {
                array[i] = this.arguments.get(i).toDescription();
            }
            Simple.Dispatcher.OfDynamicConstantDesc ofDynamicConstantDesc = Simple.DYNAMIC_CONSTANT_DESC;
            Simple.Dispatcher.OfMethodHandleDesc ofMethodHandleDesc = Simple.METHOD_HANDLE_DESC;
            Object valueOf = Simple.DIRECT_METHOD_HANDLE_DESC_KIND.valueOf(this.bootstrap.getHandleType().getIdentifier(), this.bootstrap.getOwnerType().isInterface());
            Simple.Dispatcher.OfClassDesc ofClassDesc = Simple.CLASS_DESC;
            return ofDynamicConstantDesc.ofCanonical(ofMethodHandleDesc.m14761of(valueOf, ofClassDesc.ofDescriptor(this.bootstrap.getOwnerType().getDescriptor()), this.bootstrap.getName(), this.bootstrap.getDescriptor()), getName(), ofClassDesc.ofDescriptor(this.typeDescription.getDescriptor()), array);
        }

        public String toString() {
            String str;
            StringBuilder sb = new StringBuilder();
            sb.append(this.bootstrap.getOwnerType().getSimpleName());
            sb.append("::");
            sb.append(this.bootstrap.getName());
            sb.append('(');
            if (this.name.equals(DEFAULT_NAME)) {
                str = "";
            } else {
                str = this.name;
            }
            sb.append(str);
            sb.append('/');
            boolean z = true;
            for (JavaConstant javaConstant : this.arguments) {
                if (z) {
                    z = false;
                } else {
                    sb.append(',');
                }
                sb.append(javaConstant.toString());
            }
            sb.append(')');
            sb.append(this.typeDescription.getSimpleName());
            return sb.toString();
        }

        public JavaConstant withType(TypeDescription typeDescription) {
            if (!typeDescription.represents(Void.TYPE)) {
                if (!getBootstrap().getName().equals(MethodDescription.CONSTRUCTOR_INTERNAL_NAME) ? typeDescription.asBoxed().isInHierarchyWith(getTypeDescription().asBoxed()) : getTypeDescription().isAssignableTo(typeDescription)) {
                    return new Dynamic(getName(), typeDescription, getBootstrap(), getArguments());
                }
                throw new IllegalArgumentException(typeDescription + " is not compatible with bootstrapped type " + getTypeDescription());
            }
            throw new IllegalArgumentException("Constant value cannot represent void");
        }

        public Dynamic(String str, TypeDescription typeDescription, MethodHandle methodHandle, List<JavaConstant> list) {
            this.name = str;
            this.typeDescription = typeDescription;
            this.bootstrap = methodHandle;
            this.arguments = list;
        }

        public static Dynamic bootstrap(String str, Constructor<?> constructor, Object... objArr) {
            return bootstrap(str, constructor, Arrays.asList(objArr));
        }

        public static Dynamic ofInvocation(Constructor<?> constructor, Object... objArr) {
            return ofInvocation(constructor, Arrays.asList(objArr));
        }

        public static Dynamic bootstrap(String str, Constructor<?> constructor, List<?> list) {
            return bootstrap(str, new MethodDescription.ForLoadedConstructor(constructor), list);
        }

        public static Dynamic ofInvocation(Constructor<?> constructor, List<?> list) {
            return ofInvocation(new MethodDescription.ForLoadedConstructor(constructor), list);
        }

        public static Dynamic bootstrap(String str, MethodDescription.InDefinedShape inDefinedShape, Object... objArr) {
            return bootstrap(str, inDefinedShape, Arrays.asList(objArr));
        }

        public static Dynamic ofInvocation(MethodDescription.InDefinedShape inDefinedShape, Object... objArr) {
            return ofInvocation(inDefinedShape, Arrays.asList(objArr));
        }

        public static Dynamic bootstrap(String str, MethodDescription.InDefinedShape inDefinedShape, List<?> list) {
            TypeDescription asErasure;
            if (str.length() != 0 && !str.contains(".")) {
                ArrayList arrayList = new ArrayList(list.size());
                ArrayList arrayList2 = new ArrayList(list.size());
                Iterator<?> it = list.iterator();
                while (it.hasNext()) {
                    JavaConstant wrap = Simple.wrap(it.next());
                    arrayList.add(wrap);
                    arrayList2.add(wrap.getTypeDescription());
                }
                if (inDefinedShape.isConstantBootstrap(arrayList2)) {
                    if (inDefinedShape.isConstructor()) {
                        asErasure = inDefinedShape.getDeclaringType();
                    } else {
                        asErasure = inDefinedShape.getReturnType().asErasure();
                    }
                    return new Dynamic(str, asErasure, new MethodHandle(inDefinedShape.isConstructor() ? MethodHandle.HandleType.INVOKE_SPECIAL_CONSTRUCTOR : MethodHandle.HandleType.INVOKE_STATIC, inDefinedShape.getDeclaringType(), inDefinedShape.getInternalName(), inDefinedShape.getReturnType().asErasure(), inDefinedShape.getParameters().asTypeList().asErasures()), arrayList);
                }
                throw new IllegalArgumentException("Not a valid bootstrap method " + inDefinedShape + " for " + arrayList);
            }
            throw new IllegalArgumentException("Not a valid field name: " + str);
        }

        /* JADX WARN: Code restructure failed: missing block: B:19:0x0054, code lost:
            if ((r12.getParameters().size() + ((r12.isStatic() || r12.isConstructor()) ? 0 : 1)) <= (r13.size() + 1)) goto L19;
         */
        /* JADX WARN: Code restructure failed: missing block: B:29:0x0074, code lost:
            if ((r12.getParameters().size() + ((r12.isStatic() || r12.isConstructor()) ? 0 : 1)) == r13.size()) goto L19;
         */
        /* JADX WARN: Code restructure failed: missing block: B:31:0x007a, code lost:
            if (r12.isStatic() != false) goto L44;
         */
        /* JADX WARN: Code restructure failed: missing block: B:33:0x0080, code lost:
            if (r12.isConstructor() == false) goto L23;
         */
        /* JADX WARN: Code restructure failed: missing block: B:35:0x0083, code lost:
            r0 = net.bytebuddy.utility.CompoundList.m14778of(r12.getDeclaringType(), r12.getParameters().asTypeList().asErasures());
         */
        /* JADX WARN: Code restructure failed: missing block: B:36:0x0098, code lost:
            r0 = r12.getParameters().asTypeList().asErasures();
         */
        /* JADX WARN: Code restructure failed: missing block: B:38:0x00a8, code lost:
            if (r12.isVarArgs() == false) goto L43;
         */
        /* JADX WARN: Code restructure failed: missing block: B:39:0x00aa, code lost:
            r0 = net.bytebuddy.utility.CompoundList.m14776of(r0.subList(0, r0.size() - 1), java.util.Collections.nCopies((r13.size() - r0.size()) + 1, ((net.bytebuddy.description.type.TypeDescription) r0.get(r0.size() - 1)).getComponentType())).iterator();
         */
        /* JADX WARN: Code restructure failed: missing block: B:40:0x00d9, code lost:
            r0 = r0.iterator();
         */
        /* JADX WARN: Code restructure failed: missing block: B:41:0x00dd, code lost:
            r5 = new java.util.ArrayList(r13.size() + 1);
            r5.add(net.bytebuddy.utility.JavaConstant.MethodHandle.m14771of(r12));
            r6 = r13.iterator();
         */
        /* JADX WARN: Code restructure failed: missing block: B:43:0x00f6, code lost:
            if (r6.hasNext() == false) goto L36;
         */
        /* JADX WARN: Code restructure failed: missing block: B:44:0x00f8, code lost:
            r7 = net.bytebuddy.utility.JavaConstant.Simple.wrap(r6.next());
         */
        /* JADX WARN: Code restructure failed: missing block: B:45:0x010e, code lost:
            if (r7.getTypeDescription().isAssignableTo((net.bytebuddy.description.type.TypeDescription) r0.next()) == false) goto L33;
         */
        /* JADX WARN: Code restructure failed: missing block: B:46:0x0110, code lost:
            r5.add(r7);
         */
        /* JADX WARN: Code restructure failed: missing block: B:48:0x012e, code lost:
            throw new java.lang.IllegalArgumentException("Cannot assign " + r13 + " to " + r12);
         */
        /* JADX WARN: Code restructure failed: missing block: B:50:0x0135, code lost:
            if (r12.isConstructor() == false) goto L42;
         */
        /* JADX WARN: Code restructure failed: missing block: B:51:0x0137, code lost:
            r12 = r12.getDeclaringType();
         */
        /* JADX WARN: Code restructure failed: missing block: B:52:0x013c, code lost:
            r12 = r12.getReturnType().asErasure();
         */
        /* JADX WARN: Code restructure failed: missing block: B:53:0x0144, code lost:
            r7 = net.bytebuddy.utility.JavaConstant.MethodHandle.HandleType.INVOKE_STATIC;
            r8 = net.bytebuddy.utility.JavaType.CONSTANT_BOOTSTRAPS.getTypeStub();
            r10 = net.bytebuddy.description.type.TypeDescription.OBJECT;
         */
        /* JADX WARN: Code restructure failed: missing block: B:54:0x0183, code lost:
            return new net.bytebuddy.utility.JavaConstant.Dynamic(net.bytebuddy.utility.JavaConstant.Dynamic.DEFAULT_NAME, r12, new net.bytebuddy.utility.JavaConstant.MethodHandle(r7, r8, "invoke", r10, java.util.Arrays.asList(net.bytebuddy.utility.JavaType.METHOD_HANDLES_LOOKUP.getTypeStub(), net.bytebuddy.description.type.TypeDescription.STRING, net.bytebuddy.description.type.TypeDescription.CLASS, net.bytebuddy.utility.JavaType.METHOD_HANDLE.getTypeStub(), net.bytebuddy.description.type.TypeDescription.ArrayProjection.m15199of(r10))), r5);
         */
        /* JADX WARN: Code restructure failed: missing block: B:56:0x019f, code lost:
            throw new java.lang.IllegalArgumentException("Cannot assign " + r13 + " to " + r12);
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static net.bytebuddy.utility.JavaConstant.Dynamic ofInvocation(net.bytebuddy.description.method.MethodDescription.InDefinedShape r12, java.util.List<?> r13) {
            /*
                Method dump skipped, instructions count: 417
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: net.bytebuddy.utility.JavaConstant.Dynamic.ofInvocation(net.bytebuddy.description.method.MethodDescription$InDefinedShape, java.util.List):net.bytebuddy.utility.JavaConstant$Dynamic");
        }
    }

    /* loaded from: classes.dex */
    public static class MethodHandle implements JavaConstant {
        private static final boolean ACCESS_CONTROLLER;
        public static final MethodHandles METHOD_HANDLES;
        public static final MethodHandles.Lookup METHOD_HANDLES_LOOKUP;
        public static final MethodHandleInfo METHOD_HANDLE_INFO;
        public static final MethodType METHOD_TYPE;
        private final HandleType handleType;
        private final String name;
        private final TypeDescription ownerType;
        private final List<? extends TypeDescription> parameterTypes;
        private final TypeDescription returnType;

        @JavaDispatcher.Proxied("java.lang.invoke.MethodHandleInfo")
        /* loaded from: classes.dex */
        public interface MethodHandleInfo {
            @JavaDispatcher.Proxied("getDeclaringClass")
            Class<?> getDeclaringClass(Object obj);

            @JavaDispatcher.Proxied("getMethodType")
            Object getMethodType(Object obj);

            @JavaDispatcher.Proxied("getName")
            String getName(Object obj);

            @JavaDispatcher.Proxied("getReferenceKind")
            int getReferenceKind(Object obj);

            @JavaDispatcher.IsConstructor
            @JavaDispatcher.Proxied("revealDirect")
            Object revealDirect(@JavaDispatcher.Proxied("java.lang.invoke.MethodHandle") Object obj);
        }

        @JavaDispatcher.Proxied("java.lang.invoke.MethodHandles")
        /* loaded from: classes.dex */
        public interface MethodHandles {

            @JavaDispatcher.Proxied("java.lang.invoke.MethodHandles$Lookup")
            /* loaded from: classes.dex */
            public interface Lookup {
                @JavaDispatcher.Proxied("lookupClass")
                Class<?> lookupClass(Object obj);

                @JavaDispatcher.Proxied("revealDirect")
                Object revealDirect(Object obj, @JavaDispatcher.Proxied("java.lang.invoke.MethodHandle") Object obj2);
            }

            @JavaDispatcher.IsStatic
            @JavaDispatcher.Proxied("publicLookup")
            Object publicLookup();
        }

        @JavaDispatcher.Proxied("java.lang.invoke.MethodType")
        /* loaded from: classes.dex */
        public interface MethodType {
            @JavaDispatcher.Proxied("parameterArray")
            Class<?>[] parameterArray(Object obj);

            @JavaDispatcher.Proxied("returnType")
            Class<?> returnType(Object obj);
        }

        static {
            boolean z = false;
            try {
                Class.forName("java.security.AccessController", false, null);
                ACCESS_CONTROLLER = Boolean.parseBoolean(System.getProperty("net.bytebuddy.securitymanager", "true"));
            } catch (ClassNotFoundException unused) {
                ACCESS_CONTROLLER = z;
                METHOD_HANDLE_INFO = (MethodHandleInfo) doPrivileged(JavaDispatcher.m14754of(MethodHandleInfo.class));
                METHOD_TYPE = (MethodType) doPrivileged(JavaDispatcher.m14754of(MethodType.class));
                METHOD_HANDLES = (MethodHandles) doPrivileged(JavaDispatcher.m14754of(MethodHandles.class));
                METHOD_HANDLES_LOOKUP = (MethodHandles.Lookup) doPrivileged(JavaDispatcher.m14754of(MethodHandles.Lookup.class));
            } catch (SecurityException unused2) {
                z = true;
                ACCESS_CONTROLLER = z;
                METHOD_HANDLE_INFO = (MethodHandleInfo) doPrivileged(JavaDispatcher.m14754of(MethodHandleInfo.class));
                METHOD_TYPE = (MethodType) doPrivileged(JavaDispatcher.m14754of(MethodType.class));
                METHOD_HANDLES = (MethodHandles) doPrivileged(JavaDispatcher.m14754of(MethodHandles.class));
                METHOD_HANDLES_LOOKUP = (MethodHandles.Lookup) doPrivileged(JavaDispatcher.m14754of(MethodHandles.Lookup.class));
            }
            METHOD_HANDLE_INFO = (MethodHandleInfo) doPrivileged(JavaDispatcher.m14754of(MethodHandleInfo.class));
            METHOD_TYPE = (MethodType) doPrivileged(JavaDispatcher.m14754of(MethodType.class));
            METHOD_HANDLES = (MethodHandles) doPrivileged(JavaDispatcher.m14754of(MethodHandles.class));
            METHOD_HANDLES_LOOKUP = (MethodHandles.Lookup) doPrivileged(JavaDispatcher.m14754of(MethodHandles.Lookup.class));
        }

        @AccessControllerPlugin.Enhance
        private static <T> T doPrivileged(PrivilegedAction<T> privilegedAction) {
            return ACCESS_CONTROLLER ? (T) AccessController.doPrivileged(privilegedAction) : privilegedAction.run();
        }

        public static Class<?> lookupType(Object obj) {
            return METHOD_HANDLES_LOOKUP.lookupClass(obj);
        }

        /* renamed from: of */
        public static MethodHandle m14772of(Method method) {
            return m14771of(new MethodDescription.ForLoadedMethod(method));
        }

        public static MethodHandle ofGetter(Field field) {
            return ofGetter(new FieldDescription.ForLoadedField(field));
        }

        public static MethodHandle ofLoaded(Object obj) {
            return ofLoaded(obj, METHOD_HANDLES.publicLookup());
        }

        public static MethodHandle ofSetter(Field field) {
            return ofSetter(new FieldDescription.ForLoadedField(field));
        }

        public static MethodHandle ofSpecial(Method method, Class<?> cls) {
            return ofSpecial(new MethodDescription.ForLoadedMethod(method), TypeDescription.ForLoadedType.m15196of(cls));
        }

        @Override // net.bytebuddy.utility.JavaConstant
        public <T> T accept(Visitor<T> visitor) {
            return visitor.onMethodHandle(this);
        }

        public boolean equals(@MaybeNull Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof MethodHandle)) {
                return false;
            }
            MethodHandle methodHandle = (MethodHandle) obj;
            return this.handleType == methodHandle.handleType && this.name.equals(methodHandle.name) && this.ownerType.equals(methodHandle.ownerType) && this.parameterTypes.equals(methodHandle.parameterTypes) && this.returnType.equals(methodHandle.returnType);
        }

        public HandleType getHandleType() {
            return this.handleType;
        }

        public String getName() {
            return this.name;
        }

        public TypeDescription getOwnerType() {
            return this.ownerType;
        }

        public TypeList getParameterTypes() {
            return new TypeList.Explicit(this.parameterTypes);
        }

        public TypeDescription getReturnType() {
            return this.returnType;
        }

        @Override // net.bytebuddy.utility.JavaConstant
        public TypeDescription getTypeDescription() {
            return JavaType.METHOD_HANDLE.getTypeStub();
        }

        /* loaded from: classes.dex */
        public enum HandleType {
            INVOKE_VIRTUAL(5, false),
            INVOKE_STATIC(6, false),
            INVOKE_SPECIAL(7, false),
            INVOKE_INTERFACE(9, false),
            INVOKE_SPECIAL_CONSTRUCTOR(8, false),
            PUT_FIELD(3, true),
            GET_FIELD(1, true),
            PUT_STATIC_FIELD(4, true),
            GET_STATIC_FIELD(2, true);
            
            private final boolean field;
            private final int identifier;

            /* renamed from: of */
            public static HandleType m14769of(MethodDescription.InDefinedShape inDefinedShape) {
                if (!inDefinedShape.isTypeInitializer()) {
                    if (inDefinedShape.isStatic()) {
                        return INVOKE_STATIC;
                    }
                    if (inDefinedShape.isConstructor()) {
                        return INVOKE_SPECIAL_CONSTRUCTOR;
                    }
                    if (inDefinedShape.isPrivate()) {
                        return INVOKE_SPECIAL;
                    }
                    if (inDefinedShape.getDeclaringType().isInterface()) {
                        return INVOKE_INTERFACE;
                    }
                    return INVOKE_VIRTUAL;
                }
                throw new IllegalArgumentException("Cannot create handle of type initializer " + inDefinedShape);
            }

            public static HandleType ofGetter(FieldDescription.InDefinedShape inDefinedShape) {
                return inDefinedShape.isStatic() ? GET_STATIC_FIELD : GET_FIELD;
            }

            public static HandleType ofSetter(FieldDescription.InDefinedShape inDefinedShape) {
                return inDefinedShape.isStatic() ? PUT_STATIC_FIELD : PUT_FIELD;
            }

            public int getIdentifier() {
                return this.identifier;
            }

            public boolean isField() {
                return this.field;
            }

            HandleType(int i, boolean z) {
                this.identifier = i;
                this.field = z;
            }

            public static HandleType ofSpecial(MethodDescription.InDefinedShape inDefinedShape) {
                if (!inDefinedShape.isStatic() && !inDefinedShape.isAbstract()) {
                    if (inDefinedShape.isConstructor()) {
                        return INVOKE_SPECIAL_CONSTRUCTOR;
                    }
                    return INVOKE_SPECIAL;
                }
                throw new IllegalArgumentException("Cannot invoke " + inDefinedShape + " via invokespecial");
            }

            /* renamed from: of */
            public static HandleType m14770of(int i) {
                HandleType[] values;
                for (HandleType handleType : values()) {
                    if (handleType.getIdentifier() == i) {
                        return handleType;
                    }
                }
                throw new IllegalArgumentException("Unknown handle type: " + i);
            }
        }

        /* renamed from: of */
        public static MethodHandle m14773of(Constructor<?> constructor) {
            return m14771of(new MethodDescription.ForLoadedConstructor(constructor));
        }

        public static MethodHandle ofGetter(FieldDescription.InDefinedShape inDefinedShape) {
            return new MethodHandle(HandleType.ofGetter(inDefinedShape), inDefinedShape.getDeclaringType().asErasure(), inDefinedShape.getInternalName(), inDefinedShape.getType().asErasure(), Collections.emptyList());
        }

        public static MethodHandle ofLoaded(Object obj, Object obj2) {
            Object revealDirect;
            if (JavaType.METHOD_HANDLE.isInstance(obj)) {
                if (JavaType.METHOD_HANDLES_LOOKUP.isInstance(obj2)) {
                    if (ClassFileVersion.ofThisVm(ClassFileVersion.JAVA_V8).isAtMost(ClassFileVersion.JAVA_V7)) {
                        revealDirect = METHOD_HANDLE_INFO.revealDirect(obj);
                    } else {
                        revealDirect = METHOD_HANDLES_LOOKUP.revealDirect(obj2, obj);
                    }
                    MethodHandleInfo methodHandleInfo = METHOD_HANDLE_INFO;
                    Object methodType = methodHandleInfo.getMethodType(revealDirect);
                    HandleType m14770of = HandleType.m14770of(methodHandleInfo.getReferenceKind(revealDirect));
                    TypeDescription m15196of = TypeDescription.ForLoadedType.m15196of(methodHandleInfo.getDeclaringClass(revealDirect));
                    String name = methodHandleInfo.getName(revealDirect);
                    MethodType methodType2 = METHOD_TYPE;
                    return new MethodHandle(m14770of, m15196of, name, TypeDescription.ForLoadedType.m15196of(methodType2.returnType(methodType)), new TypeList.ForLoadedTypes(methodType2.parameterArray(methodType)));
                }
                throw new IllegalArgumentException("Expected method handle lookup object: " + obj2);
            }
            throw new IllegalArgumentException("Expected method handle object: " + obj);
        }

        public static MethodHandle ofSetter(FieldDescription.InDefinedShape inDefinedShape) {
            return new MethodHandle(HandleType.ofSetter(inDefinedShape), inDefinedShape.getDeclaringType().asErasure(), inDefinedShape.getInternalName(), TypeDescription.VOID, Collections.singletonList(inDefinedShape.getType().asErasure()));
        }

        public static MethodHandle ofSpecial(MethodDescription.InDefinedShape inDefinedShape, TypeDescription typeDescription) {
            if (inDefinedShape.isSpecializableFor(typeDescription)) {
                return new MethodHandle(HandleType.ofSpecial(inDefinedShape), typeDescription, inDefinedShape.getInternalName(), inDefinedShape.getReturnType().asErasure(), inDefinedShape.getParameters().asTypeList().asErasures());
            }
            throw new IllegalArgumentException("Cannot specialize " + inDefinedShape + " for " + typeDescription);
        }

        public String getDescriptor() {
            int i = C50511.f19264a[this.handleType.ordinal()];
            if (i != 1 && i != 2) {
                if (i != 3 && i != 4) {
                    StringBuilder sb = new StringBuilder();
                    sb.append('(');
                    for (TypeDescription typeDescription : this.parameterTypes) {
                        sb.append(typeDescription.getDescriptor());
                    }
                    sb.append(')');
                    sb.append(this.returnType.getDescriptor());
                    return sb.toString();
                }
                return this.parameterTypes.get(0).getDescriptor();
            }
            return this.returnType.getDescriptor();
        }

        public int hashCode() {
            return (((((((this.handleType.hashCode() * 31) + this.ownerType.hashCode()) * 31) + this.name.hashCode()) * 31) + this.returnType.hashCode()) * 31) + this.parameterTypes.hashCode();
        }

        @Override // net.bytebuddy.utility.JavaConstant
        public Object toDescription() {
            return Simple.METHOD_HANDLE_DESC.m14761of(Simple.DIRECT_METHOD_HANDLE_DESC_KIND.valueOf(this.handleType.getIdentifier(), this.ownerType.isInterface()), Simple.CLASS_DESC.ofDescriptor(this.ownerType.getDescriptor()), this.name, getDescriptor());
        }

        public String toString() {
            String str;
            StringBuilder sb = new StringBuilder();
            sb.append(this.handleType.name());
            if (this.ownerType.isInterface() && !this.handleType.isField() && this.handleType != HandleType.INVOKE_INTERFACE) {
                str = "@interface";
            } else {
                str = "";
            }
            sb.append(str);
            sb.append('/');
            sb.append(this.ownerType.getSimpleName());
            sb.append("::");
            sb.append(this.name);
            sb.append('(');
            boolean z = true;
            for (TypeDescription typeDescription : this.parameterTypes) {
                if (z) {
                    z = false;
                } else {
                    sb.append(',');
                }
                sb.append(typeDescription.getSimpleName());
            }
            sb.append(')');
            sb.append(this.returnType.getSimpleName());
            return sb.toString();
        }

        public MethodHandle(HandleType handleType, TypeDescription typeDescription, String str, TypeDescription typeDescription2, List<? extends TypeDescription> list) {
            this.handleType = handleType;
            this.ownerType = typeDescription;
            this.name = str;
            this.returnType = typeDescription2;
            this.parameterTypes = list;
        }

        /* renamed from: of */
        public static MethodHandle m14771of(MethodDescription.InDefinedShape inDefinedShape) {
            return new MethodHandle(HandleType.m14769of(inDefinedShape), inDefinedShape.getDeclaringType().asErasure(), inDefinedShape.getInternalName(), inDefinedShape.getReturnType().asErasure(), inDefinedShape.getParameters().asTypeList().asErasures());
        }
    }

    /* loaded from: classes.dex */
    public static class MethodType implements JavaConstant {
        private static final boolean ACCESS_CONTROLLER;
        private static final Dispatcher DISPATCHER;
        private final List<? extends TypeDescription> parameterTypes;
        private final TypeDescription returnType;

        @JavaDispatcher.Proxied("java.lang.invoke.MethodType")
        /* loaded from: classes.dex */
        public interface Dispatcher {
            @JavaDispatcher.Proxied("parameterArray")
            Class<?>[] parameterArray(Object obj);

            @JavaDispatcher.Proxied("returnType")
            Class<?> returnType(Object obj);
        }

        static {
            boolean z = false;
            try {
                Class.forName("java.security.AccessController", false, null);
                ACCESS_CONTROLLER = Boolean.parseBoolean(System.getProperty("net.bytebuddy.securitymanager", "true"));
            } catch (ClassNotFoundException unused) {
                ACCESS_CONTROLLER = z;
                DISPATCHER = (Dispatcher) doPrivileged(JavaDispatcher.m14754of(Dispatcher.class));
            } catch (SecurityException unused2) {
                z = true;
                ACCESS_CONTROLLER = z;
                DISPATCHER = (Dispatcher) doPrivileged(JavaDispatcher.m14754of(Dispatcher.class));
            }
            DISPATCHER = (Dispatcher) doPrivileged(JavaDispatcher.m14754of(Dispatcher.class));
        }

        @AccessControllerPlugin.Enhance
        private static <T> T doPrivileged(PrivilegedAction<T> privilegedAction) {
            return ACCESS_CONTROLLER ? (T) AccessController.doPrivileged(privilegedAction) : privilegedAction.run();
        }

        /* renamed from: of */
        public static MethodType m14768of(Class<?> cls, Class<?>... clsArr) {
            return m14764of(TypeDescription.ForLoadedType.m15196of(cls), new TypeList.ForLoadedTypes(clsArr));
        }

        public static MethodType ofConstant(Object obj) {
            return ofConstant(obj.getClass());
        }

        public static MethodType ofGetter(Field field) {
            return ofGetter(new FieldDescription.ForLoadedField(field));
        }

        public static MethodType ofSetter(Field field) {
            return ofSetter(new FieldDescription.ForLoadedField(field));
        }

        @Override // net.bytebuddy.utility.JavaConstant
        public <T> T accept(Visitor<T> visitor) {
            return visitor.onMethodType(this);
        }

        public boolean equals(@MaybeNull Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof MethodType)) {
                return false;
            }
            MethodType methodType = (MethodType) obj;
            return this.parameterTypes.equals(methodType.parameterTypes) && this.returnType.equals(methodType.returnType);
        }

        public TypeList getParameterTypes() {
            return new TypeList.Explicit(this.parameterTypes);
        }

        public TypeDescription getReturnType() {
            return this.returnType;
        }

        @Override // net.bytebuddy.utility.JavaConstant
        public TypeDescription getTypeDescription() {
            return JavaType.METHOD_TYPE.getTypeStub();
        }

        /* renamed from: of */
        public static MethodType m14763of(TypeDescription typeDescription, TypeDescription... typeDescriptionArr) {
            return new MethodType(typeDescription, Arrays.asList(typeDescriptionArr));
        }

        public static MethodType ofConstant(Class<?> cls) {
            return ofConstant(TypeDescription.ForLoadedType.m15196of(cls));
        }

        public static MethodType ofGetter(FieldDescription fieldDescription) {
            return new MethodType(fieldDescription.getType().asErasure(), Collections.emptyList());
        }

        public static MethodType ofLoaded(Object obj) {
            if (JavaType.METHOD_TYPE.isInstance(obj)) {
                Dispatcher dispatcher = DISPATCHER;
                return m14768of(dispatcher.returnType(obj), dispatcher.parameterArray(obj));
            }
            throw new IllegalArgumentException("Expected method type object: " + obj);
        }

        public static MethodType ofSetter(FieldDescription fieldDescription) {
            return new MethodType(TypeDescription.VOID, Collections.singletonList(fieldDescription.getType().asErasure()));
        }

        public String getDescriptor() {
            StringBuilder sb = new StringBuilder("(");
            for (TypeDescription typeDescription : this.parameterTypes) {
                sb.append(typeDescription.getDescriptor());
            }
            sb.append(')');
            sb.append(this.returnType.getDescriptor());
            return sb.toString();
        }

        public int hashCode() {
            return (this.returnType.hashCode() * 31) + this.parameterTypes.hashCode();
        }

        @Override // net.bytebuddy.utility.JavaConstant
        public Object toDescription() {
            Object[] array = Simple.CLASS_DESC.toArray(this.parameterTypes.size());
            for (int i = 0; i < this.parameterTypes.size(); i++) {
                array[i] = Simple.CLASS_DESC.ofDescriptor(this.parameterTypes.get(i).getDescriptor());
            }
            return Simple.METHOD_TYPE_DESC.m14760of(Simple.CLASS_DESC.ofDescriptor(this.returnType.getDescriptor()), array);
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append('(');
            boolean z = true;
            for (TypeDescription typeDescription : this.parameterTypes) {
                if (z) {
                    z = false;
                } else {
                    sb.append(',');
                }
                sb.append(typeDescription.getSimpleName());
            }
            sb.append(')');
            sb.append(this.returnType.getSimpleName());
            return sb.toString();
        }

        public MethodType(TypeDescription typeDescription, List<? extends TypeDescription> list) {
            this.returnType = typeDescription;
            this.parameterTypes = list;
        }

        /* renamed from: of */
        public static MethodType m14764of(TypeDescription typeDescription, List<? extends TypeDescription> list) {
            return new MethodType(typeDescription, list);
        }

        public static MethodType ofConstant(TypeDescription typeDescription) {
            return new MethodType(typeDescription, Collections.emptyList());
        }

        /* renamed from: of */
        public static MethodType m14766of(Method method) {
            return m14765of(new MethodDescription.ForLoadedMethod(method));
        }

        /* renamed from: of */
        public static MethodType m14767of(Constructor<?> constructor) {
            return m14765of(new MethodDescription.ForLoadedConstructor(constructor));
        }

        /* renamed from: of */
        public static MethodType m14765of(MethodDescription methodDescription) {
            return new MethodType(methodDescription.getReturnType().asErasure(), methodDescription.getParameters().asTypeList().asErasures());
        }
    }

    /* loaded from: classes.dex */
    public static abstract class Simple<T> implements JavaConstant {
        private static final boolean ACCESS_CONTROLLER;
        public static final Dispatcher.OfClassDesc CLASS_DESC;
        public static final Dispatcher CONSTANT_DESC;
        public static final Dispatcher.OfDirectMethodHandleDesc DIRECT_METHOD_HANDLE_DESC;
        public static final Dispatcher.OfDirectMethodHandleDesc.ForKind DIRECT_METHOD_HANDLE_DESC_KIND;
        public static final Dispatcher.OfDynamicConstantDesc DYNAMIC_CONSTANT_DESC;
        public static final Dispatcher.OfMethodHandleDesc METHOD_HANDLE_DESC;
        public static final Dispatcher.OfMethodTypeDesc METHOD_TYPE_DESC;
        private final TypeDescription typeDescription;
        public final T value;

        @JavaDispatcher.Proxied("java.lang.constant.ConstantDesc")
        /* loaded from: classes.dex */
        public interface Dispatcher {

            @JavaDispatcher.Proxied("java.lang.constant.ClassDesc")
            /* loaded from: classes.dex */
            public interface OfClassDesc extends Dispatcher {
                @JavaDispatcher.Proxied("descriptorString")
                String descriptorString(Object obj);

                @JavaDispatcher.IsStatic
                @JavaDispatcher.Proxied("ofDescriptor")
                Object ofDescriptor(String str);
            }

            @JavaDispatcher.Proxied("java.lang.constant.DirectMethodHandleDesc")
            /* loaded from: classes.dex */
            public interface OfDirectMethodHandleDesc extends Dispatcher {

                @JavaDispatcher.Proxied("java.lang.constant.DirectMethodHandleDesc$Kind")
                /* loaded from: classes.dex */
                public interface ForKind {
                    @JavaDispatcher.IsStatic
                    @JavaDispatcher.Proxied(ByteBuddy.EnumerationImplementation.ENUM_VALUE_OF_METHOD_NAME)
                    Object valueOf(int i, boolean z);
                }

                @JavaDispatcher.Proxied("lookupDescriptor")
                String lookupDescriptor(Object obj);

                @JavaDispatcher.Proxied("methodName")
                String methodName(Object obj);

                @JavaDispatcher.Proxied("owner")
                Object owner(Object obj);

                @JavaDispatcher.Proxied("refKind")
                int refKind(Object obj);
            }

            @JavaDispatcher.Proxied("java.lang.constant.DynamicConstantDesc")
            /* loaded from: classes.dex */
            public interface OfDynamicConstantDesc extends Dispatcher {
                @JavaDispatcher.Proxied("bootstrapArgs")
                Object[] bootstrapArgs(Object obj);

                @JavaDispatcher.Proxied("bootstrapMethod")
                Object bootstrapMethod(Object obj);

                @JavaDispatcher.Proxied("constantName")
                String constantName(Object obj);

                @JavaDispatcher.Proxied("constantType")
                Object constantType(Object obj);

                @JavaDispatcher.IsStatic
                @JavaDispatcher.Proxied("ofCanonical")
                Object ofCanonical(@JavaDispatcher.Proxied("java.lang.constant.DirectMethodHandleDesc") Object obj, String str, @JavaDispatcher.Proxied("java.lang.constant.ClassDesc") Object obj2, @JavaDispatcher.Proxied("java.lang.constant.ConstantDesc") Object[] objArr);
            }

            @JavaDispatcher.Proxied("java.lang.constant.MethodHandleDesc")
            /* loaded from: classes.dex */
            public interface OfMethodHandleDesc extends Dispatcher {
                @JavaDispatcher.Proxied("invocationType")
                Object invocationType(Object obj);

                @JavaDispatcher.IsStatic
                @JavaDispatcher.Proxied("of")
                /* renamed from: of */
                Object m14761of(@JavaDispatcher.Proxied("java.lang.constant.DirectMethodHandleDesc$Kind") Object obj, @JavaDispatcher.Proxied("java.lang.constant.ClassDesc") Object obj2, String str, String str2);
            }

            @JavaDispatcher.Proxied("java.lang.constant.MethodTypeDesc")
            /* loaded from: classes.dex */
            public interface OfMethodTypeDesc extends Dispatcher {
                @JavaDispatcher.IsStatic
                @JavaDispatcher.Proxied("of")
                /* renamed from: of */
                Object m14760of(@JavaDispatcher.Proxied("java.lang.constant.ClassDesc") Object obj, @JavaDispatcher.Proxied("java.lang.constant.ClassDesc") Object[] objArr);

                @JavaDispatcher.IsStatic
                @JavaDispatcher.Proxied("ofDescriptor")
                Object ofDescriptor(String str);

                @JavaDispatcher.Proxied("parameterArray")
                Object[] parameterArray(Object obj);

                @JavaDispatcher.Proxied("returnType")
                Object returnType(Object obj);
            }

            @JavaDispatcher.Instance
            @JavaDispatcher.Proxied("isInstance")
            boolean isInstance(Object obj);

            @JavaDispatcher.Container
            @JavaDispatcher.Proxied("toArray")
            Object[] toArray(int i);
        }

        /* loaded from: classes.dex */
        public static class OfTrivialValue<S> extends Simple<S> {
            public OfTrivialValue(S s, TypeDescription typeDescription) {
                super(s, typeDescription);
            }

            @Override // net.bytebuddy.utility.JavaConstant
            public <T> T accept(Visitor<T> visitor) {
                return visitor.onValue(this);
            }

            @Override // net.bytebuddy.utility.JavaConstant
            public Object toDescription() {
                return this.value;
            }
        }

        /* loaded from: classes.dex */
        public static class OfTypeDescription extends Simple<TypeDescription> {
            public OfTypeDescription(TypeDescription typeDescription) {
                super(typeDescription, TypeDescription.CLASS);
            }

            @Override // net.bytebuddy.utility.JavaConstant
            public <T> T accept(Visitor<T> visitor) {
                return visitor.onType(this);
            }

            @Override // net.bytebuddy.utility.JavaConstant
            public Object toDescription() {
                return Simple.CLASS_DESC.ofDescriptor(((TypeDescription) this.value).getDescriptor());
            }
        }

        static {
            boolean z = false;
            try {
                Class.forName("java.security.AccessController", false, null);
                ACCESS_CONTROLLER = Boolean.parseBoolean(System.getProperty("net.bytebuddy.securitymanager", "true"));
            } catch (ClassNotFoundException unused) {
                ACCESS_CONTROLLER = z;
                CONSTANT_DESC = (Dispatcher) doPrivileged(JavaDispatcher.m14754of(Dispatcher.class));
                CLASS_DESC = (Dispatcher.OfClassDesc) doPrivileged(JavaDispatcher.m14754of(Dispatcher.OfClassDesc.class));
                METHOD_TYPE_DESC = (Dispatcher.OfMethodTypeDesc) doPrivileged(JavaDispatcher.m14754of(Dispatcher.OfMethodTypeDesc.class));
                METHOD_HANDLE_DESC = (Dispatcher.OfMethodHandleDesc) doPrivileged(JavaDispatcher.m14754of(Dispatcher.OfMethodHandleDesc.class));
                DIRECT_METHOD_HANDLE_DESC = (Dispatcher.OfDirectMethodHandleDesc) doPrivileged(JavaDispatcher.m14754of(Dispatcher.OfDirectMethodHandleDesc.class));
                DIRECT_METHOD_HANDLE_DESC_KIND = (Dispatcher.OfDirectMethodHandleDesc.ForKind) doPrivileged(JavaDispatcher.m14754of(Dispatcher.OfDirectMethodHandleDesc.ForKind.class));
                DYNAMIC_CONSTANT_DESC = (Dispatcher.OfDynamicConstantDesc) doPrivileged(JavaDispatcher.m14754of(Dispatcher.OfDynamicConstantDesc.class));
            } catch (SecurityException unused2) {
                z = true;
                ACCESS_CONTROLLER = z;
                CONSTANT_DESC = (Dispatcher) doPrivileged(JavaDispatcher.m14754of(Dispatcher.class));
                CLASS_DESC = (Dispatcher.OfClassDesc) doPrivileged(JavaDispatcher.m14754of(Dispatcher.OfClassDesc.class));
                METHOD_TYPE_DESC = (Dispatcher.OfMethodTypeDesc) doPrivileged(JavaDispatcher.m14754of(Dispatcher.OfMethodTypeDesc.class));
                METHOD_HANDLE_DESC = (Dispatcher.OfMethodHandleDesc) doPrivileged(JavaDispatcher.m14754of(Dispatcher.OfMethodHandleDesc.class));
                DIRECT_METHOD_HANDLE_DESC = (Dispatcher.OfDirectMethodHandleDesc) doPrivileged(JavaDispatcher.m14754of(Dispatcher.OfDirectMethodHandleDesc.class));
                DIRECT_METHOD_HANDLE_DESC_KIND = (Dispatcher.OfDirectMethodHandleDesc.ForKind) doPrivileged(JavaDispatcher.m14754of(Dispatcher.OfDirectMethodHandleDesc.ForKind.class));
                DYNAMIC_CONSTANT_DESC = (Dispatcher.OfDynamicConstantDesc) doPrivileged(JavaDispatcher.m14754of(Dispatcher.OfDynamicConstantDesc.class));
            }
            CONSTANT_DESC = (Dispatcher) doPrivileged(JavaDispatcher.m14754of(Dispatcher.class));
            CLASS_DESC = (Dispatcher.OfClassDesc) doPrivileged(JavaDispatcher.m14754of(Dispatcher.OfClassDesc.class));
            METHOD_TYPE_DESC = (Dispatcher.OfMethodTypeDesc) doPrivileged(JavaDispatcher.m14754of(Dispatcher.OfMethodTypeDesc.class));
            METHOD_HANDLE_DESC = (Dispatcher.OfMethodHandleDesc) doPrivileged(JavaDispatcher.m14754of(Dispatcher.OfMethodHandleDesc.class));
            DIRECT_METHOD_HANDLE_DESC = (Dispatcher.OfDirectMethodHandleDesc) doPrivileged(JavaDispatcher.m14754of(Dispatcher.OfDirectMethodHandleDesc.class));
            DIRECT_METHOD_HANDLE_DESC_KIND = (Dispatcher.OfDirectMethodHandleDesc.ForKind) doPrivileged(JavaDispatcher.m14754of(Dispatcher.OfDirectMethodHandleDesc.ForKind.class));
            DYNAMIC_CONSTANT_DESC = (Dispatcher.OfDynamicConstantDesc) doPrivileged(JavaDispatcher.m14754of(Dispatcher.OfDynamicConstantDesc.class));
        }

        @AccessControllerPlugin.Enhance
        private static <T> T doPrivileged(PrivilegedAction<T> privilegedAction) {
            return ACCESS_CONTROLLER ? (T) AccessController.doPrivileged(privilegedAction) : privilegedAction.run();
        }

        public static JavaConstant ofDescription(Object obj, @MaybeNull ClassLoader classLoader) {
            return ofDescription(obj, ClassFileLocator.ForClassLoader.m15176of(classLoader));
        }

        public static JavaConstant wrap(Object obj) {
            if (obj instanceof JavaConstant) {
                return (JavaConstant) obj;
            }
            if (obj instanceof TypeDescription) {
                return m14762of((TypeDescription) obj);
            }
            return ofLoaded(obj);
        }

        @Override // net.bytebuddy.utility.JavaConstant
        public TypeDescription getTypeDescription() {
            return this.typeDescription;
        }

        public T getValue() {
            return this.value;
        }

        public int hashCode() {
            return this.value.hashCode();
        }

        public String toString() {
            return this.value.toString();
        }

        public static JavaConstant ofDescription(Object obj, ClassFileLocator classFileLocator) {
            return ofDescription(obj, TypePool.Default.WithLazyResolution.m14779of(classFileLocator));
        }

        public static JavaConstant ofLoaded(Object obj) {
            if (obj instanceof Integer) {
                return new OfTrivialValue((Integer) obj, TypeDescription.ForLoadedType.m15196of(Integer.TYPE));
            }
            if (obj instanceof Long) {
                return new OfTrivialValue((Long) obj, TypeDescription.ForLoadedType.m15196of(Long.TYPE));
            }
            if (obj instanceof Float) {
                return new OfTrivialValue((Float) obj, TypeDescription.ForLoadedType.m15196of(Float.TYPE));
            }
            if (obj instanceof Double) {
                return new OfTrivialValue((Double) obj, TypeDescription.ForLoadedType.m15196of(Double.TYPE));
            }
            if (obj instanceof String) {
                return new OfTrivialValue((String) obj, TypeDescription.STRING);
            }
            if (obj instanceof Class) {
                return m14762of(TypeDescription.ForLoadedType.m15196of((Class) obj));
            }
            if (JavaType.METHOD_HANDLE.isInstance(obj)) {
                return MethodHandle.ofLoaded(obj);
            }
            if (JavaType.METHOD_TYPE.isInstance(obj)) {
                return MethodType.ofLoaded(obj);
            }
            throw new IllegalArgumentException("Not a loaded Java constant value: " + obj);
        }

        public boolean equals(@MaybeNull Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && getClass() == obj.getClass()) {
                return this.value.equals(((Simple) obj).value);
            }
            return false;
        }

        public Simple(T t, TypeDescription typeDescription) {
            this.value = t;
            this.typeDescription = typeDescription;
        }

        /* renamed from: of */
        public static JavaConstant m14762of(TypeDescription typeDescription) {
            if (!typeDescription.isPrimitive()) {
                return new OfTypeDescription(typeDescription);
            }
            throw new IllegalArgumentException("A primitive type cannot be represented as a type constant: " + typeDescription);
        }

        public static JavaConstant ofDescription(Object obj, TypePool typePool) {
            Type[] argumentTypes;
            String className;
            String className2;
            String className3;
            String className4;
            String className5;
            String className6;
            String className7;
            if (obj instanceof Integer) {
                return new OfTrivialValue((Integer) obj, TypeDescription.ForLoadedType.m15196of(Integer.TYPE));
            }
            if (obj instanceof Long) {
                return new OfTrivialValue((Long) obj, TypeDescription.ForLoadedType.m15196of(Long.TYPE));
            }
            if (obj instanceof Float) {
                return new OfTrivialValue((Float) obj, TypeDescription.ForLoadedType.m15196of(Float.TYPE));
            }
            if (obj instanceof Double) {
                return new OfTrivialValue((Double) obj, TypeDescription.ForLoadedType.m15196of(Double.TYPE));
            }
            if (obj instanceof String) {
                return new OfTrivialValue((String) obj, TypeDescription.STRING);
            }
            Dispatcher.OfClassDesc ofClassDesc = CLASS_DESC;
            if (ofClassDesc.isInstance(obj)) {
                Type type = Type.getType(ofClassDesc.descriptorString(obj));
                if (type.getSort() == 9) {
                    className7 = type.getInternalName().replace('/', TypePool.Default.LazyTypeDescription.GenericTypeToken.INNER_CLASS_PATH);
                } else {
                    className7 = type.getClassName();
                }
                return m14762of(typePool.describe(className7).resolve());
            }
            Dispatcher.OfMethodTypeDesc ofMethodTypeDesc = METHOD_TYPE_DESC;
            int i = 0;
            if (ofMethodTypeDesc.isInstance(obj)) {
                Object[] parameterArray = ofMethodTypeDesc.parameterArray(obj);
                ArrayList arrayList = new ArrayList(parameterArray.length);
                int length = parameterArray.length;
                while (i < length) {
                    Type type2 = Type.getType(CLASS_DESC.descriptorString(parameterArray[i]));
                    if (type2.getSort() == 9) {
                        className6 = type2.getInternalName().replace('/', TypePool.Default.LazyTypeDescription.GenericTypeToken.INNER_CLASS_PATH);
                    } else {
                        className6 = type2.getClassName();
                    }
                    arrayList.add(typePool.describe(className6).resolve());
                    i++;
                }
                Type type3 = Type.getType(CLASS_DESC.descriptorString(METHOD_TYPE_DESC.returnType(obj)));
                if (type3.getSort() == 9) {
                    className5 = type3.getInternalName().replace('/', TypePool.Default.LazyTypeDescription.GenericTypeToken.INNER_CLASS_PATH);
                } else {
                    className5 = type3.getClassName();
                }
                return MethodType.m14764of(typePool.describe(className5).resolve(), arrayList);
            }
            Dispatcher.OfDirectMethodHandleDesc ofDirectMethodHandleDesc = DIRECT_METHOD_HANDLE_DESC;
            if (ofDirectMethodHandleDesc.isInstance(obj)) {
                Object[] parameterArray2 = ofMethodTypeDesc.parameterArray(METHOD_HANDLE_DESC.invocationType(obj));
                ArrayList arrayList2 = new ArrayList(parameterArray2.length);
                int length2 = parameterArray2.length;
                while (i < length2) {
                    Type type4 = Type.getType(CLASS_DESC.descriptorString(parameterArray2[i]));
                    if (type4.getSort() == 9) {
                        className4 = type4.getInternalName().replace('/', TypePool.Default.LazyTypeDescription.GenericTypeToken.INNER_CLASS_PATH);
                    } else {
                        className4 = type4.getClassName();
                    }
                    arrayList2.add(typePool.describe(className4).resolve());
                    i++;
                }
                Dispatcher.OfClassDesc ofClassDesc2 = CLASS_DESC;
                Type type5 = Type.getType(ofClassDesc2.descriptorString(METHOD_TYPE_DESC.returnType(METHOD_HANDLE_DESC.invocationType(obj))));
                Dispatcher.OfDirectMethodHandleDesc ofDirectMethodHandleDesc2 = DIRECT_METHOD_HANDLE_DESC;
                return new MethodHandle(MethodHandle.HandleType.m14770of(ofDirectMethodHandleDesc2.refKind(obj)), typePool.describe(Type.getType(ofClassDesc2.descriptorString(ofDirectMethodHandleDesc2.owner(obj))).getClassName()).resolve(), ofDirectMethodHandleDesc2.methodName(obj), ofDirectMethodHandleDesc2.refKind(obj) == 8 ? TypeDescription.VOID : typePool.describe(type5.getSort() == 9 ? type5.getInternalName().replace('/', TypePool.Default.LazyTypeDescription.GenericTypeToken.INNER_CLASS_PATH) : type5.getClassName()).resolve(), arrayList2);
            }
            Dispatcher.OfDynamicConstantDesc ofDynamicConstantDesc = DYNAMIC_CONSTANT_DESC;
            if (ofDynamicConstantDesc.isInstance(obj)) {
                Type methodType = Type.getMethodType(ofDirectMethodHandleDesc.lookupDescriptor(ofDynamicConstantDesc.bootstrapMethod(obj)));
                ArrayList arrayList3 = new ArrayList(methodType.getArgumentTypes().length);
                for (Type type6 : methodType.getArgumentTypes()) {
                    if (type6.getSort() == 9) {
                        className3 = type6.getInternalName().replace('/', TypePool.Default.LazyTypeDescription.GenericTypeToken.INNER_CLASS_PATH);
                    } else {
                        className3 = type6.getClassName();
                    }
                    arrayList3.add(typePool.describe(className3).resolve());
                }
                Object[] bootstrapArgs = DYNAMIC_CONSTANT_DESC.bootstrapArgs(obj);
                ArrayList arrayList4 = new ArrayList(bootstrapArgs.length);
                int length3 = bootstrapArgs.length;
                while (i < length3) {
                    arrayList4.add(ofDescription(bootstrapArgs[i], typePool));
                    i++;
                }
                Dispatcher.OfClassDesc ofClassDesc3 = CLASS_DESC;
                Dispatcher.OfDynamicConstantDesc ofDynamicConstantDesc2 = DYNAMIC_CONSTANT_DESC;
                Type type7 = Type.getType(ofClassDesc3.descriptorString(ofDynamicConstantDesc2.constantType(obj)));
                String constantName = ofDynamicConstantDesc2.constantName(obj);
                if (type7.getSort() == 9) {
                    className = type7.getInternalName().replace('/', TypePool.Default.LazyTypeDescription.GenericTypeToken.INNER_CLASS_PATH);
                } else {
                    className = type7.getClassName();
                }
                TypeDescription resolve = typePool.describe(className).resolve();
                Dispatcher.OfDirectMethodHandleDesc ofDirectMethodHandleDesc3 = DIRECT_METHOD_HANDLE_DESC;
                MethodHandle.HandleType m14770of = MethodHandle.HandleType.m14770of(ofDirectMethodHandleDesc3.refKind(ofDynamicConstantDesc2.bootstrapMethod(obj)));
                TypeDescription resolve2 = typePool.describe(Type.getType(ofClassDesc3.descriptorString(ofDirectMethodHandleDesc3.owner(ofDynamicConstantDesc2.bootstrapMethod(obj)))).getClassName()).resolve();
                String methodName = ofDirectMethodHandleDesc3.methodName(ofDynamicConstantDesc2.bootstrapMethod(obj));
                if (methodType.getReturnType().getSort() == 9) {
                    className2 = methodType.getReturnType().getInternalName().replace('/', TypePool.Default.LazyTypeDescription.GenericTypeToken.INNER_CLASS_PATH);
                } else {
                    className2 = methodType.getReturnType().getClassName();
                }
                return new Dynamic(constantName, resolve, new MethodHandle(m14770of, resolve2, methodName, typePool.describe(className2).resolve(), arrayList3), arrayList4);
            }
            throw new IllegalArgumentException("Not a resolvable constant description or not expressible as a constant pool value: " + obj);
        }

        public static List<JavaConstant> wrap(List<?> list) {
            ArrayList arrayList = new ArrayList(list.size());
            Iterator<?> it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(wrap(it.next()));
            }
            return arrayList;
        }
    }

    /* loaded from: classes.dex */
    public interface Visitor<T> {

        /* loaded from: classes.dex */
        public enum NoOp implements Visitor<JavaConstant> {
            INSTANCE;

            @Override // net.bytebuddy.utility.JavaConstant.Visitor
            public JavaConstant onDynamic(Dynamic dynamic) {
                return dynamic;
            }

            @Override // net.bytebuddy.utility.JavaConstant.Visitor
            public JavaConstant onMethodHandle(MethodHandle methodHandle) {
                return methodHandle;
            }

            @Override // net.bytebuddy.utility.JavaConstant.Visitor
            public JavaConstant onMethodType(MethodType methodType) {
                return methodType;
            }

            @Override // net.bytebuddy.utility.JavaConstant.Visitor
            public /* bridge */ /* synthetic */ JavaConstant onType(Simple simple) {
                return onType2((Simple<TypeDescription>) simple);
            }

            @Override // net.bytebuddy.utility.JavaConstant.Visitor
            /* renamed from: onType  reason: avoid collision after fix types in other method */
            public JavaConstant onType2(Simple<TypeDescription> simple) {
                return simple;
            }

            @Override // net.bytebuddy.utility.JavaConstant.Visitor
            public /* bridge */ /* synthetic */ JavaConstant onValue(Simple simple) {
                return onValue2((Simple<?>) simple);
            }

            @Override // net.bytebuddy.utility.JavaConstant.Visitor
            /* renamed from: onValue  reason: avoid collision after fix types in other method */
            public JavaConstant onValue2(Simple<?> simple) {
                return simple;
            }
        }

        T onDynamic(Dynamic dynamic);

        T onMethodHandle(MethodHandle methodHandle);

        T onMethodType(MethodType methodType);

        T onType(Simple<TypeDescription> simple);

        T onValue(Simple<?> simple);
    }

    <T> T accept(Visitor<T> visitor);

    TypeDescription getTypeDescription();

    Object toDescription();
}
