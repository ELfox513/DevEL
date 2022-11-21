package net.bytebuddy.utility.visitor;

import com.badlogic.gdx.net.HttpStatus;
import edu.umd.cs.findbugs.annotations.SuppressFBWarnings;
import java.security.AccessController;
import java.security.PrivilegedAction;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import net.bytebuddy.build.AccessControllerPlugin;
import net.bytebuddy.description.method.MethodDescription;
import net.bytebuddy.implementation.bytecode.StackSize;
import net.bytebuddy.jar.asm.Handle;
import net.bytebuddy.jar.asm.Label;
import net.bytebuddy.jar.asm.MethodVisitor;
import net.bytebuddy.jar.asm.Opcodes;
import net.bytebuddy.jar.asm.Type;
import net.bytebuddy.utility.CompoundList;
import net.bytebuddy.utility.OpenedClassReader;
import net.bytebuddy.utility.nullability.MaybeNull;
import net.bytebuddy.utility.privilege.GetSystemPropertyAction;
/* loaded from: classes.dex */
public class StackAwareMethodVisitor extends MethodVisitor {
    private static final boolean ACCESS_CONTROLLER;
    private static final int[] SIZE_CHANGE;
    public static final boolean UNADJUSTED;
    public static final String UNADJUSTED_PROPERTY = "net.bytebuddy.unadjusted";
    private List<StackSize> current;
    private int freeIndex;
    private final Map<Label, List<StackSize>> sizes;

