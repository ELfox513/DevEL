package net.bytebuddy.build;

import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import net.bytebuddy.build.HashCodeAndEqualsPlugin;
import net.bytebuddy.build.Plugin;
import net.bytebuddy.description.annotation.AnnotationDescription;
import net.bytebuddy.description.method.MethodDescription;
import net.bytebuddy.description.method.MethodList;
import net.bytebuddy.description.type.TypeDescription;
import net.bytebuddy.dynamic.ClassFileLocator;
import net.bytebuddy.dynamic.DynamicType;
import net.bytebuddy.implementation.ToStringMethod;
import net.bytebuddy.matcher.ElementMatcher;
import net.bytebuddy.matcher.ElementMatchers;
import net.bytebuddy.utility.nullability.MaybeNull;
@HashCodeAndEqualsPlugin.Enhance
/* loaded from: classes.dex */
public class ToStringPlugin implements Plugin, Plugin.Factory {
    private static final MethodDescription.InDefinedShape ENHANCE_INCLUDE_SYNTHETIC_FIELDS;
    private static final MethodDescription.InDefinedShape ENHANCE_PREFIX;

    @Target({ElementType.TYPE})
    @Documented
    @Retention(RetentionPolicy.RUNTIME)
    /* loaded from: classes.dex */
    public @interface Enhance {
        boolean includeSyntheticFields() default false;

        Prefix prefix() default Prefix.SIMPLE;

        /* loaded from: classes.dex */
        public enum Prefix {
            FULLY_QUALIFIED(ToStringMethod.PrefixResolver.Default.FULLY_QUALIFIED_CLASS_NAME),
            CANONICAL(ToStringMethod.PrefixResolver.Default.CANONICAL_CLASS_NAME),
            SIMPLE(ToStringMethod.PrefixResolver.Default.SIMPLE_CLASS_NAME);
            
            private final ToStringMethod.PrefixResolver.Default prefixResolver;

            public ToStringMethod.PrefixResolver.Default getPrefixResolver() {
                return this.prefixResolver;
            }

            Prefix(ToStringMethod.PrefixResolver.Default r3) {
                this.prefixResolver = r3;
            }
        }
    }

    @Target({ElementType.FIELD})
    @Documented
    @Retention(RetentionPolicy.RUNTIME)
    /* loaded from: classes.dex */
    public @interface Exclude {
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    public boolean equals(@MaybeNull Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && getClass() == obj.getClass();
    }

    public int hashCode() {
        return getClass().hashCode();
    }

    @Override // net.bytebuddy.build.Plugin.Factory
    public Plugin make() {
        return this;
    }

    static {
        MethodList<MethodDescription.InDefinedShape> declaredMethods = TypeDescription.ForLoadedType.m15196of(Enhance.class).getDeclaredMethods();
        ENHANCE_PREFIX = (MethodDescription.InDefinedShape) declaredMethods.filter(ElementMatchers.named("prefix")).getOnly();
        ENHANCE_INCLUDE_SYNTHETIC_FIELDS = (MethodDescription.InDefinedShape) declaredMethods.filter(ElementMatchers.named("includeSyntheticFields")).getOnly();
    }

    @Override // net.bytebuddy.matcher.ElementMatcher
    public boolean matches(@MaybeNull TypeDescription typeDescription) {
        return typeDescription != null && typeDescription.getDeclaredAnnotations().isAnnotationPresent(Enhance.class);
    }

    @Override // net.bytebuddy.build.Plugin
    public DynamicType.Builder<?> apply(DynamicType.Builder<?> builder, TypeDescription typeDescription, ClassFileLocator classFileLocator) {
        ElementMatcher.Junction isSynthetic;
        AnnotationDescription.Loadable ofType = typeDescription.getDeclaredAnnotations().ofType(Enhance.class);
        if (typeDescription.getDeclaredMethods().filter(ElementMatchers.isToString()).isEmpty()) {
            DynamicType.Builder.MethodDefinition.ImplementationDefinition<?> method = builder.method(ElementMatchers.isToString());
            ToStringMethod prefixedBy = ToStringMethod.prefixedBy(((Enhance.Prefix) ofType.getValue(ENHANCE_PREFIX).load(Enhance.class.getClassLoader()).resolve(Enhance.Prefix.class)).getPrefixResolver());
            if (((Boolean) ofType.getValue(ENHANCE_INCLUDE_SYNTHETIC_FIELDS).resolve(Boolean.class)).booleanValue()) {
                isSynthetic = ElementMatchers.none();
            } else {
                isSynthetic = ElementMatchers.isSynthetic();
            }
            return method.intercept(prefixedBy.withIgnoredFields(isSynthetic).withIgnoredFields(ElementMatchers.isAnnotatedWith(Exclude.class)));
        }
        return builder;
    }
}
