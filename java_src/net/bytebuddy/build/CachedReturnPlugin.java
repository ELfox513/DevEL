package net.bytebuddy.build;

import edu.umd.cs.findbugs.annotations.SuppressFBWarnings;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.HashMap;
import java.util.Map;
import net.bytebuddy.asm.Advice;
import net.bytebuddy.build.HashCodeAndEqualsPlugin;
import net.bytebuddy.build.Plugin;
import net.bytebuddy.description.field.FieldDescription;
import net.bytebuddy.description.method.MethodDescription;
import net.bytebuddy.description.modifier.FieldPersistence;
import net.bytebuddy.description.modifier.ModifierContributor;
import net.bytebuddy.description.modifier.Ownership;
import net.bytebuddy.description.modifier.SyntheticState;
import net.bytebuddy.description.modifier.Visibility;
import net.bytebuddy.description.type.TypeDescription;
import net.bytebuddy.dynamic.ClassFileLocator;
import net.bytebuddy.dynamic.DynamicType;
import net.bytebuddy.implementation.bytecode.assign.Assigner;
import net.bytebuddy.matcher.ElementMatchers;
import net.bytebuddy.pool.TypePool;
import net.bytebuddy.utility.RandomString;
import net.bytebuddy.utility.nullability.MaybeNull;
@HashCodeAndEqualsPlugin.Enhance
/* loaded from: classes.dex */
public class CachedReturnPlugin extends Plugin.ForElementMatcher implements Plugin.Factory {
    private static final String ADVICE_INFIX = "$Advice$";
    private static final MethodDescription.InDefinedShape ENHANCE_VALUE = (MethodDescription.InDefinedShape) TypeDescription.ForLoadedType.m15196of(Enhance.class).getDeclaredMethods().filter(ElementMatchers.named("value")).getOnly();
    private static final String NAME_INFIX = "_";
    @HashCodeAndEqualsPlugin.ValueHandling(HashCodeAndEqualsPlugin.ValueHandling.Sort.IGNORE)
    private final Map<TypeDescription, TypeDescription> adviceByType;
    private final ClassFileLocator classFileLocator;
    private final boolean ignoreExistingFields;
    @HashCodeAndEqualsPlugin.ValueHandling(HashCodeAndEqualsPlugin.ValueHandling.Sort.IGNORE)
    private final RandomString randomString;

    @Target({ElementType.PARAMETER})
    @Retention(RetentionPolicy.RUNTIME)
    /* loaded from: classes.dex */
    public @interface CacheField {
    }

    @Target({ElementType.METHOD})
    @Documented
    @Retention(RetentionPolicy.RUNTIME)
    /* loaded from: classes.dex */
    public @interface Enhance {
        String value() default "";
    }

