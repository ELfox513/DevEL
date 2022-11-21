.class public interface abstract Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$ForInstrumentedMethod;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/asm/Advice$StackMapFrameHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/Advice$StackMapFrameHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ForInstrumentedMethod"
.end annotation


# virtual methods
.method public abstract bindEnter(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$ForAdvice;
.end method

.method public abstract bindExit(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$ForAdvice;
.end method

.method public abstract getReaderHint()I
.end method

.method public abstract injectInitializationFrame(Lnet/bytebuddy/jar/asm/MethodVisitor;)V
.end method

.method public abstract injectPostCompletionFrame(Lnet/bytebuddy/jar/asm/MethodVisitor;)V
.end method

.method public abstract injectStartFrame(Lnet/bytebuddy/jar/asm/MethodVisitor;)V
.end method
