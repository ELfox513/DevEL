package net.bytebuddy.dynamic.scaffold;

import net.bytebuddy.build.HashCodeAndEqualsPlugin;
import net.bytebuddy.description.field.FieldDescription;
import net.bytebuddy.description.field.FieldList;
import net.bytebuddy.description.type.TypeDefinition;
import net.bytebuddy.description.type.TypeDescription;
import net.bytebuddy.matcher.ElementMatcher;
import net.bytebuddy.matcher.ElementMatchers;
import net.bytebuddy.utility.nullability.MaybeNull;
/* loaded from: classes2.dex */
public interface FieldLocator {

    /* loaded from: classes2.dex */
    public interface Factory {
        FieldLocator make(TypeDescription typeDescription);
    }

    @HashCodeAndEqualsPlugin.Enhance
    /* loaded from: classes.dex */
    public static class ForClassHierarchy extends AbstractBase {
        private final TypeDescription typeDescription;

        /* loaded from: classes2.dex */
        public enum Factory implements Factory {
            INSTANCE;

            @Override // net.bytebuddy.dynamic.scaffold.FieldLocator.Factory
            public FieldLocator make(TypeDescription typeDescription) {
                return new ForClassHierarchy(typeDescription);
            }
        }

        public ForClassHierarchy(TypeDescription typeDescription) {
            this(typeDescription, typeDescription);
        }

        @Override // net.bytebuddy.dynamic.scaffold.FieldLocator.AbstractBase
        public boolean equals(@MaybeNull Object obj) {
            if (super.equals(obj)) {
                if (this == obj) {
                    return true;
                }
                return obj != null && getClass() == obj.getClass() && this.typeDescription.equals(((ForClassHierarchy) obj).typeDescription);
            }
            return false;
        }

        @Override // net.bytebuddy.dynamic.scaffold.FieldLocator.AbstractBase
        public int hashCode() {
            return (super.hashCode() * 31) + this.typeDescription.hashCode();
        }

        public ForClassHierarchy(TypeDescription typeDescription, TypeDescription typeDescription2) {
            super(typeDescription2);
            this.typeDescription = typeDescription;
        }

        @Override // net.bytebuddy.dynamic.scaffold.FieldLocator.AbstractBase
        public FieldList<?> locate(ElementMatcher<? super FieldDescription> elementMatcher) {
            for (TypeDefinition typeDefinition : this.typeDescription) {
                FieldList<?> fieldList = (FieldList) typeDefinition.getDeclaredFields().filter(elementMatcher);
                if (!fieldList.isEmpty()) {
                    return fieldList;
                }
            }
            return new FieldList.Empty();
        }
    }

    @HashCodeAndEqualsPlugin.Enhance
    /* loaded from: classes.dex */
    public static class ForExactType extends AbstractBase {
        private final TypeDescription typeDescription;

        public ForExactType(TypeDescription typeDescription) {
            this(typeDescription, typeDescription);
        }

        @Override // net.bytebuddy.dynamic.scaffold.FieldLocator.AbstractBase
        public boolean equals(@MaybeNull Object obj) {
            if (super.equals(obj)) {
                if (this == obj) {
                    return true;
                }
                return obj != null && getClass() == obj.getClass() && this.typeDescription.equals(((ForExactType) obj).typeDescription);
            }
            return false;
        }

        @Override // net.bytebuddy.dynamic.scaffold.FieldLocator.AbstractBase
        public int hashCode() {
            return (super.hashCode() * 31) + this.typeDescription.hashCode();
        }

        @Override // net.bytebuddy.dynamic.scaffold.FieldLocator.AbstractBase
        public FieldList<?> locate(ElementMatcher<? super FieldDescription> elementMatcher) {
            return (FieldList) this.typeDescription.getDeclaredFields().filter(elementMatcher);
        }

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static class Factory implements Factory {
            private final TypeDescription typeDescription;

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                return obj != null && getClass() == obj.getClass() && this.typeDescription.equals(((Factory) obj).typeDescription);
            }

            public int hashCode() {
                return (getClass().hashCode() * 31) + this.typeDescription.hashCode();
            }

            @Override // net.bytebuddy.dynamic.scaffold.FieldLocator.Factory
            public FieldLocator make(TypeDescription typeDescription) {
                return new ForExactType(this.typeDescription, typeDescription);
            }

            public Factory(TypeDescription typeDescription) {
                this.typeDescription = typeDescription;
            }
        }

