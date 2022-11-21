.class public interface abstract Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$ParameterBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/implementation/bytecode/StackManipulation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/bind/MethodDelegationBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ParameterBinding"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$ParameterBinding$Unique;,
        Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$ParameterBinding$Anonymous;,
        Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$ParameterBinding$Illegal;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lnet/bytebuddy/implementation/bytecode/StackManipulation;"
    }
.end annotation


# virtual methods
.method public abstract getIdentificationToken()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method
