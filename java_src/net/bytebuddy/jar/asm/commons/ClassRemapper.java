package net.bytebuddy.jar.asm.commons;

import java.util.List;
import net.bytebuddy.jar.asm.AnnotationVisitor;
import net.bytebuddy.jar.asm.Attribute;
import net.bytebuddy.jar.asm.ClassVisitor;
import net.bytebuddy.jar.asm.FieldVisitor;
import net.bytebuddy.jar.asm.MethodVisitor;
import net.bytebuddy.jar.asm.ModuleVisitor;
import net.bytebuddy.jar.asm.Opcodes;
import net.bytebuddy.jar.asm.RecordComponentVisitor;
import net.bytebuddy.jar.asm.TypePath;
/* loaded from: classes.dex */
public class ClassRemapper extends ClassVisitor {
    public String className;
    public final Remapper remapper;

    public ClassRemapper(ClassVisitor classVisitor, Remapper remapper) {
        this(Opcodes.ASM9, classVisitor, remapper);
    }

    @Deprecated
    public AnnotationVisitor createAnnotationRemapper(AnnotationVisitor annotationVisitor) {
        return new AnnotationRemapper(this.api, null, annotationVisitor, this.remapper);
    }

    public FieldVisitor createFieldRemapper(FieldVisitor fieldVisitor) {
        return new FieldRemapper(this.api, fieldVisitor, this.remapper);
    }

    public MethodVisitor createMethodRemapper(MethodVisitor methodVisitor) {
        return new MethodRemapper(this.api, methodVisitor, this.remapper);
    }

    public ModuleVisitor createModuleRemapper(ModuleVisitor moduleVisitor) {
        return new ModuleRemapper(this.api, moduleVisitor, this.remapper);
    }

    public RecordComponentVisitor createRecordComponentRemapper(RecordComponentVisitor recordComponentVisitor) {
        return new RecordComponentRemapper(this.api, recordComponentVisitor, this.remapper);
    }

    @Override // net.bytebuddy.jar.asm.ClassVisitor
    public void visitNestHost(String str) {
        super.visitNestHost(this.remapper.mapType(str));
    }

    @Override // net.bytebuddy.jar.asm.ClassVisitor
    public void visitNestMember(String str) {
        super.visitNestMember(this.remapper.mapType(str));
    }

    @Override // net.bytebuddy.jar.asm.ClassVisitor
    public void visitPermittedSubclass(String str) {
        super.visitPermittedSubclass(this.remapper.mapType(str));
    }

    public ClassRemapper(int i, ClassVisitor classVisitor, Remapper remapper) {
        super(i, classVisitor);
        this.remapper = remapper;
    }

    public AnnotationVisitor createAnnotationRemapper(String str, AnnotationVisitor annotationVisitor) {
        return new AnnotationRemapper(this.api, str, annotationVisitor, this.remapper).m14832a(createAnnotationRemapper(annotationVisitor));
    }

    @Override // net.bytebuddy.jar.asm.ClassVisitor
    public void visit(int i, int i2, String str, String str2, String str3, String[] strArr) {
        String[] mapTypes;
        this.className = str;
        String mapType = this.remapper.mapType(str);
        String mapSignature = this.remapper.mapSignature(str2, false);
        String mapType2 = this.remapper.mapType(str3);
        if (strArr == null) {
            mapTypes = null;
        } else {
            mapTypes = this.remapper.mapTypes(strArr);
        }
        super.visit(i, i2, mapType, mapSignature, mapType2, mapTypes);
    }

    @Override // net.bytebuddy.jar.asm.ClassVisitor
    public AnnotationVisitor visitAnnotation(String str, boolean z) {
        AnnotationVisitor visitAnnotation = super.visitAnnotation(this.remapper.mapDesc(str), z);
        if (visitAnnotation == null) {
            return null;
        }
        return createAnnotationRemapper(str, visitAnnotation);
    }

    @Override // net.bytebuddy.jar.asm.ClassVisitor
    public void visitAttribute(Attribute attribute) {
        if (attribute instanceof ModuleHashesAttribute) {
            List<String> list = ((ModuleHashesAttribute) attribute).modules;
            for (int i = 0; i < list.size(); i++) {
                list.set(i, this.remapper.mapModuleName(list.get(i)));
            }
        }
        super.visitAttribute(attribute);
    }

