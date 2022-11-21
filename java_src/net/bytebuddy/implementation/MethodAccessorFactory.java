package net.bytebuddy.implementation;

import net.bytebuddy.description.field.FieldDescription;
import net.bytebuddy.description.method.MethodDescription;
import net.bytebuddy.description.modifier.Visibility;
import net.bytebuddy.implementation.Implementation;
/* loaded from: classes.dex */
public interface MethodAccessorFactory {

    /* loaded from: classes.dex */
    public enum Illegal implements MethodAccessorFactory {
        INSTANCE;

        @Override // net.bytebuddy.implementation.MethodAccessorFactory
        public MethodDescription.InDefinedShape registerAccessorFor(Implementation.SpecialMethodInvocation specialMethodInvocation, AccessType accessType) {
            throw new IllegalStateException("It is illegal to register an accessor for this type");
        }

        @Override // net.bytebuddy.implementation.MethodAccessorFactory
        public MethodDescription.InDefinedShape registerGetterFor(FieldDescription fieldDescription, AccessType accessType) {
            throw new IllegalStateException("It is illegal to register a field getter for this type");
        }

        @Override // net.bytebuddy.implementation.MethodAccessorFactory
        public MethodDescription.InDefinedShape registerSetterFor(FieldDescription fieldDescription, AccessType accessType) {
            throw new IllegalStateException("It is illegal to register a field setter for this type");
        }
    }

    MethodDescription.InDefinedShape registerAccessorFor(Implementation.SpecialMethodInvocation specialMethodInvocation, AccessType accessType);

    MethodDescription.InDefinedShape registerGetterFor(FieldDescription fieldDescription, AccessType accessType);

    MethodDescription.InDefinedShape registerSetterFor(FieldDescription fieldDescription, AccessType accessType);

    /* loaded from: classes.dex */
    public enum AccessType {
        PUBLIC(Visibility.PUBLIC),
        DEFAULT(Visibility.PACKAGE_PRIVATE);
        
        private final Visibility visibility;

        public Visibility getVisibility() {
            return this.visibility;
        }

        AccessType(Visibility visibility) {
            this.visibility = visibility;
        }
    }
}
