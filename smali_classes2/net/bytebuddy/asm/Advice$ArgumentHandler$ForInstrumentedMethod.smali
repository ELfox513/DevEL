.class public interface abstract Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForInstrumentedMethod;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/asm/Advice$ArgumentHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/Advice$ArgumentHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ForInstrumentedMethod"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForInstrumentedMethod$Default;
    }
.end annotation


# virtual methods
.method public abstract bindEnter(Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForAdvice;
.end method

.method public abstract bindExit(Lnet/bytebuddy/description/method/MethodDescription;Z)Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForAdvice;
.end method

.method public abstract getNamedTypes()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isCopyingArguments()Z
.end method

.method public abstract prepare(Lnet/bytebuddy/jar/asm/MethodVisitor;)I
.end method

.method public abstract variable(I)I
.end method
