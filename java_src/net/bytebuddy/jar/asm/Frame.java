package net.bytebuddy.jar.asm;

import net.bytebuddy.implementation.auxiliary.TypeProxy;
import net.bytebuddy.pool.TypePool;
/* loaded from: classes.dex */
class Frame {
    private static final int ARRAY_OF = 67108864;
    private static final int BOOLEAN = 4194313;
    private static final int BYTE = 4194314;
    private static final int CHAR = 4194315;
    private static final int CONSTANT_KIND = 4194304;
    private static final int DIM_MASK = -67108864;
    private static final int DIM_SHIFT = 26;
    private static final int DIM_SIZE = 6;
    private static final int DOUBLE = 4194307;
    private static final int ELEMENT_OF = -67108864;
    private static final int FLAGS_SHIFT = 20;
    private static final int FLAGS_SIZE = 2;
    private static final int FLOAT = 4194306;
    private static final int INTEGER = 4194305;
    private static final int ITEM_ASM_BOOLEAN = 9;
    private static final int ITEM_ASM_BYTE = 10;
    private static final int ITEM_ASM_CHAR = 11;
    private static final int ITEM_ASM_SHORT = 12;
    private static final int KIND_MASK = 62914560;
    private static final int KIND_SHIFT = 22;
    private static final int KIND_SIZE = 4;
    private static final int LOCAL_KIND = 16777216;
    private static final int LONG = 4194308;
    private static final int NULL = 4194309;
    private static final int REFERENCE_KIND = 8388608;
    private static final int SHORT = 4194316;
    private static final int STACK_KIND = 20971520;
    private static final int TOP = 4194304;
    private static final int TOP_IF_LONG_OR_DOUBLE_FLAG = 1048576;
    private static final int UNINITIALIZED_KIND = 12582912;
    private static final int UNINITIALIZED_THIS = 4194310;
    private static final int VALUE_MASK = 1048575;
    private static final int VALUE_SIZE = 20;

    /* renamed from: a */
    public Label f19201a;
    private int initializationCount;
    private int[] initializations;
    private int[] inputLocals;
    private int[] inputStack;
    private int[] outputLocals;
    private int[] outputStack;
    private short outputStackStart;
    private short outputStackTop;

    /* renamed from: e */
    public static int m14900e(SymbolTable symbolTable, String str) {
        return symbolTable.m14842t(str) | REFERENCE_KIND;
    }

    private int pop() {
        short s = this.outputStackTop;
        if (s > 0) {
            int[] iArr = this.outputStack;
            short s2 = (short) (s - 1);
            this.outputStackTop = s2;
            return iArr[s2];
        }
        short s3 = (short) (this.outputStackStart - 1);
        this.outputStackStart = s3;
        return STACK_KIND | (-s3);
    }

    private void push(int i) {
        if (this.outputStack == null) {
            this.outputStack = new int[10];
        }
        int length = this.outputStack.length;
        short s = this.outputStackTop;
        if (s >= length) {
            int[] iArr = new int[Math.max(s + 1, length * 2)];
            System.arraycopy(this.outputStack, 0, iArr, 0, length);
            this.outputStack = iArr;
        }
        int[] iArr2 = this.outputStack;
        short s2 = this.outputStackTop;
        short s3 = (short) (s2 + 1);
        this.outputStackTop = s3;
        iArr2[s2] = i;
        short s4 = (short) (this.outputStackStart + s3);
        Label label = this.f19201a;
        if (s4 > label.f19213e) {
            label.f19213e = s4;
        }
    }

    /* renamed from: f */
    public final int m14899f() {
        return this.inputStack.length;
    }

