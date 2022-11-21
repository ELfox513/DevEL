package net.bytebuddy.implementation.bytecode.assign;

import edu.umd.cs.findbugs.annotations.SuppressFBWarnings;
import net.bytebuddy.description.type.TypeDescription;
import net.bytebuddy.implementation.bytecode.StackManipulation;
import net.bytebuddy.implementation.bytecode.assign.primitive.PrimitiveTypeAwareAssigner;
import net.bytebuddy.implementation.bytecode.assign.primitive.VoidAwareAssigner;
import net.bytebuddy.implementation.bytecode.assign.reference.GenericTypeAwareAssigner;
import net.bytebuddy.implementation.bytecode.assign.reference.ReferenceTypeAwareAssigner;
@SuppressFBWarnings(justification = "Safe initialization is implied.", value = {"IC_SUPERCLASS_USES_SUBCLASS_DURING_INITIALIZATION"})
/* loaded from: classes.dex */
public interface Assigner {
    public static final Assigner DEFAULT = new VoidAwareAssigner(new PrimitiveTypeAwareAssigner(ReferenceTypeAwareAssigner.INSTANCE));
    public static final Assigner GENERICS_AWARE = new VoidAwareAssigner(new PrimitiveTypeAwareAssigner(GenericTypeAwareAssigner.INSTANCE));

    /* loaded from: classes.dex */
    public enum EqualTypesOnly implements Assigner {
        GENERIC { // from class: net.bytebuddy.implementation.bytecode.assign.Assigner.EqualTypesOnly.1
            @Override // net.bytebuddy.implementation.bytecode.assign.Assigner
            public StackManipulation assign(TypeDescription.Generic generic, TypeDescription.Generic generic2, Typing typing) {
                return generic.equals(generic2) ? StackManipulation.Trivial.INSTANCE : StackManipulation.Illegal.INSTANCE;
            }
        },
        ERASURE { // from class: net.bytebuddy.implementation.bytecode.assign.Assigner.EqualTypesOnly.2
            @Override // net.bytebuddy.implementation.bytecode.assign.Assigner
            public StackManipulation assign(TypeDescription.Generic generic, TypeDescription.Generic generic2, Typing typing) {
                return generic.asErasure().equals(generic2.asErasure()) ? StackManipulation.Trivial.INSTANCE : StackManipulation.Illegal.INSTANCE;
            }
        }
    }

    /* loaded from: classes.dex */
    public enum Refusing implements Assigner {
        INSTANCE;

        @Override // net.bytebuddy.implementation.bytecode.assign.Assigner
        public StackManipulation assign(TypeDescription.Generic generic, TypeDescription.Generic generic2, Typing typing) {
            return StackManipulation.Illegal.INSTANCE;
        }
    }

    StackManipulation assign(TypeDescription.Generic generic, TypeDescription.Generic generic2, Typing typing);

    /* loaded from: classes.dex */
    public enum Typing {
        STATIC(false),
        DYNAMIC(true);
        
        private final boolean dynamic;

        /* renamed from: of */
        public static Typing m14973of(boolean z) {
            return z ? DYNAMIC : STATIC;
        }

        public boolean isDynamic() {
            return this.dynamic;
        }

        Typing(boolean z) {
            this.dynamic = z;
        }
    }
}