    /* renamed from: net.bytebuddy.utility.visitor.StackAwareMethodVisitor$1 */
    /* loaded from: classes.dex */
    public static /* synthetic */ class C50531 {

        /* renamed from: a */
        public static final /* synthetic */ int[] f19265a;

        static {
            int[] iArr = new int[StackSize.values().length];
            f19265a = iArr;
            try {
                iArr[StackSize.SINGLE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f19265a[StackSize.DOUBLE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    static {
        boolean z;
        int i = 0;
        try {
            Class.forName("java.security.AccessController", false, null);
            ACCESS_CONTROLLER = Boolean.parseBoolean(System.getProperty("net.bytebuddy.securitymanager", "true"));
        } catch (ClassNotFoundException unused) {
            ACCESS_CONTROLLER = false;
        } catch (SecurityException unused2) {
            ACCESS_CONTROLLER = true;
        }
        try {
            z = Boolean.parseBoolean((String) doPrivileged(new GetSystemPropertyAction(UNADJUSTED_PROPERTY)));
        } catch (Exception unused3) {
            z = false;
        }
        UNADJUSTED = z;
        SIZE_CHANGE = new int[HttpStatus.SC_ACCEPTED];
        while (true) {
            int[] iArr = SIZE_CHANGE;
            if (i < iArr.length) {
                iArr[i] = "EFFFFFFFFGGFFFGGFFFEEFGFGFEEEEEEEEEEEEEEEEEEEEDEDEDDDDDCDCDEEEEEEEEEEEEEEEEEEEEBABABBBBDCFFFGGGEDCDCDCDCDCDCDCDCDCDCEEEEDDDDDDDCDCDCEFEFDDEEFFDEDEEEBDDBBDDDDDDCCCCCCCCEEEDDDCDCDEEEEEEEEEEFEEEEEEDDEEDDEE".charAt(i) - 'E';
                i++;
            } else {
                return;
            }
        }
    }

    private void adjustStack(int i) {
        adjustStack(i, 0);
    }

    @AccessControllerPlugin.Enhance
    private static <T> T doPrivileged(PrivilegedAction<T> privilegedAction) {
        return ACCESS_CONTROLLER ? (T) AccessController.doPrivileged(privilegedAction) : privilegedAction.run();
    }

    /* renamed from: of */
    public static MethodVisitor m14749of(MethodVisitor methodVisitor, MethodDescription methodDescription) {
        return UNADJUSTED ? methodVisitor : new StackAwareMethodVisitor(methodVisitor, methodDescription);
    }

    public void drainStack() {
        doDrain(this.current);
    }

    public void register(Label label, List<StackSize> list) {
        this.sizes.put(label, list);
    }

    @Override // net.bytebuddy.jar.asm.MethodVisitor
    @SuppressFBWarnings(justification = "ASM models frames by reference identity.", value = {"RC_REF_COMPARISON_BAD_PRACTICE"})
    public void visitFrame(int i, int i2, @MaybeNull Object[] objArr, int i3, @MaybeNull Object[] objArr2) {
        if (i != -1 && i != 0) {
            if (i != 1 && i != 2 && i != 3) {
                if (i == 4) {
                    this.current.clear();
                    Object obj = objArr2[0];
                    if (obj != Opcodes.LONG && obj != Opcodes.DOUBLE) {
                        this.current.add(StackSize.SINGLE);
                    } else {
                        this.current.add(StackSize.DOUBLE);
                    }
                } else {
                    throw new IllegalStateException("Unknown frame type: " + i);
                }
            } else {
                this.current.clear();
            }
        } else {
            this.current.clear();
            for (int i4 = 0; i4 < i3; i4++) {
                Object obj2 = objArr2[i4];
                if (obj2 != Opcodes.LONG && obj2 != Opcodes.DOUBLE) {
                    this.current.add(StackSize.SINGLE);
                } else {
                    this.current.add(StackSize.DOUBLE);
                }
            }
        }
        super.visitFrame(i, i2, objArr, i3, objArr2);
    }

    @Override // net.bytebuddy.jar.asm.MethodVisitor
    public void visitLineNumber(int i, Label label) {
        super.visitLineNumber(i, label);
    }

    @Override // net.bytebuddy.jar.asm.MethodVisitor
    public void visitLookupSwitchInsn(Label label, int[] iArr, Label[] labelArr) {
        adjustStack(-1);
        ArrayList arrayList = new ArrayList(this.current);
        this.sizes.put(label, arrayList);
        for (Label label2 : labelArr) {
            this.sizes.put(label2, arrayList);
        }
        super.visitLookupSwitchInsn(label, iArr, labelArr);
    }

    @Override // net.bytebuddy.jar.asm.MethodVisitor
    public void visitTableSwitchInsn(int i, int i2, Label label, Label... labelArr) {
        adjustStack(-1);
        ArrayList arrayList = new ArrayList(this.current);
        this.sizes.put(label, arrayList);
        for (Label label2 : labelArr) {
            this.sizes.put(label2, arrayList);
        }
        super.visitTableSwitchInsn(i, i2, label, labelArr);
    }

    public StackAwareMethodVisitor(MethodVisitor methodVisitor, MethodDescription methodDescription) {
        super(OpenedClassReader.ASM_API, methodVisitor);
        this.current = new ArrayList();
        this.sizes = new HashMap();
        this.freeIndex = methodDescription.getStackSize();
    }

    private void adjustStack(int i, int i2) {
        if (i > 2) {
            throw new IllegalStateException("Cannot push multiple values onto the operand stack: " + i);
        } else if (i > 0) {
            int size = this.current.size();
            while (i2 > 0 && size > 0) {
                size--;
                i2 -= this.current.get(size).getSize();
            }
            if (i2 >= 0) {
                this.current.add(size, StackSize.m14978of(i));
                return;
            }
            throw new IllegalStateException("Unexpected offset underflow: " + i2);
        } else if (i2 != 0) {
            throw new IllegalStateException("Cannot specify non-zero offset " + i2 + " for non-incrementing value: " + i);
        } else {
            while (i < 0) {
                if (this.current.isEmpty()) {
                    return;
                }
                List<StackSize> list = this.current;
                i += list.remove(list.size() - 1).getSize();
            }
            if (i == 1) {
                this.current.add(StackSize.SINGLE);
            } else if (i == 0) {
            } else {
                throw new IllegalStateException("Unexpected remainder on the operand stack: " + i);
            }
        }
    }

    public int drainStack(int i, int i2, StackSize stackSize) {
        if (this.current.isEmpty()) {
            return 0;
        }
        List<StackSize> list = this.current;
        int size = list.get(list.size() - 1).getSize() - stackSize.getSize();
        if (this.current.size() == 1 && size == 0) {
            return 0;
        }
        super.visitVarInsn(i, this.freeIndex);
        if (size == 1) {
            super.visitInsn(87);
        } else if (size != 0) {
            throw new IllegalStateException("Unexpected remainder on the operand stack: " + size);
        }
        List<StackSize> list2 = this.current;
        doDrain(list2.subList(0, list2.size() - 1));
        super.visitVarInsn(i2, this.freeIndex);
        return this.freeIndex + stackSize.getSize();
    }

    @Override // net.bytebuddy.jar.asm.MethodVisitor
    public void visitInsn(int i) {
        if (i != 47 && i != 49) {
            if (i != 133) {
                if (i != 144) {
                    if (i != 191) {
                        if (i != 90) {
                            if (i != 91) {
                                if (i != 93) {
                                    if (i != 94) {
                                        switch (i) {
                                            case 135:
                                                break;
                                            case 136:
                                            case 137:
                                                break;
                                            default:
                                                switch (i) {
                                                    case 140:
                                                    case 141:
                                                        break;
                                                    case 142:
                                                        break;
                                                    default:
                                                        switch (i) {
                                                            case 172:
                                                            case 173:
                                                            case 174:
                                                            case 175:
                                                            case 176:
                                                            case 177:
                                                                break;
                                                            default:
                                                                adjustStack(SIZE_CHANGE[i]);
                                                                break;
                                                        }
                                                }
                                        }
                                    }
                                }
                            }
                            int i2 = SIZE_CHANGE[i];
                            adjustStack(i2, i2 + 2);
                        }
                        int i3 = SIZE_CHANGE[i];
                        adjustStack(i3, i3 + 1);
                    }
                    this.current.clear();
                }
                adjustStack(-2);
                adjustStack(1);
            }
            adjustStack(-1);
            adjustStack(2);
        } else {
            adjustStack(-2);
            adjustStack(2);
        }
        super.visitInsn(i);
    }

    @Override // net.bytebuddy.jar.asm.MethodVisitor
    public void visitIntInsn(int i, int i2) {
        adjustStack(SIZE_CHANGE[i]);
        super.visitIntInsn(i, i2);
    }

    @Override // net.bytebuddy.jar.asm.MethodVisitor
    public void visitJumpInsn(int i, Label label) {
        List<StackSize> list;
        adjustStack(SIZE_CHANGE[i]);
        Map<Label, List<StackSize>> map = this.sizes;
        if (i == 168) {
            list = CompoundList.m14777of(this.current, StackSize.SINGLE);
        } else {
            list = this.current;
        }
        map.put(label, new ArrayList(list));
        if (i == 167) {
            this.current.clear();
        }
        super.visitJumpInsn(i, label);
    }

    @Override // net.bytebuddy.jar.asm.MethodVisitor
    public void visitLabel(Label label) {
        List<StackSize> list = this.sizes.get(label);
        if (list != null) {
            this.current = new ArrayList(list);
        }
        super.visitLabel(label);
    }

    @Override // net.bytebuddy.jar.asm.MethodVisitor
    public void visitLdcInsn(Object obj) {
        int i;
        if (!(obj instanceof Long) && !(obj instanceof Double)) {
            i = 1;
        } else {
            i = 2;
        }
        adjustStack(i);
        super.visitLdcInsn(obj);
    }

    @Override // net.bytebuddy.jar.asm.MethodVisitor
    public void visitMultiANewArrayInsn(String str, int i) {
        adjustStack(1 - i);
        super.visitMultiANewArrayInsn(str, i);
    }

    @Override // net.bytebuddy.jar.asm.MethodVisitor
    public void visitTryCatchBlock(Label label, Label label2, Label label3, @MaybeNull String str) {
        this.sizes.put(label3, Collections.singletonList(StackSize.SINGLE));
        super.visitTryCatchBlock(label, label2, label3, str);
    }

    @Override // net.bytebuddy.jar.asm.MethodVisitor
    public void visitTypeInsn(int i, String str) {
        adjustStack(SIZE_CHANGE[i]);
        super.visitTypeInsn(i, str);
    }

    @Override // net.bytebuddy.jar.asm.MethodVisitor
    @SuppressFBWarnings(justification = "No action required on default option.", value = {"SF_SWITCH_NO_DEFAULT"})
    public void visitVarInsn(int i, int i2) {
        if (i != 169) {
            switch (i) {
                case 54:
                case 56:
                case 58:
                    this.freeIndex = Math.max(this.freeIndex, i2 + 1);
                    break;
                case 55:
                case 57:
                    this.freeIndex = Math.max(this.freeIndex, i2 + 2);
                    break;
            }
        } else {
            this.current.clear();
        }
        adjustStack(SIZE_CHANGE[i]);
        super.visitVarInsn(i, i2);
    }

    private void doDrain(List<StackSize> list) {
        ListIterator<StackSize> listIterator = list.listIterator(list.size());
        while (listIterator.hasPrevious()) {
            StackSize previous = listIterator.previous();
            int i = C50531.f19265a[previous.ordinal()];
            if (i != 1) {
                if (i == 2) {
                    super.visitInsn(88);
                } else {
                    throw new IllegalStateException("Unexpected stack size: " + previous);
                }
            } else {
                super.visitInsn(87);
            }
        }
    }

    @Override // net.bytebuddy.jar.asm.MethodVisitor
    public void visitFieldInsn(int i, String str, String str2, String str3) {
        int size = Type.getType(str3).getSize();
        switch (i) {
            case 178:
                adjustStack(size);
                break;
            case 179:
                adjustStack(-size);
                break;
            case 180:
                adjustStack(-1);
                adjustStack(size);
                break;
            case 181:
                adjustStack((-size) - 1);
                break;
            default:
                throw new IllegalStateException("Unexpected opcode: " + i);
        }
        super.visitFieldInsn(i, str, str2, str3);
    }

    @Override // net.bytebuddy.jar.asm.MethodVisitor
    public void visitInvokeDynamicInsn(String str, String str2, Handle handle, Object... objArr) {
        int argumentsAndReturnSizes = Type.getArgumentsAndReturnSizes(str2);
        adjustStack((-(argumentsAndReturnSizes >> 2)) + 1);
        adjustStack(argumentsAndReturnSizes & 3);
        super.visitInvokeDynamicInsn(str, str2, handle, objArr);
    }

    @Override // net.bytebuddy.jar.asm.MethodVisitor
    public void visitMethodInsn(int i, String str, String str2, String str3, boolean z) {
        int i2;
        int argumentsAndReturnSizes = Type.getArgumentsAndReturnSizes(str3);
        int i3 = -(argumentsAndReturnSizes >> 2);
        if (i == 184) {
            i2 = 1;
        } else {
            i2 = 0;
        }
        adjustStack(i3 + i2);
        adjustStack(argumentsAndReturnSizes & 3);
        super.visitMethodInsn(i, str, str2, str3, z);
    }
}
