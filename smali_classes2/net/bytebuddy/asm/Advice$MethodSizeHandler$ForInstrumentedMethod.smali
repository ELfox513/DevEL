.class public interface abstract Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForInstrumentedMethod;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/asm/Advice$MethodSizeHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/Advice$MethodSizeHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ForInstrumentedMethod"
.end annotation


# virtual methods
.method public abstract bindEnter(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForAdvice;
.end method

.method public abstract bindExit(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForAdvice;
.end method

.method public abstract compoundLocalVariableLength(I)I
.end method

.method public abstract compoundStackSize(I)I
.end method
