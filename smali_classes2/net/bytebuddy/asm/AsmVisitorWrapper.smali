.class public interface abstract Lnet/bytebuddy/asm/AsmVisitorWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/asm/AsmVisitorWrapper$Compound;,
        Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods;,
        Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredFields;,
        Lnet/bytebuddy/asm/AsmVisitorWrapper$AbstractBase;,
        Lnet/bytebuddy/asm/AsmVisitorWrapper$NoOp;
    }
.end annotation


# static fields
.field public static final NO_FLAGS:I


# virtual methods
.method public abstract mergeReader(I)I
.end method

.method public abstract mergeWriter(I)I
.end method

.method public abstract wrap(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/jar/asm/ClassVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/pool/TypePool;Lnet/bytebuddy/description/field/FieldList;Lnet/bytebuddy/description/method/MethodList;II)Lnet/bytebuddy/jar/asm/ClassVisitor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "Lnet/bytebuddy/jar/asm/ClassVisitor;",
            "Lnet/bytebuddy/implementation/Implementation$Context;",
            "Lnet/bytebuddy/pool/TypePool;",
            "Lnet/bytebuddy/description/field/FieldList<",
            "Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;",
            ">;",
            "Lnet/bytebuddy/description/method/MethodList<",
            "*>;II)",
            "Lnet/bytebuddy/jar/asm/ClassVisitor;"
        }
    .end annotation
.end method
