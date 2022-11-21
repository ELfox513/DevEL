package net.bytebuddy.dynamic.loading;

import java.lang.instrument.ClassFileTransformer;
import java.lang.instrument.IllegalClassFormatException;
import java.security.AllPermission;
import java.security.Permission;
import java.security.PermissionCollection;
import java.security.ProtectionDomain;
import java.util.Collections;
import java.util.Enumeration;
import net.bytebuddy.build.HashCodeAndEqualsPlugin;
import net.bytebuddy.pool.TypePool;
import net.bytebuddy.utility.nullability.AlwaysNull;
import net.bytebuddy.utility.nullability.MaybeNull;
/* loaded from: classes2.dex */
public interface ClassFilePostProcessor {

    @HashCodeAndEqualsPlugin.Enhance
    /* loaded from: classes.dex */
    public static class ForClassFileTransformer implements ClassFilePostProcessor {
        public static final ProtectionDomain ALL_PRIVILEGES = new ProtectionDomain(null, new AllPermissionsCollection());
        @AlwaysNull
        private static final Class<?> UNLOADED_TYPE = null;
        private final ClassFileTransformer classFileTransformer;

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static class AllPermissionsCollection extends PermissionCollection {
            private static final long serialVersionUID = 1;

            @Override // java.security.PermissionCollection
            public void add(Permission permission) {
                throw new UnsupportedOperationException("add");
            }

            @Override // java.security.PermissionCollection
            public Enumeration<Permission> elements() {
                return Collections.enumeration(Collections.singleton(new AllPermission()));
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

            @Override // java.security.PermissionCollection
            public boolean implies(Permission permission) {
                return true;
            }
        }

        public boolean equals(@MaybeNull Object obj) {
            if (this == obj) {
                return true;
            }
            return obj != null && getClass() == obj.getClass() && this.classFileTransformer.equals(((ForClassFileTransformer) obj).classFileTransformer);
        }

        public int hashCode() {
            return (getClass().hashCode() * 31) + this.classFileTransformer.hashCode();
        }

        @Override // net.bytebuddy.dynamic.loading.ClassFilePostProcessor
        public byte[] transform(@MaybeNull ClassLoader classLoader, String str, @MaybeNull ProtectionDomain protectionDomain, byte[] bArr) {
            try {
                ClassFileTransformer classFileTransformer = this.classFileTransformer;
                String replace = str.replace(TypePool.Default.LazyTypeDescription.GenericTypeToken.INNER_CLASS_PATH, '/');
                Class<?> cls = UNLOADED_TYPE;
                if (protectionDomain == null) {
                    protectionDomain = ALL_PRIVILEGES;
                }
                byte[] transform = classFileTransformer.transform(classLoader, replace, cls, protectionDomain, bArr);
                if (transform != null) {
                    return transform;
                }
                return bArr;
            } catch (IllegalClassFormatException e) {
                throw new IllegalStateException("Failed to transform " + str, e);
            }
        }

        public ForClassFileTransformer(ClassFileTransformer classFileTransformer) {
            this.classFileTransformer = classFileTransformer;
        }
    }

    /* loaded from: classes2.dex */
    public enum NoOp implements ClassFilePostProcessor {
        INSTANCE;

        @Override // net.bytebuddy.dynamic.loading.ClassFilePostProcessor
        public byte[] transform(@MaybeNull ClassLoader classLoader, String str, @MaybeNull ProtectionDomain protectionDomain, byte[] bArr) {
            return bArr;
        }
    }

    byte[] transform(@MaybeNull ClassLoader classLoader, String str, @MaybeNull ProtectionDomain protectionDomain, byte[] bArr);
}