    @Override // net.bytebuddy.jar.asm.ClassVisitor
    public FieldVisitor visitField(int i, String str, String str2, String str3, Object obj) {
        Object mapValue;
        String mapFieldName = this.remapper.mapFieldName(this.className, str, str2);
        String mapDesc = this.remapper.mapDesc(str2);
        String mapSignature = this.remapper.mapSignature(str3, true);
        if (obj == null) {
            mapValue = null;
        } else {
            mapValue = this.remapper.mapValue(obj);
        }
        FieldVisitor visitField = super.visitField(i, mapFieldName, mapDesc, mapSignature, mapValue);
        if (visitField == null) {
            return null;
        }
        return createFieldRemapper(visitField);
    }

    @Override // net.bytebuddy.jar.asm.ClassVisitor
    public void visitInnerClass(String str, String str2, String str3, int i) {
        String mapType;
        String mapType2 = this.remapper.mapType(str);
        String str4 = null;
        if (str2 == null) {
            mapType = null;
        } else {
            mapType = this.remapper.mapType(str2);
        }
        if (str3 != null) {
            str4 = this.remapper.mapInnerClassName(str, str2, str3);
        }
        super.visitInnerClass(mapType2, mapType, str4, i);
    }

    @Override // net.bytebuddy.jar.asm.ClassVisitor
    public MethodVisitor visitMethod(int i, String str, String str2, String str3, String[] strArr) {
        String[] mapTypes;
        String mapMethodDesc = this.remapper.mapMethodDesc(str2);
        String mapMethodName = this.remapper.mapMethodName(this.className, str, str2);
        String mapSignature = this.remapper.mapSignature(str3, false);
        if (strArr == null) {
            mapTypes = null;
        } else {
            mapTypes = this.remapper.mapTypes(strArr);
        }
        MethodVisitor visitMethod = super.visitMethod(i, mapMethodName, mapMethodDesc, mapSignature, mapTypes);
        if (visitMethod == null) {
            return null;
        }
        return createMethodRemapper(visitMethod);
    }

    @Override // net.bytebuddy.jar.asm.ClassVisitor
    public ModuleVisitor visitModule(String str, int i, String str2) {
        ModuleVisitor visitModule = super.visitModule(this.remapper.mapModuleName(str), i, str2);
        if (visitModule == null) {
            return null;
        }
        return createModuleRemapper(visitModule);
    }

    @Override // net.bytebuddy.jar.asm.ClassVisitor
    public void visitOuterClass(String str, String str2, String str3) {
        String mapMethodName;
        String mapType = this.remapper.mapType(str);
        String str4 = null;
        if (str2 == null) {
            mapMethodName = null;
        } else {
            mapMethodName = this.remapper.mapMethodName(str, str2, str3);
        }
        if (str3 != null) {
            str4 = this.remapper.mapMethodDesc(str3);
        }
        super.visitOuterClass(mapType, mapMethodName, str4);
    }

    @Override // net.bytebuddy.jar.asm.ClassVisitor
    public RecordComponentVisitor visitRecordComponent(String str, String str2, String str3) {
        RecordComponentVisitor visitRecordComponent = super.visitRecordComponent(this.remapper.mapRecordComponentName(this.className, str, str2), this.remapper.mapDesc(str2), this.remapper.mapSignature(str3, true));
        if (visitRecordComponent == null) {
            return null;
        }
        return createRecordComponentRemapper(visitRecordComponent);
    }

    @Override // net.bytebuddy.jar.asm.ClassVisitor
    public AnnotationVisitor visitTypeAnnotation(int i, TypePath typePath, String str, boolean z) {
        AnnotationVisitor visitTypeAnnotation = super.visitTypeAnnotation(i, typePath, this.remapper.mapDesc(str), z);
        if (visitTypeAnnotation == null) {
            return null;
        }
        return createAnnotationRemapper(str, visitTypeAnnotation);
    }
}
