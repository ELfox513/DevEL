package net.bytebuddy.dynamic.scaffold;

import net.bytebuddy.build.HashCodeAndEqualsPlugin;
import net.bytebuddy.description.method.MethodDescription;
import net.bytebuddy.description.type.TypeDescription;
import net.bytebuddy.dynamic.scaffold.TypeWriter;
import net.bytebuddy.implementation.Implementation;
import net.bytebuddy.implementation.attribute.AnnotationValueFilter;
import net.bytebuddy.implementation.bytecode.ByteCodeAppender;
import net.bytebuddy.jar.asm.ClassVisitor;
import net.bytebuddy.jar.asm.MethodVisitor;
import net.bytebuddy.utility.nullability.MaybeNull;
/* loaded from: classes2.dex */
public interface TypeInitializer extends ByteCodeAppender {

    /* loaded from: classes2.dex */
    public interface Drain {
        void apply(ClassVisitor classVisitor, TypeInitializer typeInitializer, Implementation.Context context);

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static class Default implements Drain {
            public final AnnotationValueFilter.Factory annotationValueFilterFactory;
            public final TypeDescription instrumentedType;
            public final TypeWriter.MethodPool methodPool;

            @Override // net.bytebuddy.dynamic.scaffold.TypeInitializer.Drain
            public void apply(ClassVisitor classVisitor, TypeInitializer typeInitializer, Implementation.Context context) {
                typeInitializer.wrap(this.methodPool.target(new MethodDescription.Latent.TypeInitializer(this.instrumentedType))).apply(classVisitor, context, this.annotationValueFilterFactory);
            }

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj != null && getClass() == obj.getClass()) {
                    Default r5 = (Default) obj;
                    return this.instrumentedType.equals(r5.instrumentedType) && this.methodPool.equals(r5.methodPool) && this.annotationValueFilterFactory.equals(r5.annotationValueFilterFactory);
                }
                return false;
            }

            public int hashCode() {
                return (((((getClass().hashCode() * 31) + this.instrumentedType.hashCode()) * 31) + this.methodPool.hashCode()) * 31) + this.annotationValueFilterFactory.hashCode();
            }

            public Default(TypeDescription typeDescription, TypeWriter.MethodPool methodPool, AnnotationValueFilter.Factory factory) {
                this.instrumentedType = typeDescription;
                this.methodPool = methodPool;
                this.annotationValueFilterFactory = factory;
            }
        }
    }

    /* loaded from: classes2.dex */
    public enum None implements TypeInitializer {
        INSTANCE;

        @Override // net.bytebuddy.implementation.bytecode.ByteCodeAppender
        public ByteCodeAppender.Size apply(MethodVisitor methodVisitor, Implementation.Context context, MethodDescription methodDescription) {
            return ByteCodeAppender.Size.ZERO;
        }

        @Override // net.bytebuddy.dynamic.scaffold.TypeInitializer
        public TypeInitializer expandWith(ByteCodeAppender byteCodeAppender) {
            return new Simple(byteCodeAppender);
        }

        @Override // net.bytebuddy.dynamic.scaffold.TypeInitializer
        public boolean isDefined() {
            return false;
        }

        @Override // net.bytebuddy.dynamic.scaffold.TypeInitializer
        public TypeWriter.MethodPool.Record wrap(TypeWriter.MethodPool.Record record) {
            return record;
        }
    }

    TypeInitializer expandWith(ByteCodeAppender byteCodeAppender);

    boolean isDefined();

    TypeWriter.MethodPool.Record wrap(TypeWriter.MethodPool.Record record);

    @HashCodeAndEqualsPlugin.Enhance
    /* loaded from: classes.dex */
    public static class Simple implements TypeInitializer {
        private final ByteCodeAppender byteCodeAppender;

        @Override // net.bytebuddy.implementation.bytecode.ByteCodeAppender
        public ByteCodeAppender.Size apply(MethodVisitor methodVisitor, Implementation.Context context, MethodDescription methodDescription) {
            return this.byteCodeAppender.apply(methodVisitor, context, methodDescription);
        }

        public boolean equals(@MaybeNull Object obj) {
            if (this == obj) {
                return true;
            }
            return obj != null && getClass() == obj.getClass() && this.byteCodeAppender.equals(((Simple) obj).byteCodeAppender);
        }

        @Override // net.bytebuddy.dynamic.scaffold.TypeInitializer
        public TypeInitializer expandWith(ByteCodeAppender byteCodeAppender) {
            return new Simple(new ByteCodeAppender.Compound(this.byteCodeAppender, byteCodeAppender));
        }

        public int hashCode() {
            return (getClass().hashCode() * 31) + this.byteCodeAppender.hashCode();
        }

        @Override // net.bytebuddy.dynamic.scaffold.TypeInitializer
        public boolean isDefined() {
            return true;
        }

        @Override // net.bytebuddy.dynamic.scaffold.TypeInitializer
        public TypeWriter.MethodPool.Record wrap(TypeWriter.MethodPool.Record record) {
            return record.prepend(this.byteCodeAppender);
        }

        public Simple(ByteCodeAppender byteCodeAppender) {
            this.byteCodeAppender = byteCodeAppender;
        }
    }
}
