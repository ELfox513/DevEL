package net.bytebuddy.jar.asm;

import com.badlogic.gdx.net.HttpStatus;
import com.prineside.luaj.lib.jse.JseOsLib;
import net.bytebuddy.description.method.MethodDescription;
import net.bytebuddy.jar.asm.Attribute;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class MethodWriter extends MethodVisitor {

    /* renamed from: NA */
    private static final int f19220NA = 0;
    private static final int[] STACK_SIZE_DELTA = {0, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 1, 1, 1, 2, 2, 1, 1, 1, 0, 0, 1, 2, 1, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, -1, -1, -1, -1, -1, -2, -1, -2, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -3, -4, -3, -4, -3, -3, -3, -3, -1, -2, 1, 1, 1, 2, 2, 2, 0, -1, -2, -1, -2, -1, -2, -1, -2, -1, -2, -1, -2, -1, -2, -1, -2, -1, -2, -1, -2, 0, 0, 0, 0, -1, -1, -1, -1, -1, -1, -1, -2, -1, -2, -1, -2, 0, 1, 0, 1, -1, -1, 0, 0, 1, 1, -1, 0, -1, 0, 0, 0, -3, -1, -1, -3, -3, -1, -1, -1, -1, -1, -1, -2, -2, -2, -2, -2, -2, -2, -2, 0, 1, 0, -1, -1, -1, -2, -1, -2, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, -1, 0, 0};
    private final int accessFlags;
    private final ByteVector code;
    private final int compute;
    private Label currentBasicBlock;
    private int[] currentFrame;
    private int currentLocals;
    private ByteVector defaultValue;
    private final String descriptor;
    private final int descriptorIndex;
    private final int[] exceptionIndexTable;
    private Attribute firstAttribute;
    private Label firstBasicBlock;
    private Attribute firstCodeAttribute;
    private Handler firstHandler;
    private boolean hasAsmInstructions;
    private boolean hasSubroutines;
    private int invisibleAnnotableParameterCount;
    private Label lastBasicBlock;
    private int lastBytecodeOffset;
    private AnnotationWriter lastCodeRuntimeInvisibleTypeAnnotation;
    private AnnotationWriter lastCodeRuntimeVisibleTypeAnnotation;
    private Handler lastHandler;
    private AnnotationWriter lastRuntimeInvisibleAnnotation;
    private AnnotationWriter[] lastRuntimeInvisibleParameterAnnotations;
    private AnnotationWriter lastRuntimeInvisibleTypeAnnotation;
    private AnnotationWriter lastRuntimeVisibleAnnotation;
    private AnnotationWriter[] lastRuntimeVisibleParameterAnnotations;
    private AnnotationWriter lastRuntimeVisibleTypeAnnotation;
    private ByteVector lineNumberTable;
    private int lineNumberTableLength;
    private ByteVector localVariableTable;
    private int localVariableTableLength;
    private ByteVector localVariableTypeTable;
    private int localVariableTypeTableLength;
    private int maxLocals;
    private int maxRelativeStackSize;
    private int maxStack;
    private final String name;
    private final int nameIndex;
    private final int numberOfExceptions;
    private ByteVector parameters;
    private int parametersCount;
    private int[] previousFrame;
    private int previousFrameOffset;
    private int relativeStackSize;
    private final int signatureIndex;
    private int sourceLength;
    private int sourceOffset;
    private ByteVector stackMapTableEntries;
    private int stackMapTableNumberOfEntries;
    private final SymbolTable symbolTable;
    private int visibleAnnotableParameterCount;

    private void addSuccessorToCurrentBasicBlock(int i, Label label) {
        Label label2 = this.currentBasicBlock;
        label2.f19217i = new Edge(i, label, label2.f19217i);
    }

    private void putAbstractTypes(int i, int i2) {
        while (i < i2) {
            Frame.m14897h(this.symbolTable, this.currentFrame[i], this.stackMapTableEntries);
            i++;
        }
    }

    /* renamed from: d */
    public boolean m14880d() {
        return this.hasAsmInstructions;
    }

    /* renamed from: e */
    public boolean m14879e() {
        return this.stackMapTableNumberOfEntries > 0;
    }

    /* renamed from: h */
    public void m14876h(int i, int i2) {
        this.currentFrame[i] = i2;
    }

    @Override // net.bytebuddy.jar.asm.MethodVisitor
    public void visitCode() {
    }

    @Override // net.bytebuddy.jar.asm.MethodVisitor
    public void visitEnd() {
    }

    @Override // net.bytebuddy.jar.asm.MethodVisitor
    public void visitFrame(int i, int i2, Object[] objArr, int i3, Object[] objArr2) {
        int i4;
        int i5 = this.compute;
        if (i5 == 4) {
            return;
        }
        if (i5 == 3) {
            Label label = this.currentBasicBlock;
            Frame frame = label.f19215g;
            if (frame == null) {
                label.f19215g = new CurrentFrame(label);
                this.currentBasicBlock.f19215g.m14895j(this.symbolTable, this.accessFlags, this.descriptor, i2);
                this.currentBasicBlock.f19215g.m14904a(this);
            } else {
                if (i == -1) {
                    frame.m14896i(this.symbolTable, i2, objArr, i3, objArr2);
                }
                this.currentBasicBlock.f19215g.m14904a(this);
            }
        } else if (i == -1) {
            if (this.previousFrame == null) {
                Frame frame2 = new Frame(new Label());
                frame2.m14895j(this.symbolTable, this.accessFlags, this.descriptor, Type.getArgumentsAndReturnSizes(this.descriptor) >> 2);
                frame2.m14904a(this);
            }
            this.currentLocals = i2;
            int m14874j = m14874j(this.code.f19174b, i2, i3);
            int i6 = 0;
            while (i6 < i2) {
                this.currentFrame[m14874j] = Frame.m14901d(this.symbolTable, objArr[i6]);
                i6++;
                m14874j++;
            }
            int i7 = 0;
            while (i7 < i3) {
                this.currentFrame[m14874j] = Frame.m14901d(this.symbolTable, objArr2[i7]);
                i7++;
                m14874j++;
            }
            m14875i();
        } else if (this.symbolTable.m14836z() >= 50) {
            if (this.stackMapTableEntries == null) {
                this.stackMapTableEntries = new ByteVector();
                i4 = this.code.f19174b;
            } else {
                i4 = (this.code.f19174b - this.previousFrameOffset) - 1;
                if (i4 < 0) {
                    if (i == 3) {
                        return;
                    }
                    throw new IllegalStateException();
                }
            }
            if (i != 0) {
                if (i != 1) {
                    if (i != 2) {
                        if (i != 3) {
                            if (i == 4) {
                                if (i4 < 64) {
                                    this.stackMapTableEntries.putByte(i4 + 64);
                                } else {
                                    this.stackMapTableEntries.putByte(247).putShort(i4);
                                }
                                putFrameType(objArr2[0]);
                            } else {
                                throw new IllegalArgumentException();
                            }
                        } else if (i4 < 64) {
                            this.stackMapTableEntries.putByte(i4);
                        } else {
                            this.stackMapTableEntries.putByte(251).putShort(i4);
                        }
                    } else {
                        this.currentLocals -= i2;
                        this.stackMapTableEntries.putByte(251 - i2).putShort(i4);
                    }
                } else {
                    this.currentLocals += i2;
                    this.stackMapTableEntries.putByte(i2 + 251).putShort(i4);
                    for (int i8 = 0; i8 < i2; i8++) {
                        putFrameType(objArr[i8]);
                    }
                }
            } else {
                this.currentLocals = i2;
                this.stackMapTableEntries.putByte(255).putShort(i4).putShort(i2);
                for (int i9 = 0; i9 < i2; i9++) {
                    putFrameType(objArr[i9]);
                }
                this.stackMapTableEntries.putShort(i3);
                for (int i10 = 0; i10 < i3; i10++) {
                    putFrameType(objArr2[i10]);
                }
            }
            this.previousFrameOffset = this.code.f19174b;
            this.stackMapTableNumberOfEntries++;
        } else {
            throw new IllegalArgumentException("Class versions V1_5 or less must use F_NEW frames.");
        }
        if (this.compute == 2) {
            this.relativeStackSize = i3;
            for (int i11 = 0; i11 < i3; i11++) {
                Object obj = objArr2[i11];
                if (obj == Opcodes.LONG || obj == Opcodes.DOUBLE) {
                    this.relativeStackSize++;
                }
            }
            int i12 = this.relativeStackSize;
            if (i12 > this.maxRelativeStackSize) {
                this.maxRelativeStackSize = i12;
            }
        }
        this.maxStack = Math.max(this.maxStack, i3);
        this.maxLocals = Math.max(this.maxLocals, this.currentLocals);
    }

    @Override // net.bytebuddy.jar.asm.MethodVisitor
    public void visitLocalVariable(String str, String str2, String str3, Label label, Label label2, int i) {
        int i2 = 1;
        if (str3 != null) {
            if (this.localVariableTypeTable == null) {
                this.localVariableTypeTable = new ByteVector();
            }
            this.localVariableTypeTableLength++;
            this.localVariableTypeTable.putShort(label.f19210b).putShort(label2.f19210b - label.f19210b).putShort(this.symbolTable.m14844r(str)).putShort(this.symbolTable.m14844r(str3)).putShort(i);
        }
        if (this.localVariableTable == null) {
            this.localVariableTable = new ByteVector();
        }
        this.localVariableTableLength++;
        this.localVariableTable.putShort(label.f19210b).putShort(label2.f19210b - label.f19210b).putShort(this.symbolTable.m14844r(str)).putShort(this.symbolTable.m14844r(str2)).putShort(i);
        if (this.compute != 0) {
            char charAt = str2.charAt(0);
            int i3 = i + ((charAt == 'J' || charAt == 'D') ? 2 : 2);
            if (i3 > this.maxLocals) {
                this.maxLocals = i3;
            }
        }
    }

    public MethodWriter(SymbolTable symbolTable, int i, String str, String str2, String str3, String[] strArr, int i2) {
        super(Opcodes.ASM9);
        int i3;
        int m14844r;
        this.code = new ByteVector();
        this.symbolTable = symbolTable;
        if (MethodDescription.CONSTRUCTOR_INTERNAL_NAME.equals(str)) {
            i3 = 262144 | i;
        } else {
            i3 = i;
        }
        this.accessFlags = i3;
        this.nameIndex = symbolTable.m14844r(str);
        this.name = str;
        this.descriptorIndex = symbolTable.m14844r(str2);
        this.descriptor = str2;
        if (str3 == null) {
            m14844r = 0;
        } else {
            m14844r = symbolTable.m14844r(str3);
        }
        this.signatureIndex = m14844r;
        if (strArr != null && strArr.length > 0) {
            int length = strArr.length;
            this.numberOfExceptions = length;
            this.exceptionIndexTable = new int[length];
            for (int i4 = 0; i4 < this.numberOfExceptions; i4++) {
                this.exceptionIndexTable[i4] = symbolTable.m14859c(strArr[i4]).f19224a;
            }
        } else {
            this.numberOfExceptions = 0;
            this.exceptionIndexTable = null;
        }
        this.compute = i2;
        if (i2 != 0) {
            int argumentsAndReturnSizes = Type.getArgumentsAndReturnSizes(str2) >> 2;
            argumentsAndReturnSizes = (i & 8) != 0 ? argumentsAndReturnSizes - 1 : argumentsAndReturnSizes;
            this.maxLocals = argumentsAndReturnSizes;
            this.currentLocals = argumentsAndReturnSizes;
            Label label = new Label();
            this.firstBasicBlock = label;
            visitLabel(label);
        }
    }

    private void computeAllFrames() {
        int i;
        Handler handler = this.firstHandler;
        while (true) {
            String str = "java/lang/Throwable";
            if (handler == null) {
                break;
            }
            String str2 = handler.f19206e;
            if (str2 != null) {
                str = str2;
            }
            int m14900e = Frame.m14900e(this.symbolTable, str);
            Label m14887d = handler.f19204c.m14887d();
            m14887d.f19209a = (short) (m14887d.f19209a | 2);
            Label m14887d2 = handler.f19203b.m14887d();
            for (Label m14887d3 = handler.f19202a.m14887d(); m14887d3 != m14887d2; m14887d3 = m14887d3.f19216h) {
                m14887d3.f19217i = new Edge(m14900e, m14887d, m14887d3.f19217i);
            }
            handler = handler.f19207f;
        }
        Frame frame = this.firstBasicBlock.f19215g;
        frame.m14895j(this.symbolTable, this.accessFlags, this.descriptor, this.maxLocals);
        frame.m14904a(this);
        Label label = this.firstBasicBlock;
        label.f19218j = Label.f19208k;
        int i2 = 0;
        while (label != Label.f19208k) {
            Label label2 = label.f19218j;
            label.f19218j = null;
            label.f19209a = (short) (label.f19209a | 8);
            int m14899f = label.f19215g.m14899f() + label.f19213e;
            if (m14899f > i2) {
                i2 = m14899f;
            }
            for (Edge edge = label.f19217i; edge != null; edge = edge.f19199c) {
                Label m14887d4 = edge.f19198b.m14887d();
                if (label.f19215g.m14898g(this.symbolTable, m14887d4.f19215g, edge.f19197a) && m14887d4.f19218j == null) {
                    m14887d4.f19218j = label2;
                    label2 = m14887d4;
                }
            }
            label = label2;
        }
        for (Label label3 = this.firstBasicBlock; label3 != null; label3 = label3.f19216h) {
            if ((label3.f19209a & 10) == 10) {
                label3.f19215g.m14904a(this);
            }
            if ((label3.f19209a & 8) == 0) {
                Label label4 = label3.f19216h;
                int i3 = label3.f19210b;
                if (label4 == null) {
                    i = this.code.f19174b;
                } else {
                    i = label4.f19210b;
                }
                int i4 = i - 1;
                if (i4 >= i3) {
                    for (int i5 = i3; i5 < i4; i5++) {
                        this.code.f19173a[i5] = 0;
                    }
                    this.code.f19173a[i4] = -65;
                    this.currentFrame[m14874j(i3, 0, 1)] = Frame.m14900e(this.symbolTable, "java/lang/Throwable");
                    m14875i();
                    this.firstHandler = Handler.m14891d(this.firstHandler, label3, label4);
                    i2 = Math.max(i2, 1);
                }
            }
        }
        this.maxStack = i2;
    }

    private void computeMaxStackAndLocal() {
        int i;
        for (Handler handler = this.firstHandler; handler != null; handler = handler.f19207f) {
            Label label = handler.f19204c;
            Label label2 = handler.f19203b;
            for (Label label3 = handler.f19202a; label3 != label2; label3 = label3.f19216h) {
                if ((label3.f19209a & 16) == 0) {
                    label3.f19217i = new Edge(Integer.MAX_VALUE, label, label3.f19217i);
                } else {
                    Edge edge = label3.f19217i.f19199c;
                    edge.f19199c = new Edge(Integer.MAX_VALUE, label, edge.f19199c);
                }
            }
        }
        if (this.hasSubroutines) {
            this.firstBasicBlock.m14886e((short) 1);
            short s = 1;
            for (short s2 = 1; s2 <= s; s2 = (short) (s2 + 1)) {
                for (Label label4 = this.firstBasicBlock; label4 != null; label4 = label4.f19216h) {
                    if ((label4.f19209a & 16) != 0 && label4.f19214f == s2) {
                        Label label5 = label4.f19217i.f19199c.f19198b;
                        if (label5.f19214f == 0) {
                            s = (short) (s + 1);
                            label5.m14886e(s);
                        }
                    }
                }
            }
            for (Label label6 = this.firstBasicBlock; label6 != null; label6 = label6.f19216h) {
                if ((label6.f19209a & 16) != 0) {
                    label6.f19217i.f19199c.f19198b.m14888c(label6);
                }
            }
        }
        Label label7 = this.firstBasicBlock;
        label7.f19218j = Label.f19208k;
        int i2 = this.maxStack;
        while (label7 != Label.f19208k) {
            Label label8 = label7.f19218j;
            short s3 = label7.f19211c;
            int i3 = label7.f19213e + s3;
            if (i3 > i2) {
                i2 = i3;
            }
            Edge edge2 = label7.f19217i;
            if ((label7.f19209a & 16) != 0) {
                edge2 = edge2.f19199c;
            }
            label7 = label8;
            while (edge2 != null) {
                Label label9 = edge2.f19198b;
                if (label9.f19218j == null) {
                    int i4 = edge2.f19197a;
                    if (i4 == Integer.MAX_VALUE) {
                        i = 1;
                    } else {
                        i = i4 + s3;
                    }
                    label9.f19211c = (short) i;
                    label9.f19218j = label7;
                    label7 = label9;
                }
                edge2 = edge2.f19199c;
            }
        }
        this.maxStack = i2;
    }

    private void endCurrentBasicBlockWithNoSuccessor() {
        int i = this.compute;
        if (i == 4) {
            Label label = new Label();
            label.f19215g = new Frame(label);
            ByteVector byteVector = this.code;
            label.m14884g(byteVector.f19173a, byteVector.f19174b);
            this.lastBasicBlock.f19216h = label;
            this.lastBasicBlock = label;
            this.currentBasicBlock = null;
        } else if (i == 1) {
            this.currentBasicBlock.f19213e = (short) this.maxRelativeStackSize;
            this.currentBasicBlock = null;
        }
    }

    private void putFrame() {
        int i;
        char c;
        int[] iArr = this.currentFrame;
        int i2 = iArr[1];
        int i3 = iArr[2];
        int i4 = 0;
        if (this.symbolTable.m14836z() < 50) {
            this.stackMapTableEntries.putShort(this.currentFrame[0]).putShort(i2);
            int i5 = i2 + 3;
            putAbstractTypes(3, i5);
            this.stackMapTableEntries.putShort(i3);
            putAbstractTypes(i5, i3 + i5);
            return;
        }
        if (this.stackMapTableNumberOfEntries == 0) {
            i = this.currentFrame[0];
        } else {
            i = (this.currentFrame[0] - this.previousFrame[0]) - 1;
        }
        int i6 = this.previousFrame[1];
        int i7 = i2 - i6;
        if (i3 == 0) {
            switch (i7) {
                case JseOsLib.EXEC_ERROR /* -3 */:
                case -2:
                case -1:
                    c = 248;
                    break;
                case 0:
                    if (i < 64) {
                        c = 0;
                        break;
                    } else {
                        c = 251;
                        break;
                    }
                case 1:
                case 2:
                case 3:
                    c = 252;
                    break;
                default:
                    c = 255;
                    break;
            }
        } else {
            if (i7 == 0 && i3 == 1) {
                if (i < 63) {
                    c = '@';
                } else {
                    c = 247;
                }
            }
            c = 255;
        }
        if (c != 255) {
            int i8 = 3;
            while (true) {
                if (i4 < i6 && i4 < i2) {
                    if (this.currentFrame[i8] != this.previousFrame[i8]) {
                        c = 255;
                    } else {
                        i8++;
                        i4++;
                    }
                }
            }
        }
        if (c != 0) {
            if (c != '@') {
                if (c != 247) {
                    if (c != 248) {
                        if (c != 251) {
                            if (c != 252) {
                                this.stackMapTableEntries.putByte(255).putShort(i).putShort(i2);
                                int i9 = i2 + 3;
                                putAbstractTypes(3, i9);
                                this.stackMapTableEntries.putShort(i3);
                                putAbstractTypes(i9, i3 + i9);
                                return;
                            }
                            this.stackMapTableEntries.putByte(i7 + 251).putShort(i);
                            putAbstractTypes(i6 + 3, i2 + 3);
                            return;
                        }
                        this.stackMapTableEntries.putByte(251).putShort(i);
                        return;
                    }
                    this.stackMapTableEntries.putByte(i7 + 251).putShort(i);
                    return;
                }
                this.stackMapTableEntries.putByte(247).putShort(i);
                putAbstractTypes(i2 + 3, i2 + 4);
                return;
            }
            this.stackMapTableEntries.putByte(i + 64);
            putAbstractTypes(i2 + 3, i2 + 4);
            return;
        }
        this.stackMapTableEntries.putByte(i);
    }

    private void putFrameType(Object obj) {
        if (obj instanceof Integer) {
            this.stackMapTableEntries.putByte(((Integer) obj).intValue());
        } else if (obj instanceof String) {
            this.stackMapTableEntries.putByte(7).putShort(this.symbolTable.m14859c((String) obj).f19224a);
        } else {
            this.stackMapTableEntries.putByte(8).putShort(((Label) obj).f19210b);
        }
    }

    private void visitSwitchInsn(Label label, Label[] labelArr) {
        Label label2 = this.currentBasicBlock;
        if (label2 != null) {
            int i = this.compute;
            if (i == 4) {
                label2.f19215g.mo14902c(171, 0, null, null);
                addSuccessorToCurrentBasicBlock(0, label);
                Label m14887d = label.m14887d();
                m14887d.f19209a = (short) (m14887d.f19209a | 2);
                for (Label label3 : labelArr) {
                    addSuccessorToCurrentBasicBlock(0, label3);
                    Label m14887d2 = label3.m14887d();
                    m14887d2.f19209a = (short) (m14887d2.f19209a | 2);
                }
            } else if (i == 1) {
                int i2 = this.relativeStackSize - 1;
                this.relativeStackSize = i2;
                addSuccessorToCurrentBasicBlock(i2, label);
                for (Label label4 : labelArr) {
                    addSuccessorToCurrentBasicBlock(this.relativeStackSize, label4);
                }
            }
            endCurrentBasicBlockWithNoSuccessor();
        }
    }

    /* renamed from: a */
    public boolean m14883a(ClassReader classReader, boolean z, boolean z2, int i, int i2, int i3) {
        boolean z3;
        boolean z4;
        if (classReader == this.symbolTable.m14866A() && i == this.descriptorIndex && i2 == this.signatureIndex) {
            if ((this.accessFlags & 131072) != 0) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (z2 == z3) {
                if (this.symbolTable.m14836z() < 49 && (this.accessFlags & 4096) != 0) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                if (z != z4) {
                    return false;
                }
                if (i3 == 0) {
                    if (this.numberOfExceptions != 0) {
                        return false;
                    }
                } else if (classReader.readUnsignedShort(i3) == this.numberOfExceptions) {
                    int i4 = i3 + 2;
                    for (int i5 = 0; i5 < this.numberOfExceptions; i5++) {
                        if (classReader.readUnsignedShort(i4) != this.exceptionIndexTable[i5]) {
                            return false;
                        }
                        i4 += 2;
                    }
                }
                return true;
            }
        }
        return false;
    }

    /* renamed from: b */
    public final void m14882b(Attribute.Set set) {
        set.m14920a(this.firstAttribute);
        set.m14920a(this.firstCodeAttribute);
    }

    /* renamed from: c */
    public int m14881c() {
        int i;
        boolean z;
        String str;
        if (this.sourceOffset != 0) {
            return this.sourceLength + 6;
        }
        int i2 = this.code.f19174b;
        if (i2 > 0) {
            if (i2 <= 65535) {
                this.symbolTable.m14844r("Code");
                i = this.code.f19174b + 16 + Handler.m14893b(this.firstHandler) + 8;
                if (this.stackMapTableEntries != null) {
                    if (this.symbolTable.m14836z() >= 50) {
                        z = true;
                    } else {
                        z = false;
                    }
                    SymbolTable symbolTable = this.symbolTable;
                    if (z) {
                        str = "StackMapTable";
                    } else {
                        str = "StackMap";
                    }
                    symbolTable.m14844r(str);
                    i += this.stackMapTableEntries.f19174b + 8;
                }
                if (this.lineNumberTable != null) {
                    this.symbolTable.m14844r("LineNumberTable");
                    i += this.lineNumberTable.f19174b + 8;
                }
                if (this.localVariableTable != null) {
                    this.symbolTable.m14844r("LocalVariableTable");
                    i += this.localVariableTable.f19174b + 8;
                }
                if (this.localVariableTypeTable != null) {
                    this.symbolTable.m14844r("LocalVariableTypeTable");
                    i += this.localVariableTypeTable.f19174b + 8;
                }
                AnnotationWriter annotationWriter = this.lastCodeRuntimeVisibleTypeAnnotation;
                if (annotationWriter != null) {
                    i += annotationWriter.m14935a("RuntimeVisibleTypeAnnotations");
                }
                AnnotationWriter annotationWriter2 = this.lastCodeRuntimeInvisibleTypeAnnotation;
                if (annotationWriter2 != null) {
                    i += annotationWriter2.m14935a("RuntimeInvisibleTypeAnnotations");
                }
                Attribute attribute = this.firstCodeAttribute;
                if (attribute != null) {
                    SymbolTable symbolTable2 = this.symbolTable;
                    ByteVector byteVector = this.code;
                    i += attribute.m14925c(symbolTable2, byteVector.f19173a, byteVector.f19174b, this.maxStack, this.maxLocals);
                }
            } else {
                throw new MethodTooLargeException(this.symbolTable.m14839w(), this.name, this.descriptor, this.code.f19174b);
            }
        } else {
            i = 8;
        }
        if (this.numberOfExceptions > 0) {
            this.symbolTable.m14844r("Exceptions");
            i += (this.numberOfExceptions * 2) + 8;
        }
        int m14926b = i + Attribute.m14926b(this.symbolTable, this.accessFlags, this.signatureIndex) + AnnotationWriter.m14934b(this.lastRuntimeVisibleAnnotation, this.lastRuntimeInvisibleAnnotation, this.lastRuntimeVisibleTypeAnnotation, this.lastRuntimeInvisibleTypeAnnotation);
        AnnotationWriter[] annotationWriterArr = this.lastRuntimeVisibleParameterAnnotations;
        if (annotationWriterArr != null) {
            int i3 = this.visibleAnnotableParameterCount;
            if (i3 == 0) {
                i3 = annotationWriterArr.length;
            }
            m14926b += AnnotationWriter.m14933c("RuntimeVisibleParameterAnnotations", annotationWriterArr, i3);
        }
        AnnotationWriter[] annotationWriterArr2 = this.lastRuntimeInvisibleParameterAnnotations;
        if (annotationWriterArr2 != null) {
            int i4 = this.invisibleAnnotableParameterCount;
            if (i4 == 0) {
                i4 = annotationWriterArr2.length;
            }
            m14926b += AnnotationWriter.m14933c("RuntimeInvisibleParameterAnnotations", annotationWriterArr2, i4);
        }
        if (this.defaultValue != null) {
            this.symbolTable.m14844r("AnnotationDefault");
            m14926b += this.defaultValue.f19174b + 6;
        }
        if (this.parameters != null) {
            this.symbolTable.m14844r("MethodParameters");
            m14926b += this.parameters.f19174b + 7;
        }
        Attribute attribute2 = this.firstAttribute;
        if (attribute2 != null) {
            return m14926b + attribute2.m14927a(this.symbolTable);
        }
        return m14926b;
    }

    /* renamed from: f */
    public void m14878f(ByteVector byteVector) {
        boolean z;
        int i;
        int i2;
        int i3;
        boolean z2;
        String str;
        if (this.symbolTable.m14836z() < 49) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            i = 4096;
        } else {
            i = 0;
        }
        byteVector.putShort((i ^ (-1)) & this.accessFlags).putShort(this.nameIndex).putShort(this.descriptorIndex);
        if (this.sourceOffset != 0) {
            byteVector.putByteArray(this.symbolTable.m14866A().f19175a, this.sourceOffset, this.sourceLength);
            return;
        }
        if (this.code.f19174b > 0) {
            i2 = 1;
        } else {
            i2 = 0;
        }
        if (this.numberOfExceptions > 0) {
            i2++;
        }
        int i4 = this.accessFlags;
        if ((i4 & 4096) != 0 && z) {
            i2++;
        }
        if (this.signatureIndex != 0) {
            i2++;
        }
        if ((131072 & i4) != 0) {
            i2++;
        }
        if (this.lastRuntimeVisibleAnnotation != null) {
            i2++;
        }
        if (this.lastRuntimeInvisibleAnnotation != null) {
            i2++;
        }
        if (this.lastRuntimeVisibleParameterAnnotations != null) {
            i2++;
        }
        if (this.lastRuntimeInvisibleParameterAnnotations != null) {
            i2++;
        }
        if (this.lastRuntimeVisibleTypeAnnotation != null) {
            i2++;
        }
        if (this.lastRuntimeInvisibleTypeAnnotation != null) {
            i2++;
        }
        if (this.defaultValue != null) {
            i2++;
        }
        if (this.parameters != null) {
            i2++;
        }
        Attribute attribute = this.firstAttribute;
        if (attribute != null) {
            i2 += attribute.m14924d();
        }
        byteVector.putShort(i2);
        int i5 = this.code.f19174b;
        if (i5 > 0) {
            int m14893b = i5 + 10 + Handler.m14893b(this.firstHandler);
            ByteVector byteVector2 = this.stackMapTableEntries;
            if (byteVector2 != null) {
                m14893b += byteVector2.f19174b + 8;
                i3 = 1;
            } else {
                i3 = 0;
            }
            ByteVector byteVector3 = this.lineNumberTable;
            if (byteVector3 != null) {
                m14893b += byteVector3.f19174b + 8;
                i3++;
            }
            ByteVector byteVector4 = this.localVariableTable;
            if (byteVector4 != null) {
                m14893b += byteVector4.f19174b + 8;
                i3++;
            }
            ByteVector byteVector5 = this.localVariableTypeTable;
            if (byteVector5 != null) {
                m14893b += byteVector5.f19174b + 8;
                i3++;
            }
            AnnotationWriter annotationWriter = this.lastCodeRuntimeVisibleTypeAnnotation;
            if (annotationWriter != null) {
                m14893b += annotationWriter.m14935a("RuntimeVisibleTypeAnnotations");
                i3++;
            }
            AnnotationWriter annotationWriter2 = this.lastCodeRuntimeInvisibleTypeAnnotation;
            if (annotationWriter2 != null) {
                m14893b += annotationWriter2.m14935a("RuntimeInvisibleTypeAnnotations");
                i3++;
            }
            Attribute attribute2 = this.firstCodeAttribute;
            if (attribute2 != null) {
                SymbolTable symbolTable = this.symbolTable;
                ByteVector byteVector6 = this.code;
                m14893b += attribute2.m14925c(symbolTable, byteVector6.f19173a, byteVector6.f19174b, this.maxStack, this.maxLocals);
                i3 += this.firstCodeAttribute.m14924d();
            }
            ByteVector putInt = byteVector.putShort(this.symbolTable.m14844r("Code")).putInt(m14893b).putShort(this.maxStack).putShort(this.maxLocals).putInt(this.code.f19174b);
            ByteVector byteVector7 = this.code;
            putInt.putByteArray(byteVector7.f19173a, 0, byteVector7.f19174b);
            Handler.m14892c(this.firstHandler, byteVector);
            byteVector.putShort(i3);
            if (this.stackMapTableEntries != null) {
                if (this.symbolTable.m14836z() >= 50) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                SymbolTable symbolTable2 = this.symbolTable;
                if (z2) {
                    str = "StackMapTable";
                } else {
                    str = "StackMap";
                }
                ByteVector putShort = byteVector.putShort(symbolTable2.m14844r(str)).putInt(this.stackMapTableEntries.f19174b + 2).putShort(this.stackMapTableNumberOfEntries);
                ByteVector byteVector8 = this.stackMapTableEntries;
                putShort.putByteArray(byteVector8.f19173a, 0, byteVector8.f19174b);
            }
            if (this.lineNumberTable != null) {
                ByteVector putShort2 = byteVector.putShort(this.symbolTable.m14844r("LineNumberTable")).putInt(this.lineNumberTable.f19174b + 2).putShort(this.lineNumberTableLength);
                ByteVector byteVector9 = this.lineNumberTable;
                putShort2.putByteArray(byteVector9.f19173a, 0, byteVector9.f19174b);
            }
            if (this.localVariableTable != null) {
                ByteVector putShort3 = byteVector.putShort(this.symbolTable.m14844r("LocalVariableTable")).putInt(this.localVariableTable.f19174b + 2).putShort(this.localVariableTableLength);
                ByteVector byteVector10 = this.localVariableTable;
                putShort3.putByteArray(byteVector10.f19173a, 0, byteVector10.f19174b);
            }
            if (this.localVariableTypeTable != null) {
                ByteVector putShort4 = byteVector.putShort(this.symbolTable.m14844r("LocalVariableTypeTable")).putInt(this.localVariableTypeTable.f19174b + 2).putShort(this.localVariableTypeTableLength);
                ByteVector byteVector11 = this.localVariableTypeTable;
                putShort4.putByteArray(byteVector11.f19173a, 0, byteVector11.f19174b);
            }
            AnnotationWriter annotationWriter3 = this.lastCodeRuntimeVisibleTypeAnnotation;
            if (annotationWriter3 != null) {
                annotationWriter3.m14930f(this.symbolTable.m14844r("RuntimeVisibleTypeAnnotations"), byteVector);
            }
            AnnotationWriter annotationWriter4 = this.lastCodeRuntimeInvisibleTypeAnnotation;
            if (annotationWriter4 != null) {
                annotationWriter4.m14930f(this.symbolTable.m14844r("RuntimeInvisibleTypeAnnotations"), byteVector);
            }
            Attribute attribute3 = this.firstCodeAttribute;
            if (attribute3 != null) {
                SymbolTable symbolTable3 = this.symbolTable;
                ByteVector byteVector12 = this.code;
                attribute3.m14921g(symbolTable3, byteVector12.f19173a, byteVector12.f19174b, this.maxStack, this.maxLocals, byteVector);
            }
        }
        if (this.numberOfExceptions > 0) {
            byteVector.putShort(this.symbolTable.m14844r("Exceptions")).putInt((this.numberOfExceptions * 2) + 2).putShort(this.numberOfExceptions);
            for (int i6 : this.exceptionIndexTable) {
                byteVector.putShort(i6);
            }
        }
        Attribute.m14923e(this.symbolTable, this.accessFlags, this.signatureIndex, byteVector);
        AnnotationWriter.m14929g(this.symbolTable, this.lastRuntimeVisibleAnnotation, this.lastRuntimeInvisibleAnnotation, this.lastRuntimeVisibleTypeAnnotation, this.lastRuntimeInvisibleTypeAnnotation, byteVector);
        if (this.lastRuntimeVisibleParameterAnnotations != null) {
            int m14844r = this.symbolTable.m14844r("RuntimeVisibleParameterAnnotations");
            AnnotationWriter[] annotationWriterArr = this.lastRuntimeVisibleParameterAnnotations;
            int i7 = this.visibleAnnotableParameterCount;
            if (i7 == 0) {
                i7 = annotationWriterArr.length;
            }
            AnnotationWriter.m14928h(m14844r, annotationWriterArr, i7, byteVector);
        }
        if (this.lastRuntimeInvisibleParameterAnnotations != null) {
            int m14844r2 = this.symbolTable.m14844r("RuntimeInvisibleParameterAnnotations");
            AnnotationWriter[] annotationWriterArr2 = this.lastRuntimeInvisibleParameterAnnotations;
            int i8 = this.invisibleAnnotableParameterCount;
            if (i8 == 0) {
                i8 = annotationWriterArr2.length;
            }
            AnnotationWriter.m14928h(m14844r2, annotationWriterArr2, i8, byteVector);
        }
        if (this.defaultValue != null) {
            ByteVector putInt2 = byteVector.putShort(this.symbolTable.m14844r("AnnotationDefault")).putInt(this.defaultValue.f19174b);
            ByteVector byteVector13 = this.defaultValue;
            putInt2.putByteArray(byteVector13.f19173a, 0, byteVector13.f19174b);
        }
        if (this.parameters != null) {
            ByteVector putByte = byteVector.putShort(this.symbolTable.m14844r("MethodParameters")).putInt(this.parameters.f19174b + 1).putByte(this.parametersCount);
            ByteVector byteVector14 = this.parameters;
            putByte.putByteArray(byteVector14.f19173a, 0, byteVector14.f19174b);
        }
        Attribute attribute4 = this.firstAttribute;
        if (attribute4 != null) {
            attribute4.m14922f(this.symbolTable, byteVector);
        }
    }

    /* renamed from: g */
    public void m14877g(int i, int i2) {
        this.sourceOffset = i + 6;
        this.sourceLength = i2 - 6;
    }

    /* renamed from: i */
    public void m14875i() {
        if (this.previousFrame != null) {
            if (this.stackMapTableEntries == null) {
                this.stackMapTableEntries = new ByteVector();
            }
            putFrame();
            this.stackMapTableNumberOfEntries++;
        }
        this.previousFrame = this.currentFrame;
        this.currentFrame = null;
    }

    /* renamed from: j */
    public int m14874j(int i, int i2, int i3) {
        int i4 = i2 + 3 + i3;
        int[] iArr = this.currentFrame;
        if (iArr == null || iArr.length < i4) {
            this.currentFrame = new int[i4];
        }
        int[] iArr2 = this.currentFrame;
        iArr2[0] = i;
        iArr2[1] = i2;
        iArr2[2] = i3;
        return 3;
    }

    @Override // net.bytebuddy.jar.asm.MethodVisitor
    public void visitAnnotableParameterCount(int i, boolean z) {
        if (z) {
            this.visibleAnnotableParameterCount = i;
        } else {
            this.invisibleAnnotableParameterCount = i;
        }
    }

    @Override // net.bytebuddy.jar.asm.MethodVisitor
    public AnnotationVisitor visitAnnotation(String str, boolean z) {
        if (z) {
            AnnotationWriter m14931e = AnnotationWriter.m14931e(this.symbolTable, str, this.lastRuntimeVisibleAnnotation);
            this.lastRuntimeVisibleAnnotation = m14931e;
            return m14931e;
        }
        AnnotationWriter m14931e2 = AnnotationWriter.m14931e(this.symbolTable, str, this.lastRuntimeInvisibleAnnotation);
        this.lastRuntimeInvisibleAnnotation = m14931e2;
        return m14931e2;
    }

    @Override // net.bytebuddy.jar.asm.MethodVisitor
    public AnnotationVisitor visitAnnotationDefault() {
        ByteVector byteVector = new ByteVector();
        this.defaultValue = byteVector;
        return new AnnotationWriter(this.symbolTable, false, byteVector, null);
    }

    @Override // net.bytebuddy.jar.asm.MethodVisitor
    public void visitFieldInsn(int i, String str, String str2, String str3) {
        int i2;
        int i3;
        this.lastBytecodeOffset = this.code.f19174b;
        Symbol m14856f = this.symbolTable.m14856f(str, str2, str3);
        this.code.m14915d(i, m14856f.f19224a);
        Label label = this.currentBasicBlock;
        if (label != null) {
            int i4 = this.compute;
            int i5 = 0;
            if (i4 != 4 && i4 != 3) {
                char charAt = str3.charAt(0);
                int i6 = 1;
                int i7 = -2;
                switch (i) {
                    case 178:
                        i2 = this.relativeStackSize + ((charAt == 'D' || charAt == 'J') ? 2 : 2);
                        break;
                    case 179:
                        i3 = this.relativeStackSize;
                        if (charAt != 'D' && charAt != 'J') {
                            i7 = -1;
                        }
                        i2 = i3 + i7;
                        break;
                    case 180:
                        i2 = this.relativeStackSize + ((charAt == 'D' || charAt == 'J') ? 1 : 1);
                        break;
                    default:
                        i3 = this.relativeStackSize;
                        if (charAt == 'D' || charAt == 'J') {
                            i7 = -3;
                        }
                        i2 = i3 + i7;
                        break;
                }
                if (i2 > this.maxRelativeStackSize) {
                    this.maxRelativeStackSize = i2;
                }
                this.relativeStackSize = i2;
                return;
            }
            label.f19215g.mo14902c(i, 0, m14856f, this.symbolTable);
        }
    }

    @Override // net.bytebuddy.jar.asm.MethodVisitor
    public void visitIincInsn(int i, int i2) {
        int i3;
        int i4;
        ByteVector byteVector = this.code;
        this.lastBytecodeOffset = byteVector.f19174b;
        if (i <= 255 && i2 <= 127 && i2 >= -128) {
            byteVector.putByte(132).m14917b(i, i2);
        } else {
            byteVector.putByte(196).m14915d(132, i).putShort(i2);
        }
        Label label = this.currentBasicBlock;
        if (label != null && ((i4 = this.compute) == 4 || i4 == 3)) {
            label.f19215g.mo14902c(132, i, null, null);
        }
        if (this.compute != 0 && (i3 = i + 1) > this.maxLocals) {
            this.maxLocals = i3;
        }
    }

    @Override // net.bytebuddy.jar.asm.MethodVisitor
    public void visitInsn(int i) {
        ByteVector byteVector = this.code;
        this.lastBytecodeOffset = byteVector.f19174b;
        byteVector.putByte(i);
        Label label = this.currentBasicBlock;
        if (label != null) {
            int i2 = this.compute;
            if (i2 != 4 && i2 != 3) {
                int i3 = this.relativeStackSize + STACK_SIZE_DELTA[i];
                if (i3 > this.maxRelativeStackSize) {
                    this.maxRelativeStackSize = i3;
                }
                this.relativeStackSize = i3;
            } else {
                label.f19215g.mo14902c(i, 0, null, null);
            }
            if ((i >= 172 && i <= 177) || i == 191) {
                endCurrentBasicBlockWithNoSuccessor();
            }
        }
    }

    @Override // net.bytebuddy.jar.asm.MethodVisitor
    public void visitIntInsn(int i, int i2) {
        ByteVector byteVector = this.code;
        this.lastBytecodeOffset = byteVector.f19174b;
        if (i == 17) {
            byteVector.m14915d(i, i2);
        } else {
            byteVector.m14917b(i, i2);
        }
        Label label = this.currentBasicBlock;
        if (label != null) {
            int i3 = this.compute;
            if (i3 != 4 && i3 != 3) {
                if (i != 188) {
                    int i4 = this.relativeStackSize + 1;
                    if (i4 > this.maxRelativeStackSize) {
                        this.maxRelativeStackSize = i4;
                    }
                    this.relativeStackSize = i4;
                    return;
                }
                return;
            }
            label.f19215g.mo14902c(i, i2, null, null);
        }
    }

    @Override // net.bytebuddy.jar.asm.MethodVisitor
    public void visitInvokeDynamicInsn(String str, String str2, Handle handle, Object... objArr) {
        this.lastBytecodeOffset = this.code.f19174b;
        Symbol m14853i = this.symbolTable.m14853i(str, str2, handle, objArr);
        this.code.m14915d(186, m14853i.f19224a);
        this.code.putShort(0);
        Label label = this.currentBasicBlock;
        if (label != null) {
            int i = this.compute;
            if (i != 4 && i != 3) {
                int m14867a = m14853i.m14867a();
                int i2 = this.relativeStackSize + ((m14867a & 3) - (m14867a >> 2)) + 1;
                if (i2 > this.maxRelativeStackSize) {
                    this.maxRelativeStackSize = i2;
                }
                this.relativeStackSize = i2;
                return;
            }
            label.f19215g.mo14902c(186, 0, m14853i, this.symbolTable);
        }
    }

    @Override // net.bytebuddy.jar.asm.MethodVisitor
    public void visitJumpInsn(int i, Label label) {
        int i2;
        boolean z;
        int i3;
        ByteVector byteVector = this.code;
        int i4 = byteVector.f19174b;
        this.lastBytecodeOffset = i4;
        if (i >= 200) {
            i2 = i - 33;
        } else {
            i2 = i;
        }
        if ((label.f19209a & 4) != 0 && label.f19210b - i4 < -32768) {
            if (i2 == 167) {
                byteVector.putByte(HttpStatus.SC_OK);
            } else if (i2 == 168) {
                byteVector.putByte(HttpStatus.SC_CREATED);
            } else {
                if (i2 >= 198) {
                    i3 = i2 ^ 1;
                } else {
                    i3 = ((i2 + 1) ^ 1) - 1;
                }
                byteVector.putByte(i3);
                this.code.putShort(8);
                this.code.putByte(220);
                this.hasAsmInstructions = true;
                z = true;
                ByteVector byteVector2 = this.code;
                label.m14885f(byteVector2, byteVector2.f19174b - 1, true);
            }
            z = false;
            ByteVector byteVector22 = this.code;
            label.m14885f(byteVector22, byteVector22.f19174b - 1, true);
        } else {
            if (i2 != i) {
                byteVector.putByte(i);
                ByteVector byteVector3 = this.code;
                label.m14885f(byteVector3, byteVector3.f19174b - 1, true);
            } else {
                byteVector.putByte(i2);
                ByteVector byteVector4 = this.code;
                label.m14885f(byteVector4, byteVector4.f19174b - 1, false);
            }
            z = false;
        }
        Label label2 = this.currentBasicBlock;
        if (label2 != null) {
            int i5 = this.compute;
            Label label3 = null;
            if (i5 == 4) {
                label2.f19215g.mo14902c(i2, 0, null, null);
                Label m14887d = label.m14887d();
                m14887d.f19209a = (short) (m14887d.f19209a | 2);
                addSuccessorToCurrentBasicBlock(0, label);
                if (i2 != 167) {
                    label3 = new Label();
                }
            } else if (i5 == 3) {
                label2.f19215g.mo14902c(i2, 0, null, null);
            } else if (i5 == 2) {
                this.relativeStackSize += STACK_SIZE_DELTA[i2];
            } else if (i2 == 168) {
                short s = label.f19209a;
                if ((s & 32) == 0) {
                    label.f19209a = (short) (s | 32);
                    this.hasSubroutines = true;
                }
                label2.f19209a = (short) (label2.f19209a | 16);
                addSuccessorToCurrentBasicBlock(this.relativeStackSize + 1, label);
                label3 = new Label();
            } else {
                int i6 = this.relativeStackSize + STACK_SIZE_DELTA[i2];
                this.relativeStackSize = i6;
                addSuccessorToCurrentBasicBlock(i6, label);
            }
            if (label3 != null) {
                if (z) {
                    label3.f19209a = (short) (label3.f19209a | 2);
                }
                visitLabel(label3);
            }
            if (i2 == 167) {
                endCurrentBasicBlockWithNoSuccessor();
            }
        }
    }

    @Override // net.bytebuddy.jar.asm.MethodVisitor
    public void visitLabel(Label label) {
        boolean z = this.hasAsmInstructions;
        ByteVector byteVector = this.code;
        this.hasAsmInstructions = z | label.m14884g(byteVector.f19173a, byteVector.f19174b);
        short s = label.f19209a;
        if ((s & 1) != 0) {
            return;
        }
        int i = this.compute;
        if (i == 4) {
            Label label2 = this.currentBasicBlock;
            if (label2 != null) {
                if (label.f19210b == label2.f19210b) {
                    label2.f19209a = (short) ((s & 2) | label2.f19209a);
                    label.f19215g = label2.f19215g;
                    return;
                }
                addSuccessorToCurrentBasicBlock(0, label);
            }
            Label label3 = this.lastBasicBlock;
            if (label3 != null) {
                if (label.f19210b == label3.f19210b) {
                    label3.f19209a = (short) (label3.f19209a | (label.f19209a & 2));
                    label.f19215g = label3.f19215g;
                    this.currentBasicBlock = label3;
                    return;
                }
                label3.f19216h = label;
            }
            this.lastBasicBlock = label;
            this.currentBasicBlock = label;
            label.f19215g = new Frame(label);
        } else if (i == 3) {
            Label label4 = this.currentBasicBlock;
            if (label4 == null) {
                this.currentBasicBlock = label;
            } else {
                label4.f19215g.f19201a = label;
            }
        } else if (i == 1) {
            Label label5 = this.currentBasicBlock;
            if (label5 != null) {
                label5.f19213e = (short) this.maxRelativeStackSize;
                addSuccessorToCurrentBasicBlock(this.relativeStackSize, label);
            }
            this.currentBasicBlock = label;
            this.relativeStackSize = 0;
            this.maxRelativeStackSize = 0;
            Label label6 = this.lastBasicBlock;
            if (label6 != null) {
                label6.f19216h = label;
            }
            this.lastBasicBlock = label;
        } else if (i == 2 && this.currentBasicBlock == null) {
            this.currentBasicBlock = label;
        }
    }

    @Override // net.bytebuddy.jar.asm.MethodVisitor
    public void visitLdcInsn(Object obj) {
        boolean z;
        char charAt;
        this.lastBytecodeOffset = this.code.f19174b;
        Symbol m14860b = this.symbolTable.m14860b(obj);
        int i = m14860b.f19224a;
        int i2 = m14860b.f19225b;
        int i3 = 1;
        if (i2 != 5 && i2 != 6 && (i2 != 17 || ((charAt = m14860b.f19228e.charAt(0)) != 'J' && charAt != 'D'))) {
            z = false;
        } else {
            z = true;
        }
        if (z) {
            this.code.m14915d(20, i);
        } else if (i >= 256) {
            this.code.m14915d(19, i);
        } else {
            this.code.m14917b(18, i);
        }
        Label label = this.currentBasicBlock;
        if (label != null) {
            int i4 = this.compute;
            if (i4 != 4 && i4 != 3) {
                int i5 = this.relativeStackSize;
                if (z) {
                    i3 = 2;
                }
                int i6 = i5 + i3;
                if (i6 > this.maxRelativeStackSize) {
                    this.maxRelativeStackSize = i6;
                }
                this.relativeStackSize = i6;
                return;
            }
            label.f19215g.mo14902c(18, 0, m14860b, this.symbolTable);
        }
    }

    @Override // net.bytebuddy.jar.asm.MethodVisitor
    public void visitLineNumber(int i, Label label) {
        if (this.lineNumberTable == null) {
            this.lineNumberTable = new ByteVector();
        }
        this.lineNumberTableLength++;
        this.lineNumberTable.putShort(label.f19210b);
        this.lineNumberTable.putShort(i);
    }

    @Override // net.bytebuddy.jar.asm.MethodVisitor
    public AnnotationVisitor visitLocalVariableAnnotation(int i, TypePath typePath, Label[] labelArr, Label[] labelArr2, int[] iArr, String str, boolean z) {
        ByteVector byteVector = new ByteVector();
        byteVector.putByte(i >>> 24).putShort(labelArr.length);
        for (int i2 = 0; i2 < labelArr.length; i2++) {
            byteVector.putShort(labelArr[i2].f19210b).putShort(labelArr2[i2].f19210b - labelArr[i2].f19210b).putShort(iArr[i2]);
        }
        TypePath.m14834a(typePath, byteVector);
        byteVector.putShort(this.symbolTable.m14844r(str)).putShort(0);
        if (z) {
            AnnotationWriter annotationWriter = new AnnotationWriter(this.symbolTable, true, byteVector, this.lastCodeRuntimeVisibleTypeAnnotation);
            this.lastCodeRuntimeVisibleTypeAnnotation = annotationWriter;
            return annotationWriter;
        }
        AnnotationWriter annotationWriter2 = new AnnotationWriter(this.symbolTable, true, byteVector, this.lastCodeRuntimeInvisibleTypeAnnotation);
        this.lastCodeRuntimeInvisibleTypeAnnotation = annotationWriter2;
        return annotationWriter2;
    }

    @Override // net.bytebuddy.jar.asm.MethodVisitor
    public void visitLookupSwitchInsn(Label label, int[] iArr, Label[] labelArr) {
        ByteVector byteVector = this.code;
        this.lastBytecodeOffset = byteVector.f19174b;
        byteVector.putByte(171).putByteArray(null, 0, (4 - (this.code.f19174b % 4)) % 4);
        label.m14885f(this.code, this.lastBytecodeOffset, true);
        this.code.putInt(labelArr.length);
        for (int i = 0; i < labelArr.length; i++) {
            this.code.putInt(iArr[i]);
            labelArr[i].m14885f(this.code, this.lastBytecodeOffset, true);
        }
        visitSwitchInsn(label, labelArr);
    }

    @Override // net.bytebuddy.jar.asm.MethodVisitor
    public void visitMaxs(int i, int i2) {
        int i3 = this.compute;
        if (i3 == 4) {
            computeAllFrames();
        } else if (i3 == 1) {
            computeMaxStackAndLocal();
        } else if (i3 == 2) {
            this.maxStack = this.maxRelativeStackSize;
        } else {
            this.maxStack = i;
            this.maxLocals = i2;
        }
    }

    @Override // net.bytebuddy.jar.asm.MethodVisitor
    public void visitMethodInsn(int i, String str, String str2, String str3, boolean z) {
        int i2;
        this.lastBytecodeOffset = this.code.f19174b;
        Symbol m14849m = this.symbolTable.m14849m(str, str2, str3, z);
        if (i == 185) {
            this.code.m14915d(185, m14849m.f19224a).m14917b(m14849m.m14867a() >> 2, 0);
        } else {
            this.code.m14915d(i, m14849m.f19224a);
        }
        Label label = this.currentBasicBlock;
        if (label != null) {
            int i3 = this.compute;
            if (i3 != 4 && i3 != 3) {
                int m14867a = m14849m.m14867a();
                int i4 = (m14867a & 3) - (m14867a >> 2);
                if (i == 184) {
                    i2 = this.relativeStackSize + i4 + 1;
                } else {
                    i2 = this.relativeStackSize + i4;
                }
                if (i2 > this.maxRelativeStackSize) {
                    this.maxRelativeStackSize = i2;
                }
                this.relativeStackSize = i2;
                return;
            }
            label.f19215g.mo14902c(i, 0, m14849m, this.symbolTable);
        }
    }

    @Override // net.bytebuddy.jar.asm.MethodVisitor
    public void visitMultiANewArrayInsn(String str, int i) {
        this.lastBytecodeOffset = this.code.f19174b;
        Symbol m14859c = this.symbolTable.m14859c(str);
        this.code.m14915d(197, m14859c.f19224a).putByte(i);
        Label label = this.currentBasicBlock;
        if (label != null) {
            int i2 = this.compute;
            if (i2 != 4 && i2 != 3) {
                this.relativeStackSize += 1 - i;
            } else {
                label.f19215g.mo14902c(197, i, m14859c, this.symbolTable);
            }
        }
    }

    @Override // net.bytebuddy.jar.asm.MethodVisitor
    public void visitParameter(String str, int i) {
        int m14844r;
        if (this.parameters == null) {
            this.parameters = new ByteVector();
        }
        this.parametersCount++;
        ByteVector byteVector = this.parameters;
        if (str == null) {
            m14844r = 0;
        } else {
            m14844r = this.symbolTable.m14844r(str);
        }
        byteVector.putShort(m14844r).putShort(i);
    }

    @Override // net.bytebuddy.jar.asm.MethodVisitor
    public AnnotationVisitor visitParameterAnnotation(int i, String str, boolean z) {
        if (z) {
            if (this.lastRuntimeVisibleParameterAnnotations == null) {
                this.lastRuntimeVisibleParameterAnnotations = new AnnotationWriter[Type.getArgumentTypes(this.descriptor).length];
            }
            AnnotationWriter[] annotationWriterArr = this.lastRuntimeVisibleParameterAnnotations;
            AnnotationWriter m14931e = AnnotationWriter.m14931e(this.symbolTable, str, annotationWriterArr[i]);
            annotationWriterArr[i] = m14931e;
            return m14931e;
        }
        if (this.lastRuntimeInvisibleParameterAnnotations == null) {
            this.lastRuntimeInvisibleParameterAnnotations = new AnnotationWriter[Type.getArgumentTypes(this.descriptor).length];
        }
        AnnotationWriter[] annotationWriterArr2 = this.lastRuntimeInvisibleParameterAnnotations;
        AnnotationWriter m14931e2 = AnnotationWriter.m14931e(this.symbolTable, str, annotationWriterArr2[i]);
        annotationWriterArr2[i] = m14931e2;
        return m14931e2;
    }

    @Override // net.bytebuddy.jar.asm.MethodVisitor
    public void visitTableSwitchInsn(int i, int i2, Label label, Label... labelArr) {
        ByteVector byteVector = this.code;
        this.lastBytecodeOffset = byteVector.f19174b;
        byteVector.putByte(170).putByteArray(null, 0, (4 - (this.code.f19174b % 4)) % 4);
        label.m14885f(this.code, this.lastBytecodeOffset, true);
        this.code.putInt(i).putInt(i2);
        for (Label label2 : labelArr) {
            label2.m14885f(this.code, this.lastBytecodeOffset, true);
        }
        visitSwitchInsn(label, labelArr);
    }

    @Override // net.bytebuddy.jar.asm.MethodVisitor
    public AnnotationVisitor visitTryCatchAnnotation(int i, TypePath typePath, String str, boolean z) {
        if (z) {
            AnnotationWriter m14932d = AnnotationWriter.m14932d(this.symbolTable, i, typePath, str, this.lastCodeRuntimeVisibleTypeAnnotation);
            this.lastCodeRuntimeVisibleTypeAnnotation = m14932d;
            return m14932d;
        }
        AnnotationWriter m14932d2 = AnnotationWriter.m14932d(this.symbolTable, i, typePath, str, this.lastCodeRuntimeInvisibleTypeAnnotation);
        this.lastCodeRuntimeInvisibleTypeAnnotation = m14932d2;
        return m14932d2;
    }

    @Override // net.bytebuddy.jar.asm.MethodVisitor
    public void visitTryCatchBlock(Label label, Label label2, Label label3, String str) {
        int i;
        if (str != null) {
            i = this.symbolTable.m14859c(str).f19224a;
        } else {
            i = 0;
        }
        Handler handler = new Handler(label, label2, label3, i, str);
        if (this.firstHandler == null) {
            this.firstHandler = handler;
        } else {
            this.lastHandler.f19207f = handler;
        }
        this.lastHandler = handler;
    }

    @Override // net.bytebuddy.jar.asm.MethodVisitor
    public AnnotationVisitor visitTypeAnnotation(int i, TypePath typePath, String str, boolean z) {
        if (z) {
            AnnotationWriter m14932d = AnnotationWriter.m14932d(this.symbolTable, i, typePath, str, this.lastRuntimeVisibleTypeAnnotation);
            this.lastRuntimeVisibleTypeAnnotation = m14932d;
            return m14932d;
        }
        AnnotationWriter m14932d2 = AnnotationWriter.m14932d(this.symbolTable, i, typePath, str, this.lastRuntimeInvisibleTypeAnnotation);
        this.lastRuntimeInvisibleTypeAnnotation = m14932d2;
        return m14932d2;
    }

    @Override // net.bytebuddy.jar.asm.MethodVisitor
    public void visitTypeInsn(int i, String str) {
        this.lastBytecodeOffset = this.code.f19174b;
        Symbol m14859c = this.symbolTable.m14859c(str);
        this.code.m14915d(i, m14859c.f19224a);
        Label label = this.currentBasicBlock;
        if (label != null) {
            int i2 = this.compute;
            if (i2 != 4 && i2 != 3) {
                if (i == 187) {
                    int i3 = this.relativeStackSize + 1;
                    if (i3 > this.maxRelativeStackSize) {
                        this.maxRelativeStackSize = i3;
                    }
                    this.relativeStackSize = i3;
                    return;
                }
                return;
            }
            label.f19215g.mo14902c(i, this.lastBytecodeOffset, m14859c, this.symbolTable);
        }
    }

    @Override // net.bytebuddy.jar.asm.MethodVisitor
    public void visitVarInsn(int i, int i2) {
        int i3;
        int i4;
        ByteVector byteVector = this.code;
        this.lastBytecodeOffset = byteVector.f19174b;
        if (i2 < 4 && i != 169) {
            if (i < 54) {
                i4 = ((i - 21) << 2) + 26;
            } else {
                i4 = ((i - 54) << 2) + 59;
            }
            byteVector.putByte(i4 + i2);
        } else if (i2 >= 256) {
            byteVector.putByte(196).m14915d(i, i2);
        } else {
            byteVector.m14917b(i, i2);
        }
        Label label = this.currentBasicBlock;
        if (label != null) {
            int i5 = this.compute;
            if (i5 != 4 && i5 != 3) {
                if (i == 169) {
                    label.f19209a = (short) (label.f19209a | 64);
                    label.f19212d = (short) this.relativeStackSize;
                    endCurrentBasicBlockWithNoSuccessor();
                } else {
                    int i6 = this.relativeStackSize + STACK_SIZE_DELTA[i];
                    if (i6 > this.maxRelativeStackSize) {
                        this.maxRelativeStackSize = i6;
                    }
                    this.relativeStackSize = i6;
                }
            } else {
                label.f19215g.mo14902c(i, i2, null, null);
            }
        }
        int i7 = this.compute;
        if (i7 != 0) {
            if (i != 22 && i != 24 && i != 55 && i != 57) {
                i3 = i2 + 1;
            } else {
                i3 = i2 + 2;
            }
            if (i3 > this.maxLocals) {
                this.maxLocals = i3;
            }
        }
        if (i >= 54 && i7 == 4 && this.firstHandler != null) {
            visitLabel(new Label());
        }
    }

    @Override // net.bytebuddy.jar.asm.MethodVisitor
    public void visitAttribute(Attribute attribute) {
        if (attribute.isCodeAttribute()) {
            attribute.f19172a = this.firstCodeAttribute;
            this.firstCodeAttribute = attribute;
            return;
        }
        attribute.f19172a = this.firstAttribute;
        this.firstAttribute = attribute;
    }

    @Override // net.bytebuddy.jar.asm.MethodVisitor
    public AnnotationVisitor visitInsnAnnotation(int i, TypePath typePath, String str, boolean z) {
        if (z) {
            AnnotationWriter m14932d = AnnotationWriter.m14932d(this.symbolTable, (i & (-16776961)) | (this.lastBytecodeOffset << 8), typePath, str, this.lastCodeRuntimeVisibleTypeAnnotation);
            this.lastCodeRuntimeVisibleTypeAnnotation = m14932d;
            return m14932d;
        }
        AnnotationWriter m14932d2 = AnnotationWriter.m14932d(this.symbolTable, (i & (-16776961)) | (this.lastBytecodeOffset << 8), typePath, str, this.lastCodeRuntimeInvisibleTypeAnnotation);
        this.lastCodeRuntimeInvisibleTypeAnnotation = m14932d2;
        return m14932d2;
    }
}
