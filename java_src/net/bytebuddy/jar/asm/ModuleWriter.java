package net.bytebuddy.jar.asm;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class ModuleWriter extends ModuleVisitor {
    private final ByteVector exports;
    private int exportsCount;
    private int mainClassIndex;
    private final int moduleFlags;
    private final int moduleNameIndex;
    private final int moduleVersionIndex;
    private final ByteVector opens;
    private int opensCount;
    private int packageCount;
    private final ByteVector packageIndex;
    private final ByteVector provides;
    private int providesCount;
    private final ByteVector requires;
    private int requiresCount;
    private final SymbolTable symbolTable;
    private int usesCount;
    private final ByteVector usesIndex;

    /* renamed from: b */
    public int m14872b() {
        return (this.packageCount > 0 ? 1 : 0) + 1 + (this.mainClassIndex > 0 ? 1 : 0);
    }

    @Override // net.bytebuddy.jar.asm.ModuleVisitor
    public void visitEnd() {
    }

    @Override // net.bytebuddy.jar.asm.ModuleVisitor
    public void visitMainClass(String str) {
        this.mainClassIndex = this.symbolTable.m14859c(str).f19224a;
    }

    public ModuleWriter(SymbolTable symbolTable, int i, int i2, int i3) {
        super(Opcodes.ASM9);
        this.symbolTable = symbolTable;
        this.moduleNameIndex = i;
        this.moduleFlags = i2;
        this.moduleVersionIndex = i3;
        this.requires = new ByteVector();
        this.exports = new ByteVector();
        this.opens = new ByteVector();
        this.usesIndex = new ByteVector();
        this.provides = new ByteVector();
        this.packageIndex = new ByteVector();
    }

    /* renamed from: a */
    public int m14873a() {
        this.symbolTable.m14844r("Module");
        int i = this.requires.f19174b + 22 + this.exports.f19174b + this.opens.f19174b + this.usesIndex.f19174b + this.provides.f19174b;
        if (this.packageCount > 0) {
            this.symbolTable.m14844r("ModulePackages");
            i += this.packageIndex.f19174b + 8;
        }
        if (this.mainClassIndex > 0) {
            this.symbolTable.m14844r("ModuleMainClass");
            return i + 8;
        }
        return i;
    }

    /* renamed from: c */
    public void m14871c(ByteVector byteVector) {
        ByteVector putShort = byteVector.putShort(this.symbolTable.m14844r("Module")).putInt(this.requires.f19174b + 16 + this.exports.f19174b + this.opens.f19174b + this.usesIndex.f19174b + this.provides.f19174b).putShort(this.moduleNameIndex).putShort(this.moduleFlags).putShort(this.moduleVersionIndex).putShort(this.requiresCount);
        ByteVector byteVector2 = this.requires;
        ByteVector putShort2 = putShort.putByteArray(byteVector2.f19173a, 0, byteVector2.f19174b).putShort(this.exportsCount);
        ByteVector byteVector3 = this.exports;
        ByteVector putShort3 = putShort2.putByteArray(byteVector3.f19173a, 0, byteVector3.f19174b).putShort(this.opensCount);
        ByteVector byteVector4 = this.opens;
        ByteVector putShort4 = putShort3.putByteArray(byteVector4.f19173a, 0, byteVector4.f19174b).putShort(this.usesCount);
        ByteVector byteVector5 = this.usesIndex;
        ByteVector putShort5 = putShort4.putByteArray(byteVector5.f19173a, 0, byteVector5.f19174b).putShort(this.providesCount);
        ByteVector byteVector6 = this.provides;
        putShort5.putByteArray(byteVector6.f19173a, 0, byteVector6.f19174b);
        if (this.packageCount > 0) {
            ByteVector putShort6 = byteVector.putShort(this.symbolTable.m14844r("ModulePackages")).putInt(this.packageIndex.f19174b + 2).putShort(this.packageCount);
            ByteVector byteVector7 = this.packageIndex;
            putShort6.putByteArray(byteVector7.f19173a, 0, byteVector7.f19174b);
        }
        if (this.mainClassIndex > 0) {
            byteVector.putShort(this.symbolTable.m14844r("ModuleMainClass")).putInt(2).putShort(this.mainClassIndex);
        }
    }

    @Override // net.bytebuddy.jar.asm.ModuleVisitor
    public void visitExport(String str, int i, String... strArr) {
        this.exports.putShort(this.symbolTable.m14846p(str).f19224a).putShort(i);
        if (strArr == null) {
            this.exports.putShort(0);
        } else {
            this.exports.putShort(strArr.length);
            for (String str2 : strArr) {
                this.exports.putShort(this.symbolTable.m14848n(str2).f19224a);
            }
        }
        this.exportsCount++;
    }

    @Override // net.bytebuddy.jar.asm.ModuleVisitor
    public void visitOpen(String str, int i, String... strArr) {
        this.opens.putShort(this.symbolTable.m14846p(str).f19224a).putShort(i);
        if (strArr == null) {
            this.opens.putShort(0);
        } else {
            this.opens.putShort(strArr.length);
            for (String str2 : strArr) {
                this.opens.putShort(this.symbolTable.m14848n(str2).f19224a);
            }
        }
        this.opensCount++;
    }

    @Override // net.bytebuddy.jar.asm.ModuleVisitor
    public void visitPackage(String str) {
        this.packageIndex.putShort(this.symbolTable.m14846p(str).f19224a);
        this.packageCount++;
    }

    @Override // net.bytebuddy.jar.asm.ModuleVisitor
    public void visitProvide(String str, String... strArr) {
        this.provides.putShort(this.symbolTable.m14859c(str).f19224a);
        this.provides.putShort(strArr.length);
        for (String str2 : strArr) {
            this.provides.putShort(this.symbolTable.m14859c(str2).f19224a);
        }
        this.providesCount++;
    }

    @Override // net.bytebuddy.jar.asm.ModuleVisitor
    public void visitRequire(String str, int i, String str2) {
        int m14844r;
        ByteVector putShort = this.requires.putShort(this.symbolTable.m14848n(str).f19224a).putShort(i);
        if (str2 == null) {
            m14844r = 0;
        } else {
            m14844r = this.symbolTable.m14844r(str2);
        }
        putShort.putShort(m14844r);
        this.requiresCount++;
    }

    @Override // net.bytebuddy.jar.asm.ModuleVisitor
    public void visitUse(String str) {
        this.usesIndex.putShort(this.symbolTable.m14859c(str).f19224a);
        this.usesCount++;
    }
}
