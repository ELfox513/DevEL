package net.bytebuddy.build;

import net.bytebuddy.ByteBuddy;
import net.bytebuddy.ClassFileVersion;
import net.bytebuddy.build.HashCodeAndEqualsPlugin;
import net.bytebuddy.description.type.TypeDescription;
import net.bytebuddy.dynamic.ClassFileLocator;
import net.bytebuddy.dynamic.DynamicType;
import net.bytebuddy.dynamic.scaffold.MethodGraph;
import net.bytebuddy.dynamic.scaffold.TypeValidation;
import net.bytebuddy.dynamic.scaffold.inline.MethodNameTransformer;
import net.bytebuddy.implementation.Implementation;
import net.bytebuddy.matcher.ElementMatchers;
import net.bytebuddy.utility.nullability.MaybeNull;
/* loaded from: classes2.dex */
public interface EntryPoint {

    /* loaded from: classes2.dex */
    public enum Default implements EntryPoint {
        REBASE { // from class: net.bytebuddy.build.EntryPoint.Default.1
            @Override // net.bytebuddy.build.EntryPoint
            public ByteBuddy byteBuddy(ClassFileVersion classFileVersion) {
                return new ByteBuddy(classFileVersion);
            }

            @Override // net.bytebuddy.build.EntryPoint
            public DynamicType.Builder<?> transform(TypeDescription typeDescription, ByteBuddy byteBuddy, ClassFileLocator classFileLocator, MethodNameTransformer methodNameTransformer) {
                return byteBuddy.rebase(typeDescription, classFileLocator, methodNameTransformer);
            }
        },
        REDEFINE { // from class: net.bytebuddy.build.EntryPoint.Default.2
            @Override // net.bytebuddy.build.EntryPoint
            public ByteBuddy byteBuddy(ClassFileVersion classFileVersion) {
                return new ByteBuddy(classFileVersion);
            }

            @Override // net.bytebuddy.build.EntryPoint
            public DynamicType.Builder<?> transform(TypeDescription typeDescription, ByteBuddy byteBuddy, ClassFileLocator classFileLocator, MethodNameTransformer methodNameTransformer) {
                return byteBuddy.redefine(typeDescription, classFileLocator);
            }
        },
        REDEFINE_LOCAL { // from class: net.bytebuddy.build.EntryPoint.Default.3
            @Override // net.bytebuddy.build.EntryPoint
            public ByteBuddy byteBuddy(ClassFileVersion classFileVersion) {
                return new ByteBuddy(classFileVersion).with(Implementation.Context.Disabled.Factory.INSTANCE);
            }

            @Override // net.bytebuddy.build.EntryPoint
            public DynamicType.Builder<?> transform(TypeDescription typeDescription, ByteBuddy byteBuddy, ClassFileLocator classFileLocator, MethodNameTransformer methodNameTransformer) {
                return byteBuddy.redefine(typeDescription, classFileLocator).ignoreAlso(ElementMatchers.not(ElementMatchers.isDeclaredBy(typeDescription)));
            }
        },
        DECORATE { // from class: net.bytebuddy.build.EntryPoint.Default.4
            @Override // net.bytebuddy.build.EntryPoint
            public DynamicType.Builder<?> transform(TypeDescription typeDescription, ByteBuddy byteBuddy, ClassFileLocator classFileLocator, MethodNameTransformer methodNameTransformer) {
                return byteBuddy.decorate(typeDescription, classFileLocator);
            }

            @Override // net.bytebuddy.build.EntryPoint
            public ByteBuddy byteBuddy(ClassFileVersion classFileVersion) {
                return new ByteBuddy(classFileVersion).with(MethodGraph.Compiler.ForDeclaredMethods.INSTANCE).with(Implementation.Context.Disabled.Factory.INSTANCE);
            }
        }
    }

    ByteBuddy byteBuddy(ClassFileVersion classFileVersion);

    DynamicType.Builder<?> transform(TypeDescription typeDescription, ByteBuddy byteBuddy, ClassFileLocator classFileLocator, MethodNameTransformer methodNameTransformer);

    @HashCodeAndEqualsPlugin.Enhance
    /* loaded from: classes.dex */
    public static class Unvalidated implements EntryPoint {
        private final EntryPoint delegate;

        @Override // net.bytebuddy.build.EntryPoint
        public ByteBuddy byteBuddy(ClassFileVersion classFileVersion) {
            return this.delegate.byteBuddy(classFileVersion).with(TypeValidation.DISABLED);
        }

        public boolean equals(@MaybeNull Object obj) {
            if (this == obj) {
                return true;
            }
            return obj != null && getClass() == obj.getClass() && this.delegate.equals(((Unvalidated) obj).delegate);
        }

        public int hashCode() {
            return (getClass().hashCode() * 31) + this.delegate.hashCode();
        }

        @Override // net.bytebuddy.build.EntryPoint
        public DynamicType.Builder<?> transform(TypeDescription typeDescription, ByteBuddy byteBuddy, ClassFileLocator classFileLocator, MethodNameTransformer methodNameTransformer) {
            return this.delegate.transform(typeDescription, byteBuddy, classFileLocator, methodNameTransformer);
        }

        public Unvalidated(EntryPoint entryPoint) {
            this.delegate = entryPoint;
        }
    }
}
