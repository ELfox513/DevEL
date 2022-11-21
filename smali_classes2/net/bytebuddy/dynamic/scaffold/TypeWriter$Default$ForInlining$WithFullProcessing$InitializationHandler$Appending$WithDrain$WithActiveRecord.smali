.class public Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$InitializationHandler$Appending$WithDrain$WithActiveRecord;
.super Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$InitializationHandler$Appending$WithDrain;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$InitializationHandler$Appending$WithDrain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WithActiveRecord"
.end annotation


# instance fields
.field private final label:Lnet/bytebuddy/jar/asm/Label;


# direct methods
.method public constructor <init>(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;ZZ)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$InitializationHandler$Appending$WithDrain;-><init>(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;ZZ)V

    new-instance p1, Lnet/bytebuddy/jar/asm/Label;

    invoke-direct {p1}, Lnet/bytebuddy/jar/asm/Label;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$InitializationHandler$Appending$WithDrain$WithActiveRecord;->label:Lnet/bytebuddy/jar/asm/Label;

    return-void
.end method


# virtual methods
.method public onAfterComplete(Lnet/bytebuddy/implementation/Implementation$Context;)V
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodVisitor;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$InitializationHandler$Appending$WithDrain$WithActiveRecord;->label:Lnet/bytebuddy/jar/asm/Label;

    invoke-virtual {v0, v1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitLabel(Lnet/bytebuddy/jar/asm/Label;)V

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$InitializationHandler$Appending;->frameWriter:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$InitializationHandler$Appending$FrameWriter;

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodVisitor;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    invoke-interface {v0, v1}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$InitializationHandler$Appending$FrameWriter;->emitFrame(Lnet/bytebuddy/jar/asm/MethodVisitor;)V

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$InitializationHandler$Appending;->record:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record;

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodVisitor;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    invoke-interface {v0, v1, p1}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record;->applyCode(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;)Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Size;

    move-result-object p1

    iget v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$InitializationHandler$Appending;->stackSize:I

    invoke-virtual {p1}, Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Size;->getOperandStackSize()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$InitializationHandler$Appending;->stackSize:I

    iget v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$InitializationHandler$Appending;->localVariableLength:I

    invoke-virtual {p1}, Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Size;->getLocalVariableSize()I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$InitializationHandler$Appending;->localVariableLength:I

    return-void
.end method

.method public visitInsn(I)V
    .locals 2

    const/16 v0, 0xb1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lnet/bytebuddy/jar/asm/MethodVisitor;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/16 v0, 0xa7

    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$InitializationHandler$Appending$WithDrain$WithActiveRecord;->label:Lnet/bytebuddy/jar/asm/Label;

    invoke-virtual {p1, v0, v1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitJumpInsn(ILnet/bytebuddy/jar/asm/Label;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    :goto_0
    return-void
.end method