    /* renamed from: i */
    public final void m14896i(SymbolTable symbolTable, int i, Object[] objArr, int i2, Object[] objArr2) {
        int i3 = 0;
        for (int i4 = 0; i4 < i; i4++) {
            int i5 = i3 + 1;
            this.inputLocals[i3] = m14901d(symbolTable, objArr[i4]);
            Object obj = objArr[i4];
            if (obj != Opcodes.LONG && obj != Opcodes.DOUBLE) {
                i3 = i5;
            } else {
                this.inputLocals[i5] = 4194304;
                i3 = i5 + 1;
            }
        }
        while (true) {
            int[] iArr = this.inputLocals;
            if (i3 >= iArr.length) {
                break;
            }
            iArr[i3] = 4194304;
            i3++;
        }
        int i6 = 0;
        for (int i7 = 0; i7 < i2; i7++) {
            Object obj2 = objArr2[i7];
            if (obj2 == Opcodes.LONG || obj2 == Opcodes.DOUBLE) {
                i6++;
            }
        }
        this.inputStack = new int[i6 + i2];
        int i8 = 0;
        for (int i9 = 0; i9 < i2; i9++) {
            int i10 = i8 + 1;
            this.inputStack[i8] = m14901d(symbolTable, objArr2[i9]);
            Object obj3 = objArr2[i9];
            if (obj3 != Opcodes.LONG && obj3 != Opcodes.DOUBLE) {
                i8 = i10;
            } else {
                this.inputStack[i10] = 4194304;
                i8 = i10 + 1;
            }
        }
        this.outputStackTop = (short) 0;
        this.initializationCount = 0;
    }

    private void addInitializedType(int i) {
        if (this.initializations == null) {
            this.initializations = new int[2];
        }
        int length = this.initializations.length;
        int i2 = this.initializationCount;
        if (i2 >= length) {
            int[] iArr = new int[Math.max(i2 + 1, length * 2)];
            System.arraycopy(this.initializations, 0, iArr, 0, length);
            this.initializations = iArr;
        }
        int[] iArr2 = this.initializations;
        int i3 = this.initializationCount;
        this.initializationCount = i3 + 1;
        iArr2[i3] = i;
    }

    /* renamed from: d */
    public static int m14901d(SymbolTable symbolTable, Object obj) {
        if (obj instanceof Integer) {
            return 4194304 | ((Integer) obj).intValue();
        }
        if (obj instanceof String) {
            return getAbstractTypeFromDescriptor(symbolTable, Type.getObjectType((String) obj).getDescriptor(), 0);
        }
        return symbolTable.m14841u("", ((Label) obj).f19210b) | UNINITIALIZED_KIND;
    }

    private static int getAbstractTypeFromDescriptor(SymbolTable symbolTable, String str, int i) {
        char charAt = str.charAt(i);
        int i2 = FLOAT;
        if (charAt == 'F') {
            return FLOAT;
        }
        if (charAt != 'L') {
            if (charAt != 'S') {
                if (charAt != 'V') {
                    if (charAt != 'I') {
                        if (charAt == 'J') {
                            return LONG;
                        }
                        if (charAt != 'Z') {
                            if (charAt != '[') {
                                switch (charAt) {
                                    case 'B':
                                    case 'C':
                                        break;
                                    case 'D':
                                        return DOUBLE;
                                    default:
                                        throw new IllegalArgumentException();
                                }
                            } else {
                                int i3 = i + 1;
                                while (str.charAt(i3) == '[') {
                                    i3++;
                                }
                                char charAt2 = str.charAt(i3);
                                if (charAt2 != 'F') {
                                    if (charAt2 != 'L') {
                                        if (charAt2 != 'S') {
                                            if (charAt2 != 'Z') {
                                                if (charAt2 != 'I') {
                                                    if (charAt2 != 'J') {
                                                        switch (charAt2) {
                                                            case 'B':
                                                                i2 = BYTE;
                                                                break;
                                                            case 'C':
                                                                i2 = CHAR;
                                                                break;
                                                            case 'D':
                                                                i2 = DOUBLE;
                                                                break;
                                                            default:
                                                                throw new IllegalArgumentException();
                                                        }
                                                    } else {
                                                        i2 = LONG;
                                                    }
                                                } else {
                                                    i2 = INTEGER;
                                                }
                                            } else {
                                                i2 = BOOLEAN;
                                            }
                                        } else {
                                            i2 = SHORT;
                                        }
                                    } else {
                                        i2 = symbolTable.m14842t(str.substring(i3 + 1, str.length() - 1)) | REFERENCE_KIND;
                                    }
                                }
                                return ((i3 - i) << 26) | i2;
                            }
                        }
                    }
                } else {
                    return 0;
                }
            }
            return INTEGER;
        }
        return symbolTable.m14842t(str.substring(i + 1, str.length() - 1)) | REFERENCE_KIND;
    }

