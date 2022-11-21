.class public Lnet/bytebuddy/utility/visitor/LineNumberPrependingMethodVisitor;
.super Lnet/bytebuddy/utility/visitor/ExceptionTableSensitiveMethodVisitor;
.source "SourceFile"


# instance fields
.field private prependLineNumber:Z

.field private final startOfMethod:Lnet/bytebuddy/jar/asm/Label;


# direct methods
.method public constructor <init>(Lnet/bytebuddy/jar/asm/MethodVisitor;)V
    .locals 1

    sget v0, Lnet/bytebuddy/utility/OpenedClassReader;->ASM_API:I

    invoke-direct {p0, v0, p1}, Lnet/bytebuddy/utility/visitor/ExceptionTableSensitiveMethodVisitor;-><init>(ILnet/bytebuddy/jar/asm/MethodVisitor;)V

    new-instance p1, Lnet/bytebuddy/jar/asm/Label;

    invoke-direct {p1}, Lnet/bytebuddy/jar/asm/Label;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/utility/visitor/LineNumberPrependingMethodVisitor;->startOfMethod:Lnet/bytebuddy/jar/asm/Label;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lnet/bytebuddy/utility/visitor/LineNumberPrependingMethodVisitor;->prependLineNumber:Z

    return-void
.end method


# virtual methods
.method public onAfterExceptionTable()V
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/utility/visitor/LineNumberPrependingMethodVisitor;->startOfMethod:Lnet/bytebuddy/jar/asm/Label;

    invoke-super {p0, v0}, Lnet/bytebuddy/utility/visitor/ExceptionTableSensitiveMethodVisitor;->visitLabel(Lnet/bytebuddy/jar/asm/Label;)V

    return-void
.end method

.method public visitLineNumber(ILnet/bytebuddy/jar/asm/Label;)V
    .locals 1

    iget-boolean v0, p0, Lnet/bytebuddy/utility/visitor/LineNumberPrependingMethodVisitor;->prependLineNumber:Z

    if-eqz v0, :cond_0

    iget-object p2, p0, Lnet/bytebuddy/utility/visitor/LineNumberPrependingMethodVisitor;->startOfMethod:Lnet/bytebuddy/jar/asm/Label;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/bytebuddy/utility/visitor/LineNumberPrependingMethodVisitor;->prependLineNumber:Z

    :cond_0
    invoke-super {p0, p1, p2}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitLineNumber(ILnet/bytebuddy/jar/asm/Label;)V

    return-void
.end method
