.class public interface abstract Lnet/bytebuddy/asm/Advice$Dispatcher$SuppressionHandler$Bound;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/Advice$Dispatcher$SuppressionHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Bound"
.end annotation


# virtual methods
.method public abstract onEnd(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForAdvice;Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$ForAdvice;Lnet/bytebuddy/description/type/TypeDefinition;)V
.end method

.method public abstract onEndWithSkip(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForAdvice;Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$ForAdvice;Lnet/bytebuddy/description/type/TypeDefinition;)V
.end method

.method public abstract onPrepare(Lnet/bytebuddy/jar/asm/MethodVisitor;)V
.end method

.method public abstract onStart(Lnet/bytebuddy/jar/asm/MethodVisitor;)V
.end method