    private int getConcreteOutputType(int i, int i2) {
        int i3 = (-67108864) & i;
        int i4 = KIND_MASK & i;
        if (i4 == LOCAL_KIND) {
            int i5 = i3 + this.inputLocals[i & VALUE_MASK];
            if ((i & TOP_IF_LONG_OR_DOUBLE_FLAG) != 0 && (i5 == LONG || i5 == DOUBLE)) {
                return 4194304;
            }
            return i5;
        } else if (i4 == STACK_KIND) {
            int i6 = i3 + this.inputStack[i2 - (VALUE_MASK & i)];
            if ((i & TOP_IF_LONG_OR_DOUBLE_FLAG) != 0 && (i6 == LONG || i6 == DOUBLE)) {
                return 4194304;
            }
            return i6;
        } else {
            return i;
        }
    }

    private int getLocal(int i) {
        int[] iArr = this.outputLocals;
        if (iArr != null && i < iArr.length) {
            int i2 = iArr[i];
            if (i2 == 0) {
                int i3 = i | LOCAL_KIND;
                iArr[i] = i3;
                return i3;
            }
            return i2;
        }
        return i | LOCAL_KIND;
    }

    /* renamed from: h */
    public static void m14897h(SymbolTable symbolTable, int i, ByteVector byteVector) {
        int i2 = ((-67108864) & i) >> 26;
        if (i2 == 0) {
            int i3 = i & VALUE_MASK;
            int i4 = i & KIND_MASK;
            if (i4 != 4194304) {
                if (i4 != REFERENCE_KIND) {
                    if (i4 == UNINITIALIZED_KIND) {
                        byteVector.putByte(8).putShort((int) symbolTable.m14865B(i3).f19229f);
                        return;
                    }
                    throw new AssertionError();
                }
                byteVector.putByte(7).putShort(symbolTable.m14859c(symbolTable.m14865B(i3).f19228e).f19224a);
                return;
            }
            byteVector.putByte(i3);
            return;
        }
        StringBuilder sb = new StringBuilder();
        while (true) {
            int i5 = i2 - 1;
            if (i2 <= 0) {
                break;
            }
            sb.append(TypePool.Default.LazyTypeDescription.GenericTypeToken.COMPONENT_TYPE_PATH);
            i2 = i5;
        }
        if ((i & KIND_MASK) == REFERENCE_KIND) {
            sb.append('L');
            sb.append(symbolTable.m14865B(i & VALUE_MASK).f19228e);
            sb.append(TypePool.Default.LazyTypeDescription.GenericTypeToken.INDEXED_TYPE_DELIMITER);
        } else {
            int i6 = i & VALUE_MASK;
            if (i6 != 1) {
                if (i6 != 2) {
                    if (i6 != 3) {
                        if (i6 != 4) {
                            switch (i6) {
                                case 9:
                                    sb.append('Z');
                                    break;
                                case 10:
                                    sb.append('B');
                                    break;
                                case 11:
                                    sb.append('C');
                                    break;
                                case 12:
                                    sb.append('S');
                                    break;
                                default:
                                    throw new AssertionError();
                            }
                        } else {
                            sb.append('J');
                        }
                    } else {
                        sb.append('D');
                    }
                } else {
                    sb.append('F');
                }
            } else {
                sb.append('I');
            }
        }
        byteVector.putByte(7).putShort(symbolTable.m14859c(sb.toString()).f19224a);
    }

