.class public interface abstract Lnet/bytebuddy/implementation/MethodDelegation$ImplementationDelegate$Compiled;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/MethodDelegation$ImplementationDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Compiled"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/implementation/MethodDelegation$ImplementationDelegate$Compiled$ForConstruction;,
        Lnet/bytebuddy/implementation/MethodDelegation$ImplementationDelegate$Compiled$ForMethodReturn;,
        Lnet/bytebuddy/implementation/MethodDelegation$ImplementationDelegate$Compiled$ForField;,
        Lnet/bytebuddy/implementation/MethodDelegation$ImplementationDelegate$Compiled$ForStaticCall;
    }
.end annotation


# virtual methods
.method public abstract getRecords()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$Record;",
            ">;"
        }
    .end annotation
.end method

.method public abstract invoke()Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodInvoker;
.end method

.method public abstract prepare(Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;
.end method
