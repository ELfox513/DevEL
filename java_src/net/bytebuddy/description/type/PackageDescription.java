package net.bytebuddy.description.type;

import net.bytebuddy.description.NamedElement;
import net.bytebuddy.description.annotation.AnnotationList;
import net.bytebuddy.description.annotation.AnnotationSource;
import net.bytebuddy.pool.TypePool;
import net.bytebuddy.utility.nullability.AlwaysNull;
import net.bytebuddy.utility.nullability.MaybeNull;
/* loaded from: classes2.dex */
public interface PackageDescription extends NamedElement.WithRuntimeName, AnnotationSource {
    public static final String PACKAGE_CLASS_NAME = "package-info";
    public static final int PACKAGE_MODIFIERS = 5632;
    @AlwaysNull
    public static final PackageDescription UNDEFINED = null;

    /* loaded from: classes2.dex */
    public static abstract class AbstractBase implements PackageDescription {
        @Override // net.bytebuddy.description.type.PackageDescription
        public boolean contains(TypeDescription typeDescription) {
            return equals(typeDescription.getPackage());
        }

        public boolean equals(@MaybeNull Object obj) {
            return this == obj || ((obj instanceof PackageDescription) && getName().equals(((PackageDescription) obj).getName()));
        }

        @Override // net.bytebuddy.description.NamedElement
        public String getActualName() {
            return getName();
        }

        @Override // net.bytebuddy.description.NamedElement.WithRuntimeName
        public String getInternalName() {
            return getName().replace(TypePool.Default.LazyTypeDescription.GenericTypeToken.INNER_CLASS_PATH, '/');
        }

        public int hashCode() {
            return getName().hashCode();
        }

        public String toString() {
            return "package " + getName();
        }
    }

    boolean contains(TypeDescription typeDescription);

    /* loaded from: classes2.dex */
    public static class ForLoadedPackage extends AbstractBase {
        private final Package aPackage;

        @Override // net.bytebuddy.description.annotation.AnnotationSource
        public AnnotationList getDeclaredAnnotations() {
            return new AnnotationList.ForLoadedAnnotations(this.aPackage.getDeclaredAnnotations());
        }

        @Override // net.bytebuddy.description.NamedElement.WithRuntimeName
        public String getName() {
            return this.aPackage.getName();
        }

        public ForLoadedPackage(Package r1) {
            this.aPackage = r1;
        }
    }

    /* loaded from: classes2.dex */
    public static class Simple extends AbstractBase {
        private final String name;

        @Override // net.bytebuddy.description.annotation.AnnotationSource
        public AnnotationList getDeclaredAnnotations() {
            return new AnnotationList.Empty();
        }

        @Override // net.bytebuddy.description.NamedElement.WithRuntimeName
        public String getName() {
            return this.name;
        }

        public Simple(String str) {
            this.name = str;
        }
    }
}
