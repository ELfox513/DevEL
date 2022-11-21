package net.bytebuddy.implementation.bytecode;

import java.util.Arrays;
import java.util.Collection;
import net.bytebuddy.description.type.TypeDefinition;
import net.bytebuddy.implementation.bytecode.StackManipulation;
/* loaded from: classes.dex */
public enum StackSize {
    ZERO(0),
    SINGLE(1),
    DOUBLE(2);
    
    private final int size;

    /* renamed from: net.bytebuddy.implementation.bytecode.StackSize$1 */
    /* loaded from: classes.dex */
    public static /* synthetic */ class C50291 {

        /* renamed from: a */
        public static final /* synthetic */ int[] f19158a;

        static {
            int[] iArr = new int[StackSize.values().length];
            f19158a = iArr;
            try {
                iArr[StackSize.DOUBLE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f19158a[StackSize.SINGLE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f19158a[StackSize.ZERO.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* renamed from: of */
    public static StackSize m14977of(Class<?> cls) {
        if (cls == Void.TYPE) {
            return ZERO;
        }
        if (cls != Double.TYPE && cls != Long.TYPE) {
            return SINGLE;
        }
        return DOUBLE;
    }

    public int getSize() {
        return this.size;
    }

    public StackManipulation.Size toDecreasingSize() {
        return new StackManipulation.Size(getSize() * (-1), 0);
    }

    public StackManipulation.Size toIncreasingSize() {
        return new StackManipulation.Size(getSize(), getSize());
    }

    public StackSize maximum(StackSize stackSize) {
        int[] iArr = C50291.f19158a;
        int i = iArr[ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i == 3) {
                    return stackSize;
                }
                throw new AssertionError();
            }
            int i2 = iArr[stackSize.ordinal()];
            if (i2 != 1) {
                if (i2 != 2 && i2 != 3) {
                    throw new AssertionError();
                }
                return this;
            }
            return stackSize;
        }
        return this;
    }

    StackSize(int i) {
        this.size = i;
    }

    /* renamed from: of */
    public static StackSize m14978of(int i) {
        if (i != 0) {
            if (i != 1) {
                if (i == 2) {
                    return DOUBLE;
                }
                throw new IllegalArgumentException("Unexpected stack size value: " + i);
            }
            return SINGLE;
        }
        return ZERO;
    }

    /* renamed from: of */
    public static int m14975of(TypeDefinition... typeDefinitionArr) {
        return m14976of(Arrays.asList(typeDefinitionArr));
    }

    /* renamed from: of */
    public static int m14976of(Collection<? extends TypeDefinition> collection) {
        int i = 0;
        for (TypeDefinition typeDefinition : collection) {
            i += typeDefinition.getStackSize().getSize();
        }
        return i;
    }
}
