package net.bytebuddy.dynamic.scaffold;

import net.bytebuddy.description.type.TypeDescription;
import net.bytebuddy.jar.asm.ClassReader;
import net.bytebuddy.jar.asm.ClassWriter;
import net.bytebuddy.pool.TypePool;
/* loaded from: classes2.dex */
public interface ClassWriterStrategy {

    /* loaded from: classes2.dex */
    public enum Default implements ClassWriterStrategy {
        CONSTANT_POOL_RETAINING { // from class: net.bytebuddy.dynamic.scaffold.ClassWriterStrategy.Default.1
            @Override // net.bytebuddy.dynamic.scaffold.ClassWriterStrategy
            public ClassWriter resolve(int i, TypePool typePool, ClassReader classReader) {
                return new FrameComputingClassWriter(classReader, i, typePool);
            }
        },
        CONSTANT_POOL_DISCARDING { // from class: net.bytebuddy.dynamic.scaffold.ClassWriterStrategy.Default.2
            @Override // net.bytebuddy.dynamic.scaffold.ClassWriterStrategy
            public ClassWriter resolve(int i, TypePool typePool, ClassReader classReader) {
                return resolve(i, typePool);
            }
        };

        @Override // net.bytebuddy.dynamic.scaffold.ClassWriterStrategy
        public ClassWriter resolve(int i, TypePool typePool) {
            return new FrameComputingClassWriter(i, typePool);
        }
    }

    /* loaded from: classes2.dex */
    public static class FrameComputingClassWriter extends ClassWriter {
        private final TypePool typePool;

        public FrameComputingClassWriter(int i, TypePool typePool) {
            super(i);
            this.typePool = typePool;
        }

        @Override // net.bytebuddy.jar.asm.ClassWriter
        public String getCommonSuperClass(String str, String str2) {
            TypeDescription resolve = this.typePool.describe(str.replace('/', TypePool.Default.LazyTypeDescription.GenericTypeToken.INNER_CLASS_PATH)).resolve();
            TypeDescription resolve2 = this.typePool.describe(str2.replace('/', TypePool.Default.LazyTypeDescription.GenericTypeToken.INNER_CLASS_PATH)).resolve();
            if (resolve.isAssignableFrom(resolve2)) {
                return resolve.getInternalName();
            }
            if (resolve.isAssignableTo(resolve2)) {
                return resolve2.getInternalName();
            }
            if (!resolve.isInterface() && !resolve2.isInterface()) {
                do {
                    TypeDescription.Generic superClass = resolve.getSuperClass();
                    if (superClass == null) {
                        return TypeDescription.OBJECT.getInternalName();
                    }
                    resolve = superClass.asErasure();
                } while (!resolve.isAssignableFrom(resolve2));
                return resolve.getInternalName();
            }
            return TypeDescription.OBJECT.getInternalName();
        }

        public FrameComputingClassWriter(ClassReader classReader, int i, TypePool typePool) {
            super(classReader, i);
            this.typePool = typePool;
        }
    }

    ClassWriter resolve(int i, TypePool typePool);

    ClassWriter resolve(int i, TypePool typePool, ClassReader classReader);
}
