package net.bytebuddy.jar.asm;
/* loaded from: classes.dex */
public abstract class ModuleVisitor {
    public final int api;

    /* renamed from: mv */
    public ModuleVisitor f19221mv;

    public ModuleVisitor(int i) {
        this(i, null);
    }

    public ModuleVisitor(int i, ModuleVisitor moduleVisitor) {
        if (i != 589824 && i != 524288 && i != 458752 && i != 393216 && i != 327680 && i != 262144 && i != 17432576) {
            throw new IllegalArgumentException("Unsupported api " + i);
        }
        if (i == 17432576) {
            Constants.m14910a(this);
        }
        this.api = i;
        this.f19221mv = moduleVisitor;
    }

    public void visitEnd() {
        ModuleVisitor moduleVisitor = this.f19221mv;
        if (moduleVisitor != null) {
            moduleVisitor.visitEnd();
        }
    }

    public void visitExport(String str, int i, String... strArr) {
        ModuleVisitor moduleVisitor = this.f19221mv;
        if (moduleVisitor != null) {
            moduleVisitor.visitExport(str, i, strArr);
        }
    }

    public void visitMainClass(String str) {
        ModuleVisitor moduleVisitor = this.f19221mv;
        if (moduleVisitor != null) {
            moduleVisitor.visitMainClass(str);
        }
    }

    public void visitOpen(String str, int i, String... strArr) {
        ModuleVisitor moduleVisitor = this.f19221mv;
        if (moduleVisitor != null) {
            moduleVisitor.visitOpen(str, i, strArr);
        }
    }

    public void visitPackage(String str) {
        ModuleVisitor moduleVisitor = this.f19221mv;
        if (moduleVisitor != null) {
            moduleVisitor.visitPackage(str);
        }
    }

    public void visitProvide(String str, String... strArr) {
        ModuleVisitor moduleVisitor = this.f19221mv;
        if (moduleVisitor != null) {
            moduleVisitor.visitProvide(str, strArr);
        }
    }

    public void visitRequire(String str, int i, String str2) {
        ModuleVisitor moduleVisitor = this.f19221mv;
        if (moduleVisitor != null) {
            moduleVisitor.visitRequire(str, i, str2);
        }
    }

    public void visitUse(String str) {
        ModuleVisitor moduleVisitor = this.f19221mv;
        if (moduleVisitor != null) {
            moduleVisitor.visitUse(str);
        }
    }
}
