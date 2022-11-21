.class public interface abstract Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldResolver;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FieldResolver"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldResolver$ForGetterSetterPair;,
        Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldResolver$ForSetter;,
        Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldResolver$ForGetter;,
        Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldResolver$Unresolved;,
        Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldResolver$Factory;
    }
.end annotation


# virtual methods
.method public abstract apply(Lnet/bytebuddy/dynamic/DynamicType$Builder;Lnet/bytebuddy/description/field/FieldDescription;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/MethodAccessorFactory;)Lnet/bytebuddy/dynamic/DynamicType$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder<",
            "*>;",
            "Lnet/bytebuddy/description/field/FieldDescription;",
            "Lnet/bytebuddy/implementation/bytecode/assign/Assigner;",
            "Lnet/bytebuddy/implementation/MethodAccessorFactory;",
            ")",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract getProxyType()Lnet/bytebuddy/description/type/TypeDescription;
.end method

.method public abstract isResolved()Z
.end method