        public ForExactType(TypeDescription typeDescription, TypeDescription typeDescription2) {
            super(typeDescription2);
            this.typeDescription = typeDescription;
        }
    }

    /* loaded from: classes2.dex */
    public static class ForTopLevelType extends AbstractBase {

        /* loaded from: classes2.dex */
        public enum Factory implements Factory {
            INSTANCE;

            @Override // net.bytebuddy.dynamic.scaffold.FieldLocator.Factory
            public FieldLocator make(TypeDescription typeDescription) {
                return new ForTopLevelType(typeDescription);
            }
        }

        public ForTopLevelType(TypeDescription typeDescription) {
            super(typeDescription);
        }

        @Override // net.bytebuddy.dynamic.scaffold.FieldLocator.AbstractBase
        public FieldList<?> locate(ElementMatcher<? super FieldDescription> elementMatcher) {
            return (FieldList) this.accessingType.getDeclaredFields().filter(elementMatcher);
        }
    }

    /* loaded from: classes2.dex */
    public enum NoOp implements FieldLocator, Factory {
        INSTANCE;

        @Override // net.bytebuddy.dynamic.scaffold.FieldLocator
        public Resolution locate(String str) {
            return Resolution.Illegal.INSTANCE;
        }

        @Override // net.bytebuddy.dynamic.scaffold.FieldLocator.Factory
        public FieldLocator make(TypeDescription typeDescription) {
            return this;
        }

        @Override // net.bytebuddy.dynamic.scaffold.FieldLocator
        public Resolution locate(String str, TypeDescription typeDescription) {
            return Resolution.Illegal.INSTANCE;
        }
    }

    /* loaded from: classes2.dex */
    public interface Resolution {

        /* loaded from: classes2.dex */
        public enum Illegal implements Resolution {
            INSTANCE;

            @Override // net.bytebuddy.dynamic.scaffold.FieldLocator.Resolution
            public FieldDescription getField() {
                throw new IllegalStateException("Could not locate field");
            }

            @Override // net.bytebuddy.dynamic.scaffold.FieldLocator.Resolution
            public boolean isResolved() {
                return false;
            }
        }

        FieldDescription getField();

        boolean isResolved();

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static class Simple implements Resolution {
            private final FieldDescription fieldDescription;

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                return obj != null && getClass() == obj.getClass() && this.fieldDescription.equals(((Simple) obj).fieldDescription);
            }

            @Override // net.bytebuddy.dynamic.scaffold.FieldLocator.Resolution
            public FieldDescription getField() {
                return this.fieldDescription;
            }

            public int hashCode() {
                return (getClass().hashCode() * 31) + this.fieldDescription.hashCode();
            }

            @Override // net.bytebuddy.dynamic.scaffold.FieldLocator.Resolution
            public boolean isResolved() {
                return true;
            }

            public Simple(FieldDescription fieldDescription) {
                this.fieldDescription = fieldDescription;
            }
        }
    }

    Resolution locate(String str);

    Resolution locate(String str, TypeDescription typeDescription);

    @HashCodeAndEqualsPlugin.Enhance
    /* loaded from: classes.dex */
    public static abstract class AbstractBase implements FieldLocator {
        public final TypeDescription accessingType;

        public boolean equals(@MaybeNull Object obj) {
            if (this == obj) {
                return true;
            }
            return obj != null && getClass() == obj.getClass() && this.accessingType.equals(((AbstractBase) obj).accessingType);
        }

        public int hashCode() {
            return (getClass().hashCode() * 31) + this.accessingType.hashCode();
        }

        public abstract FieldList<?> locate(ElementMatcher<? super FieldDescription> elementMatcher);

        @Override // net.bytebuddy.dynamic.scaffold.FieldLocator
        public Resolution locate(String str) {
            FieldList<?> locate = locate(ElementMatchers.named(str).and(ElementMatchers.isVisibleTo(this.accessingType)));
            return locate.size() == 1 ? new Resolution.Simple((FieldDescription) locate.getOnly()) : Resolution.Illegal.INSTANCE;
        }

        public AbstractBase(TypeDescription typeDescription) {
            this.accessingType = typeDescription;
        }

        @Override // net.bytebuddy.dynamic.scaffold.FieldLocator
        public Resolution locate(String str, TypeDescription typeDescription) {
            FieldList<?> locate = locate(ElementMatchers.named(str).and(ElementMatchers.fieldType(typeDescription)).and(ElementMatchers.isVisibleTo(this.accessingType)));
            return locate.size() == 1 ? new Resolution.Simple((FieldDescription) locate.getOnly()) : Resolution.Illegal.INSTANCE;
        }
    }
}
