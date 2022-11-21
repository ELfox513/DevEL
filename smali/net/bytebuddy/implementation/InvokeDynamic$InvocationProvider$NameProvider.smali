.class public interface abstract Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$NameProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "NameProvider"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$NameProvider$ForExplicitName;,
        Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$NameProvider$ForInterceptedMethod;
    }
.end annotation


# virtual methods
.method public abstract resolve(Lnet/bytebuddy/description/method/MethodDescription;)Ljava/lang/String;
.end method