    private static boolean merge(SymbolTable symbolTable, int i, int[] iArr, int i2) {
        int min;
        int m14842t;
        int i3 = iArr[i2];
        if (i3 == i) {
            return false;
        }
        if ((67108863 & i) == NULL) {
            if (i3 == NULL) {
                return false;
            }
            i = NULL;
        }
        if (i3 == 0) {
            iArr[i2] = i;
            return true;
        }
        int i4 = i3 & (-67108864);
        int i5 = 4194304;
        if (i4 == 0 && (i3 & KIND_MASK) != REFERENCE_KIND) {
            if (i3 == NULL) {
                if ((i & (-67108864)) == 0 && (i & KIND_MASK) != REFERENCE_KIND) {
                    i = 4194304;
                }
                i5 = i;
            }
        } else if (i == NULL) {
            return false;
        } else {
            if ((i & (-4194304)) == ((-4194304) & i3)) {
                if ((i3 & KIND_MASK) == REFERENCE_KIND) {
                    i5 = (i & (-67108864)) | REFERENCE_KIND | symbolTable.m14843s(i & VALUE_MASK, VALUE_MASK & i3);
                } else {
                    min = ((i & (-67108864)) - 67108864) | REFERENCE_KIND;
                    m14842t = symbolTable.m14842t(TypeProxy.SilentConstruction.Appender.JAVA_LANG_OBJECT_INTERNAL_NAME);
                    i5 = min | m14842t;
                }
            } else {
                int i6 = i & (-67108864);
                if (i6 != 0 || (i & KIND_MASK) == REFERENCE_KIND) {
                    if (i6 != 0 && (i & KIND_MASK) != REFERENCE_KIND) {
                        i6 -= 67108864;
                    }
                    if (i4 != 0 && (i3 & KIND_MASK) != REFERENCE_KIND) {
                        i4 -= 67108864;
                    }
                    min = Math.min(i6, i4) | REFERENCE_KIND;
                    m14842t = symbolTable.m14842t(TypeProxy.SilentConstruction.Appender.JAVA_LANG_OBJECT_INTERNAL_NAME);
                    i5 = min | m14842t;
                }
            }
        }
        if (i5 == i3) {
            return false;
        }
        iArr[i2] = i5;
        return true;
    }

    private void setLocal(int i, int i2) {
        if (this.outputLocals == null) {
            this.outputLocals = new int[10];
        }
        int length = this.outputLocals.length;
        if (i >= length) {
            int[] iArr = new int[Math.max(i + 1, length * 2)];
            System.arraycopy(this.outputLocals, 0, iArr, 0, length);
            this.outputLocals = iArr;
        }
        this.outputLocals[i] = i2;
    }

    /* renamed from: a */
    public final void m14904a(MethodWriter methodWriter) {
        int i;
        int i2;
        int i3;
        int[] iArr = this.inputLocals;
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        loop0: while (true) {
            int i7 = 0;
            while (true) {
                int i8 = 2;
                if (i5 >= iArr.length) {
                    break loop0;
                }
                int i9 = iArr[i5];
                if (i9 != LONG && i9 != DOUBLE) {
                    i8 = 1;
                }
                i5 += i8;
                if (i9 == 4194304) {
                    i7++;
                }
            }
            i6 += i7 + 1;
        }
        int[] iArr2 = this.inputStack;
        int i10 = 0;
        int i11 = 0;
        while (i10 < iArr2.length) {
            int i12 = iArr2[i10];
            if (i12 != LONG && i12 != DOUBLE) {
                i3 = 1;
            } else {
                i3 = 2;
            }
            i10 += i3;
            i11++;
        }
        int m14874j = methodWriter.m14874j(this.f19201a.f19210b, i6, i11);
        int i13 = 0;
        while (true) {
            int i14 = i6 - 1;
            if (i6 <= 0) {
                break;
            }
            int i15 = iArr[i13];
            if (i15 != LONG && i15 != DOUBLE) {
                i2 = 1;
            } else {
                i2 = 2;
            }
            i13 += i2;
            methodWriter.m14876h(m14874j, i15);
            i6 = i14;
            m14874j++;
        }
        while (true) {
            int i16 = i11 - 1;
            if (i11 > 0) {
                int i17 = iArr2[i4];
                if (i17 != LONG && i17 != DOUBLE) {
                    i = 1;
                } else {
                    i = 2;
                }
                i4 += i;
                methodWriter.m14876h(m14874j, i17);
                m14874j++;
                i11 = i16;
            } else {
                methodWriter.m14875i();
                return;
            }
        }
    }

