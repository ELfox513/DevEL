.class final enum Lnet/bytebuddy/implementation/bytecode/Duplication$1;
.super Lnet/bytebuddy/implementation/bytecode/Duplication;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/bytecode/Duplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;ILnet/bytebuddy/implementation/bytecode/StackSize;I)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lnet/bytebuddy/implementation/bytecode/Duplication;-><init>(Ljava/lang/String;ILnet/bytebuddy/implementation/bytecode/StackSize;ILnet/bytebuddy/implementation/bytecode/Duplication$1;)V

    return-void
.end method


# virtual methods
.method public apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;
    .locals 0

    iget-object p1, p0, Lnet/bytebuddy/implementation/bytecode/Duplication;->size:Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    return-object p1
.end method

.method public flipOver(Lnet/bytebuddy/description/type/TypeDefinition;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    .locals 1

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot flip zero value"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
