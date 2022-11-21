.class public interface abstract Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ReturnTypeProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ReturnTypeProvider"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ReturnTypeProvider$ForExplicitType;,
        Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ReturnTypeProvider$ForInterceptedMethod;
    }
.end annotation


# virtual methods
.method public abstract resolve(Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/description/type/TypeDescription;
.end method
