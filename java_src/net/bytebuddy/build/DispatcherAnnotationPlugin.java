package net.bytebuddy.build;

import net.bytebuddy.asm.MemberAttributeExtension;
import net.bytebuddy.build.HashCodeAndEqualsPlugin;
import net.bytebuddy.build.Plugin;
import net.bytebuddy.description.method.MethodDescription;
import net.bytebuddy.description.type.TypeDescription;
import net.bytebuddy.dynamic.ClassFileLocator;
import net.bytebuddy.dynamic.DynamicType;
import net.bytebuddy.implementation.attribute.AnnotationValueFilter;
import net.bytebuddy.implementation.attribute.MethodAttributeAppender;
import net.bytebuddy.jar.asm.AnnotationVisitor;
import net.bytebuddy.jar.asm.MethodVisitor;
import net.bytebuddy.jar.asm.Type;
import net.bytebuddy.matcher.ElementMatchers;
import net.bytebuddy.utility.dispatcher.JavaDispatcher;
import net.bytebuddy.utility.nullability.MaybeNull;
@HashCodeAndEqualsPlugin.Enhance
/* loaded from: classes.dex */
public class DispatcherAnnotationPlugin extends Plugin.ForElementMatcher implements MethodAttributeAppender.Factory, MethodAttributeAppender {
    public DispatcherAnnotationPlugin() {
        super(ElementMatchers.isAnnotatedWith(JavaDispatcher.Proxied.class));
    }

    @Override // net.bytebuddy.build.Plugin
    public DynamicType.Builder<?> apply(DynamicType.Builder<?> builder, TypeDescription typeDescription, ClassFileLocator classFileLocator) {
        return builder.visit(new MemberAttributeExtension.ForMethod().attribute(this).m15266on(ElementMatchers.not(ElementMatchers.isAnnotatedWith(JavaDispatcher.Proxied.class)).and(ElementMatchers.isAbstract())));
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
            return obj != null && getClass() == obj.getClass();
        }
        return false;
    }

    @Override // net.bytebuddy.build.Plugin.ForElementMatcher
    public int hashCode() {
        return super.hashCode();
    }

    @Override // net.bytebuddy.implementation.attribute.MethodAttributeAppender.Factory
    public MethodAttributeAppender make(TypeDescription typeDescription) {
        return this;
    }

    @Override // net.bytebuddy.implementation.attribute.MethodAttributeAppender
    public void apply(MethodVisitor methodVisitor, MethodDescription methodDescription, AnnotationValueFilter annotationValueFilter) {
        AnnotationVisitor visitAnnotation = methodVisitor.visitAnnotation(Type.getDescriptor(JavaDispatcher.Proxied.class), true);
        if (visitAnnotation != null) {
            visitAnnotation.visit("value", methodDescription.getName());
            visitAnnotation.visitEnd();
        }
    }
}
