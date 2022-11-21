.class public interface abstract Lnet/bytebuddy/implementation/bytecode/StackManipulation;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/implementation/bytecode/StackManipulation$Simple;,
        Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;,
        Lnet/bytebuddy/implementation/bytecode/StackManipulation$AbstractBase;,
        Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;,
        Lnet/bytebuddy/implementation/bytecode/StackManipulation$Trivial;,
        Lnet/bytebuddy/implementation/bytecode/StackManipulation$Illegal;
    }
.end annotation


# virtual methods
.method public abstract apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;
.end method

.method public abstract isValid()Z
.end method
