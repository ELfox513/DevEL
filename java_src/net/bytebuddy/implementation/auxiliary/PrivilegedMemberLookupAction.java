package net.bytebuddy.implementation.auxiliary;

import java.security.PrivilegedExceptionAction;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;
import net.bytebuddy.ByteBuddy;
import net.bytebuddy.ClassFileVersion;
import net.bytebuddy.description.method.MethodDescription;
import net.bytebuddy.description.modifier.Visibility;
import net.bytebuddy.description.type.TypeDescription;
import net.bytebuddy.dynamic.DynamicType;
import net.bytebuddy.dynamic.scaffold.TypeValidation;
import net.bytebuddy.dynamic.scaffold.subclass.ConstructorStrategy;
import net.bytebuddy.implementation.FieldAccessor;
import net.bytebuddy.implementation.Implementation;
import net.bytebuddy.implementation.MethodAccessorFactory;
import net.bytebuddy.implementation.MethodCall;
import net.bytebuddy.implementation.auxiliary.TypeProxy;
import net.bytebuddy.matcher.ElementMatchers;
import net.bytebuddy.utility.CompoundList;
import net.bytebuddy.utility.RandomString;
/* loaded from: classes.dex */
public enum PrivilegedMemberLookupAction implements AuxiliaryType {
    FOR_PUBLIC_METHOD("getMethod", "name", String.class, "parameters", Class[].class),
    FOR_DECLARED_METHOD("getDeclaredMethod", "name", String.class, "parameters", Class[].class),
    FOR_PUBLIC_CONSTRUCTOR("getConstructor", "parameters", Class[].class),
    FOR_DECLARED_CONSTRUCTOR(TypeProxy.SilentConstruction.Appender.GET_DECLARED_CONSTRUCTOR_METHOD_NAME, "parameters", Class[].class);
    
    private static final MethodDescription.InDefinedShape DEFAULT_CONSTRUCTOR = (MethodDescription.InDefinedShape) TypeDescription.OBJECT.getDeclaredMethods().filter(ElementMatchers.isConstructor()).getOnly();
    private static final String TYPE_FIELD = "type";
    private final Map<String, Class<?>> fields;
    private final MethodDescription.InDefinedShape methodDescription;

    PrivilegedMemberLookupAction(String str, String str2, Class cls) {
        try {
            this.methodDescription = new MethodDescription.ForLoadedMethod(Class.class.getMethod(str, cls));
            this.fields = Collections.singletonMap(str2, cls);
        } catch (NoSuchMethodException e) {
            throw new IllegalStateException("Could not locate method: " + str, e);
        }
    }

    @Override // net.bytebuddy.implementation.auxiliary.AuxiliaryType
    public String getSuffix() {
        return RandomString.hashOf(name().hashCode());
    }

    @Override // net.bytebuddy.implementation.auxiliary.AuxiliaryType
    public DynamicType make(String str, ClassFileVersion classFileVersion, MethodAccessorFactory methodAccessorFactory) {
        Implementation.Composable andThen = MethodCall.invoke(DEFAULT_CONSTRUCTOR).andThen(FieldAccessor.ofField(TYPE_FIELD).setsArgumentAt(0));
        int i = 1;
        for (String str2 : this.fields.keySet()) {
            andThen = andThen.andThen(FieldAccessor.ofField(str2).setsArgumentAt(i));
            i++;
        }
        DynamicType.Builder defineField = new ByteBuddy(classFileVersion).with(TypeValidation.DISABLED).subclass(PrivilegedExceptionAction.class, (ConstructorStrategy) ConstructorStrategy.Default.NO_CONSTRUCTORS).name(str).modifiers(AuxiliaryType.DEFAULT_TYPE_MODIFIER).defineConstructor(Visibility.PUBLIC).withParameters(CompoundList.m14778of(Class.class, new ArrayList(this.fields.values()))).intercept(andThen).method(ElementMatchers.named("run")).intercept(MethodCall.invoke(this.methodDescription).onField(TYPE_FIELD).withField((String[]) this.fields.keySet().toArray(new String[0]))).defineField(TYPE_FIELD, Class.class, Visibility.PRIVATE);
        for (Map.Entry<String, Class<?>> entry : this.fields.entrySet()) {
            defineField = defineField.defineField(entry.getKey(), entry.getValue(), Visibility.PRIVATE);
        }
        return defineField.make();
    }

    /* renamed from: of */
    public static AuxiliaryType m15011of(MethodDescription methodDescription) {
        if (methodDescription.isConstructor()) {
            if (methodDescription.isPublic()) {
                return FOR_PUBLIC_CONSTRUCTOR;
            }
            return FOR_DECLARED_CONSTRUCTOR;
        } else if (methodDescription.isMethod()) {
            if (methodDescription.isPublic()) {
                return FOR_PUBLIC_METHOD;
            }
            return FOR_DECLARED_METHOD;
        } else {
            throw new IllegalStateException("Cannot load constant for type initializer: " + methodDescription);
        }
    }

    PrivilegedMemberLookupAction(String str, String str2, Class cls, String str3, Class cls2) {
        try {
            this.methodDescription = new MethodDescription.ForLoadedMethod(Class.class.getMethod(str, cls, cls2));
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            this.fields = linkedHashMap;
            linkedHashMap.put(str2, cls);
            linkedHashMap.put(str3, cls2);
        } catch (NoSuchMethodException e) {
            throw new IllegalStateException("Could not locate method: " + str, e);
        }
    }
}
