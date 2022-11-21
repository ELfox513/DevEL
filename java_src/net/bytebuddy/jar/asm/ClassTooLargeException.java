package net.bytebuddy.jar.asm;
/* loaded from: classes.dex */
public final class ClassTooLargeException extends IndexOutOfBoundsException {
    private static final long serialVersionUID = 160715609518896765L;
    private final String className;
    private final int constantPoolCount;

    public String getClassName() {
        return this.className;
    }

    public int getConstantPoolCount() {
        return this.constantPoolCount;
    }

    public ClassTooLargeException(String str, int i) {
        super("Class too large: " + str);
        this.className = str;
        this.constantPoolCount = i;
    }
}
