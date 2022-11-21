.class public interface abstract Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding;
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
    name = "MethodBinding"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding$Builder;,
        Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding$Illegal;
    }
.end annotation


# virtual methods
.method public abstract getTarget()Lnet/bytebuddy/description/method/MethodDescription;
.end method

.method public abstract getTargetParameterIndex(Ljava/lang/Object;)Ljava/lang/Integer;
    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation
.end method