    /* renamed from: b */
    public final void m14903b(Frame frame) {
        this.inputLocals = frame.inputLocals;
        this.inputStack = frame.inputStack;
        this.outputStackStart = (short) 0;
        this.outputLocals = frame.outputLocals;
        this.outputStack = frame.outputStack;
        this.outputStackTop = frame.outputStackTop;
        this.initializationCount = frame.initializationCount;
        this.initializations = frame.initializations;
    }

    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Failed to find switch 'out' block
        	at jadx.core.dex.visitors.regions.RegionMaker.processSwitch(RegionMaker.java:817)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:160)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:94)
        	at jadx.core.dex.visitors.regions.RegionMaker.processSwitch(RegionMaker.java:856)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:160)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:94)
        	at jadx.core.dex.visitors.regions.RegionMaker.processSwitch(RegionMaker.java:856)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:160)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:94)
        	at jadx.core.dex.visitors.regions.RegionMaker.processSwitch(RegionMaker.java:856)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:160)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:94)
        	at jadx.core.dex.visitors.regions.RegionMaker.processSwitch(RegionMaker.java:856)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:160)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:94)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:52)
        */
    /* JADX WARN: Removed duplicated region for block: B:119:0x0344  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x034b  */
    /* JADX WARN: Removed duplicated region for block: B:121:0x034f  */
    /* JADX WARN: Removed duplicated region for block: B:122:0x0356  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0147  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0152  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x018e  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x019c  */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo14902c(int r17, int r18, net.bytebuddy.jar.asm.Symbol r19, net.bytebuddy.jar.asm.SymbolTable r20) {
        /*
            Method dump skipped, instructions count: 1246
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: net.bytebuddy.jar.asm.Frame.mo14902c(int, int, net.bytebuddy.jar.asm.Symbol, net.bytebuddy.jar.asm.SymbolTable):void");
    }

    /* renamed from: g */
    public final boolean m14898g(SymbolTable symbolTable, Frame frame, int i) {
        boolean z;
        int i2;
        int length = this.inputLocals.length;
        int length2 = this.inputStack.length;
        boolean z2 = true;
        if (frame.inputLocals == null) {
            frame.inputLocals = new int[length];
            z = true;
        } else {
            z = false;
        }
        for (int i3 = 0; i3 < length; i3++) {
            int[] iArr = this.outputLocals;
            if (iArr != null && i3 < iArr.length) {
                int i4 = iArr[i3];
                if (i4 == 0) {
                    i2 = this.inputLocals[i3];
                } else {
                    i2 = getConcreteOutputType(i4, length2);
                }
            } else {
                i2 = this.inputLocals[i3];
            }
            if (this.initializations != null) {
                i2 = getInitializedType(symbolTable, i2);
            }
            z |= merge(symbolTable, i2, frame.inputLocals, i3);
        }
        if (i > 0) {
            for (int i5 = 0; i5 < length; i5++) {
                z |= merge(symbolTable, this.inputLocals[i5], frame.inputLocals, i5);
            }
            if (frame.inputStack == null) {
                frame.inputStack = new int[1];
            } else {
                z2 = z;
            }
            return merge(symbolTable, i, frame.inputStack, 0) | z2;
        }
        int length3 = this.inputStack.length + this.outputStackStart;
        if (frame.inputStack == null) {
            frame.inputStack = new int[this.outputStackTop + length3];
        } else {
            z2 = z;
        }
        for (int i6 = 0; i6 < length3; i6++) {
            int i7 = this.inputStack[i6];
            if (this.initializations != null) {
                i7 = getInitializedType(symbolTable, i7);
            }
            z2 |= merge(symbolTable, i7, frame.inputStack, i6);
        }
        for (int i8 = 0; i8 < this.outputStackTop; i8++) {
            int concreteOutputType = getConcreteOutputType(this.outputStack[i8], length2);
            if (this.initializations != null) {
                concreteOutputType = getInitializedType(symbolTable, concreteOutputType);
            }
            z2 |= merge(symbolTable, concreteOutputType, frame.inputStack, length3 + i8);
        }
        return z2;
    }

    /* renamed from: j */
    public final void m14895j(SymbolTable symbolTable, int i, String str, int i2) {
        int[] iArr = new int[i2];
        this.inputLocals = iArr;
        this.inputStack = new int[0];
        int i3 = 1;
        if ((i & 8) == 0) {
            if ((i & 262144) == 0) {
                iArr[0] = REFERENCE_KIND | symbolTable.m14842t(symbolTable.m14839w());
            } else {
                iArr[0] = UNINITIALIZED_THIS;
            }
        } else {
            i3 = 0;
        }
        for (Type type : Type.getArgumentTypes(str)) {
            int abstractTypeFromDescriptor = getAbstractTypeFromDescriptor(symbolTable, type.getDescriptor(), 0);
            int[] iArr2 = this.inputLocals;
            int i4 = i3 + 1;
            iArr2[i3] = abstractTypeFromDescriptor;
            if (abstractTypeFromDescriptor != LONG && abstractTypeFromDescriptor != DOUBLE) {
                i3 = i4;
            } else {
                i3 = i4 + 1;
                iArr2[i4] = 4194304;
            }
        }
        while (i3 < i2) {
            this.inputLocals[i3] = 4194304;
            i3++;
        }
    }

    public Frame(Label label) {
        this.f19201a = label;
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0051 A[LOOP:0: B:7:0x000d->B:23:0x0051, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0037 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int getInitializedType(net.bytebuddy.jar.asm.SymbolTable r9, int r10) {
        /*
            r8 = this;
            r0 = 4194310(0x400006, float:5.87748E-39)
            if (r10 == r0) goto Lc
            r1 = -4194304(0xffffffffffc00000, float:NaN)
            r1 = r1 & r10
            r2 = 12582912(0xc00000, float:1.7632415E-38)
            if (r1 != r2) goto L54
        Lc:
            r1 = 0
        Ld:
            int r2 = r8.initializationCount
            if (r1 >= r2) goto L54
            int[] r2 = r8.initializations
            r2 = r2[r1]
            r3 = -67108864(0xfffffffffc000000, float:-2.658456E36)
            r3 = r3 & r2
            r4 = 62914560(0x3c00000, float:1.1284746E-36)
            r4 = r4 & r2
            r5 = 1048575(0xfffff, float:1.469367E-39)
            r6 = r2 & r5
            r7 = 16777216(0x1000000, float:2.3509887E-38)
            if (r4 != r7) goto L2a
            int[] r2 = r8.inputLocals
            r2 = r2[r6]
        L28:
            int r2 = r2 + r3
            goto L35
        L2a:
            r7 = 20971520(0x1400000, float:3.526483E-38)
            if (r4 != r7) goto L35
            int[] r2 = r8.inputStack
            int r4 = r2.length
            int r4 = r4 - r6
            r2 = r2[r4]
            goto L28
        L35:
            if (r10 != r2) goto L51
            r1 = 8388608(0x800000, float:1.17549435E-38)
            if (r10 != r0) goto L45
            java.lang.String r10 = r9.m14839w()
            int r9 = r9.m14842t(r10)
        L43:
            r9 = r9 | r1
            return r9
        L45:
            r10 = r10 & r5
            net.bytebuddy.jar.asm.Symbol r10 = r9.m14865B(r10)
            java.lang.String r10 = r10.f19228e
            int r9 = r9.m14842t(r10)
            goto L43
        L51:
            int r1 = r1 + 1
            goto Ld
        L54:
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: net.bytebuddy.jar.asm.Frame.getInitializedType(net.bytebuddy.jar.asm.SymbolTable, int):int");
    }

    private void pop(int i) {
        short s = this.outputStackTop;
        if (s >= i) {
            this.outputStackTop = (short) (s - i);
            return;
        }
        this.outputStackStart = (short) (this.outputStackStart - (i - s));
        this.outputStackTop = (short) 0;
    }

    private void pop(String str) {
        char charAt = str.charAt(0);
        if (charAt == '(') {
            pop((Type.getArgumentsAndReturnSizes(str) >> 2) - 1);
        } else if (charAt != 'J' && charAt != 'D') {
            pop(1);
        } else {
            pop(2);
        }
    }

    private void push(SymbolTable symbolTable, String str) {
        int abstractTypeFromDescriptor = getAbstractTypeFromDescriptor(symbolTable, str, str.charAt(0) == '(' ? Type.m14835a(str) : 0);
        if (abstractTypeFromDescriptor != 0) {
            push(abstractTypeFromDescriptor);
            if (abstractTypeFromDescriptor == LONG || abstractTypeFromDescriptor == DOUBLE) {
                push(4194304);
            }
        }
    }
}
