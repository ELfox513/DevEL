.class public interface abstract Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$BindingResolver;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/bind/MethodDelegationBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "BindingResolver"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$BindingResolver$StreamWriting;,
        Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$BindingResolver$Unique;,
        Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$BindingResolver$Default;
    }
.end annotation


# virtual methods
.method public abstract resolve(Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver;Lnet/bytebuddy/description/method/MethodDescription;Ljava/util/List;)Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver;",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            "Ljava/util/List<",
            "Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding;",
            ">;)",
            "Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding;"
        }
    .end annotation
.end method
