package net.bytebuddy.implementation.auxiliary;

import java.util.Collection;
import java.util.Collections;
import java.util.List;
import net.bytebuddy.ByteBuddy;
import net.bytebuddy.ClassFileVersion;
import net.bytebuddy.description.annotation.AnnotationDescription;
import net.bytebuddy.dynamic.DynamicType;
import net.bytebuddy.dynamic.scaffold.MethodGraph;
import net.bytebuddy.dynamic.scaffold.TypeValidation;
import net.bytebuddy.dynamic.scaffold.subclass.ConstructorStrategy;
import net.bytebuddy.implementation.MethodAccessorFactory;
import net.bytebuddy.implementation.auxiliary.AuxiliaryType;
import net.bytebuddy.utility.RandomString;
/* loaded from: classes.dex */
public enum TrivialType implements AuxiliaryType {
    SIGNATURE_RELEVANT(true),
    PLAIN(false);
    
    private final boolean eager;

    @Override // net.bytebuddy.implementation.auxiliary.AuxiliaryType
    public String getSuffix() {
        return RandomString.hashOf(name().hashCode());
    }

    @Override // net.bytebuddy.implementation.auxiliary.AuxiliaryType
    public DynamicType make(String str, ClassFileVersion classFileVersion, MethodAccessorFactory methodAccessorFactory) {
        List emptyList;
        DynamicType.Builder subclass = new ByteBuddy(classFileVersion).with(TypeValidation.DISABLED).with(MethodGraph.Empty.INSTANCE).subclass(Object.class, (ConstructorStrategy) ConstructorStrategy.Default.NO_CONSTRUCTORS);
        if (this.eager) {
            emptyList = Collections.singletonList(AnnotationDescription.Builder.ofType(AuxiliaryType.SignatureRelevant.class).build(false));
        } else {
            emptyList = Collections.emptyList();
        }
        return subclass.annotateType((Collection<? extends AnnotationDescription>) emptyList).name(str).modifiers(AuxiliaryType.DEFAULT_TYPE_MODIFIER).make();
    }

    TrivialType(boolean z) {
        this.eager = z;
    }
}
