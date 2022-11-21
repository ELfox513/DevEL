.class public interface abstract Lnet/bytebuddy/implementation/bind/MethodDelegationBinder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$Processor;,
        Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$TerminationHandler;,
        Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver;,
        Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$BindingResolver;,
        Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding;,
        Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$ParameterBinding;,
        Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodInvoker;,
        Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$Record;
    }
.end annotation


# virtual methods
.method public abstract compile(Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$Record;
.end method
