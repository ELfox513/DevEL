package net.bytebuddy.dynamic;

import edu.umd.cs.findbugs.annotations.SuppressFBWarnings;
import net.bytebuddy.description.type.TypeDescription;
/* loaded from: classes2.dex */
public final class TargetType {
    public static final TypeDescription DESCRIPTION = TypeDescription.ForLoadedType.m15196of(TargetType.class);

    @SuppressFBWarnings(justification = "Assuming component type for array type.", value = {"NP_NULL_ON_SOME_PATH_FROM_RETURN_VALUE"})
    public static TypeDescription resolve(TypeDescription typeDescription, TypeDescription typeDescription2) {
        int i = 0;
        TypeDescription typeDescription3 = typeDescription;
        while (typeDescription3.isArray()) {
            typeDescription3 = typeDescription3.getComponentType();
            i++;
        }
        if (typeDescription3.represents(TargetType.class)) {
            return TypeDescription.ArrayProjection.m15198of(typeDescription2, i);
        }
        return typeDescription;
    }

    private TargetType() {
        throw new UnsupportedOperationException("This class only serves as a marker type and should not be instantiated");
    }
}
