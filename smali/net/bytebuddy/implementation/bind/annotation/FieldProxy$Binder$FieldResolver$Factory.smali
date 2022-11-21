.class public interface abstract Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldResolver$Factory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Factory"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldResolver$Factory$Simplex;,
        Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldResolver$Factory$Duplex;
    }
.end annotation


# virtual methods
.method public abstract resolve(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/field/FieldDescription;)Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldResolver;
.end method
