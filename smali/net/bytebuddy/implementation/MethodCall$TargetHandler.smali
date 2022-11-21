.class public interface abstract Lnet/bytebuddy/implementation/MethodCall$TargetHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/MethodCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TargetHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForMethodCall;,
        Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForMethodParameter;,
        Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForField;,
        Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForValue;,
        Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForConstructingInvocation;,
        Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForSelfOrStaticInvocation;,
        Lnet/bytebuddy/implementation/MethodCall$TargetHandler$Simple;,
        Lnet/bytebuddy/implementation/MethodCall$TargetHandler$Factory;,
        Lnet/bytebuddy/implementation/MethodCall$TargetHandler$Resolved;
    }
.end annotation


# virtual methods
.method public abstract resolve(Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/implementation/MethodCall$TargetHandler$Resolved;
.end method
