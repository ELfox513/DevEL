package net.bytebuddy.description.enumeration;

import java.util.ArrayList;
import java.util.List;
import net.bytebuddy.build.CachedReturnPlugin;
import net.bytebuddy.description.NamedElement;
import net.bytebuddy.description.type.TypeDescription;
import net.bytebuddy.utility.nullability.MaybeNull;
/* loaded from: classes2.dex */
public interface EnumerationDescription extends NamedElement {

    /* loaded from: classes2.dex */
    public static abstract class AbstractBase implements EnumerationDescription {
        private transient /* synthetic */ int hashCode;

        public boolean equals(@MaybeNull Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof EnumerationDescription)) {
                return false;
            }
            EnumerationDescription enumerationDescription = (EnumerationDescription) obj;
            return getEnumerationType().equals(enumerationDescription.getEnumerationType()) && getValue().equals(enumerationDescription.getValue());
        }

        @Override // net.bytebuddy.description.NamedElement
        public String getActualName() {
            return getValue();
        }

        @CachedReturnPlugin.Enhance("hashCode")
        public int hashCode() {
            int hashCode = this.hashCode != 0 ? 0 : getValue().hashCode() + (getEnumerationType().hashCode() * 31);
            if (hashCode == 0) {
                return this.hashCode;
            }
            this.hashCode = hashCode;
            return hashCode;
        }

        public String toString() {
            return getValue();
        }
    }

    /* loaded from: classes2.dex */
    public static class ForLoadedEnumeration extends AbstractBase {
        private final Enum<?> value;

        @Override // net.bytebuddy.description.enumeration.EnumerationDescription
        public TypeDescription getEnumerationType() {
            return TypeDescription.ForLoadedType.m15196of(this.value.getDeclaringClass());
        }

        @Override // net.bytebuddy.description.enumeration.EnumerationDescription
        public String getValue() {
            return this.value.name();
        }

        public static List<EnumerationDescription> asList(Enum<?>[] enumArr) {
            ArrayList arrayList = new ArrayList(enumArr.length);
            for (Enum<?> r3 : enumArr) {
                arrayList.add(new ForLoadedEnumeration(r3));
            }
            return arrayList;
        }

        @Override // net.bytebuddy.description.enumeration.EnumerationDescription
        public <T extends Enum<T>> T load(Class<T> cls) {
            if (this.value.getDeclaringClass() == cls) {
                return (T) this.value;
            }
            return (T) Enum.valueOf(cls, this.value.name());
        }

        public ForLoadedEnumeration(Enum<?> r1) {
            this.value = r1;
        }
    }

    /* loaded from: classes2.dex */
    public static class Latent extends AbstractBase {
        private final TypeDescription enumerationType;
        private final String value;

        @Override // net.bytebuddy.description.enumeration.EnumerationDescription
        public TypeDescription getEnumerationType() {
            return this.enumerationType;
        }

        @Override // net.bytebuddy.description.enumeration.EnumerationDescription
        public String getValue() {
            return this.value;
        }

        @Override // net.bytebuddy.description.enumeration.EnumerationDescription
        public <T extends Enum<T>> T load(Class<T> cls) {
            if (this.enumerationType.represents(cls)) {
                return (T) Enum.valueOf(cls, this.value);
            }
            throw new IllegalArgumentException(cls + " does not represent " + this.enumerationType);
        }

        public Latent(TypeDescription typeDescription, String str) {
            this.enumerationType = typeDescription;
            this.value = str;
        }
    }

    TypeDescription getEnumerationType();

    String getValue();

    <T extends Enum<T>> T load(Class<T> cls);
}