    public CachedReturnPlugin() {
        this(false);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    @Override // net.bytebuddy.build.Plugin.ForElementMatcher
    public boolean equals(@MaybeNull Object obj) {
        if (super.equals(obj)) {
            if (this == obj) {
                return true;
            }
            if (obj != null && getClass() == obj.getClass()) {
                CachedReturnPlugin cachedReturnPlugin = (CachedReturnPlugin) obj;
                return this.ignoreExistingFields == cachedReturnPlugin.ignoreExistingFields && this.classFileLocator.equals(cachedReturnPlugin.classFileLocator);
            }
            return false;
        }
        return false;
    }

    @Override // net.bytebuddy.build.Plugin.ForElementMatcher
    public int hashCode() {
        return (((super.hashCode() * 31) + (this.ignoreExistingFields ? 1 : 0)) * 31) + this.classFileLocator.hashCode();
    }

    @Override // net.bytebuddy.build.Plugin.Factory
    public Plugin make() {
        return this;
    }

    @HashCodeAndEqualsPlugin.Enhance
    /* loaded from: classes.dex */
    public static class CacheFieldOffsetMapping implements Advice.OffsetMapping {
        private final String name;

        public boolean equals(@MaybeNull Object obj) {
            if (this == obj) {
                return true;
            }
            return obj != null && getClass() == obj.getClass() && this.name.equals(((CacheFieldOffsetMapping) obj).name);
        }

        public int hashCode() {
            return (getClass().hashCode() * 31) + this.name.hashCode();
        }

        @Override // net.bytebuddy.asm.Advice.OffsetMapping
        public Advice.OffsetMapping.Target resolve(TypeDescription typeDescription, MethodDescription methodDescription, Assigner assigner, Advice.ArgumentHandler argumentHandler, Advice.OffsetMapping.Sort sort) {
            return new Advice.OffsetMapping.Target.ForField.ReadWrite((FieldDescription) typeDescription.getDeclaredFields().filter(ElementMatchers.named(this.name)).getOnly());
        }

        public CacheFieldOffsetMapping(String str) {
            this.name = str;
        }
    }

    public CachedReturnPlugin(boolean z) {
        super(ElementMatchers.declaresMethod(ElementMatchers.isAnnotatedWith(Enhance.class)));
        this.ignoreExistingFields = z;
        this.randomString = new RandomString();
        ClassFileLocator m15176of = ClassFileLocator.ForClassLoader.m15176of(CachedReturnPlugin.class.getClassLoader());
        this.classFileLocator = m15176of;
        TypePool m14813of = TypePool.Default.m14813of(m15176of);
        this.adviceByType = new HashMap();
        Class[] clsArr = {Boolean.TYPE, Byte.TYPE, Short.TYPE, Character.TYPE, Integer.TYPE, Long.TYPE, Float.TYPE, Double.TYPE, Object.class};
        for (int i = 0; i < 9; i++) {
            Class cls = clsArr[i];
            Map<TypeDescription, TypeDescription> map = this.adviceByType;
            TypeDescription m15196of = TypeDescription.ForLoadedType.m15196of(cls);
            map.put(m15196of, m14813of.describe(CachedReturnPlugin.class.getName() + ADVICE_INFIX + cls.getSimpleName()).resolve());
        }
    }

    @Override // net.bytebuddy.build.Plugin
    @SuppressFBWarnings(justification = "Annotation presence is required by matcher.", value = {"NP_NULL_ON_SOME_PATH_FROM_RETURN_VALUE"})
    public DynamicType.Builder<?> apply(DynamicType.Builder<?> builder, TypeDescription typeDescription, ClassFileLocator classFileLocator) {
        Ownership ownership;
        FieldPersistence fieldPersistence;
        TypeDescription typeDescription2;
        for (MethodDescription.InDefinedShape inDefinedShape : typeDescription.getDeclaredMethods().filter(ElementMatchers.not(ElementMatchers.isBridge()).and(ElementMatchers.isAnnotatedWith(Enhance.class)))) {
            if (!inDefinedShape.isAbstract()) {
                if (inDefinedShape.getParameters().isEmpty()) {
                    if (!inDefinedShape.getReturnType().represents(Void.TYPE)) {
                        String str = (String) inDefinedShape.getDeclaredAnnotations().ofType(Enhance.class).getValue(ENHANCE_VALUE).resolve(String.class);
                        if (str.length() == 0) {
                            str = inDefinedShape.getName() + "_" + this.randomString.nextString();
                        } else if (this.ignoreExistingFields && !typeDescription.getDeclaredFields().filter(ElementMatchers.named(str)).isEmpty()) {
                            return builder;
                        }
                        TypeDescription asErasure = inDefinedShape.getReturnType().asErasure();
                        ModifierContributor.ForField[] forFieldArr = new ModifierContributor.ForField[4];
                        if (inDefinedShape.isStatic()) {
                            ownership = Ownership.STATIC;
                        } else {
                            ownership = Ownership.MEMBER;
                        }
                        forFieldArr[0] = ownership;
                        if (inDefinedShape.isStatic()) {
                            fieldPersistence = FieldPersistence.PLAIN;
                        } else {
                            fieldPersistence = FieldPersistence.TRANSIENT;
                        }
                        forFieldArr[1] = fieldPersistence;
                        forFieldArr[2] = Visibility.PRIVATE;
                        forFieldArr[3] = SyntheticState.SYNTHETIC;
                        DynamicType.Builder.FieldDefinition.Optional.Valuable<?> defineField = builder.defineField(str, asErasure, forFieldArr);
                        Advice.WithCustomMapping bind = Advice.withCustomMapping().bind(CacheField.class, (Advice.OffsetMapping) new CacheFieldOffsetMapping(str));
                        Map<TypeDescription, TypeDescription> map = this.adviceByType;
                        if (inDefinedShape.getReturnType().isPrimitive()) {
                            typeDescription2 = inDefinedShape.getReturnType().asErasure();
                        } else {
                            typeDescription2 = TypeDescription.OBJECT;
                        }
                        builder = defineField.visit(bind.m15270to(map.get(typeDescription2), this.classFileLocator).m15336on(ElementMatchers.m14822is(inDefinedShape)));
                    } else {
                        throw new IllegalStateException("Cannot cache void result for " + inDefinedShape);
                    }
                } else {
                    throw new IllegalStateException("Cannot cache the value of a method with parameters: " + inDefinedShape);
                }
            } else {
                throw new IllegalStateException("Cannot cache the value of an abstract method: " + inDefinedShape);
            }
        }
        return builder;
    }
}
