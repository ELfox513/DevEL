.class final enum Lnet/bytebuddy/implementation/ToStringMethod$ValueConsumer$18;
.super Lnet/bytebuddy/implementation/ToStringMethod$ValueConsumer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/ToStringMethod$ValueConsumer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lnet/bytebuddy/implementation/ToStringMethod$ValueConsumer;-><init>(Ljava/lang/String;ILnet/bytebuddy/implementation/ToStringMethod$1;)V

    return-void
.end method


# virtual methods
.method public apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;
    .locals 12

    const/16 v1, 0xb8

    const-string v2, "java/util/Arrays"

    const-string v3, "toString"

    const-string v4, "([Ljava/lang/Object;)Ljava/lang/String;"

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v7, 0xb6

    const-string v8, "java/lang/StringBuilder"

    const-string v9, "append"

    const-string v10, "(Ljava/lang/String;)Ljava/lang/StringBuilder;"

    const/4 v11, 0x0

    move-object v6, p1

    invoke-virtual/range {v6 .. v11}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    sget-object p1, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;->ZERO:Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    return-object p1
.end method
