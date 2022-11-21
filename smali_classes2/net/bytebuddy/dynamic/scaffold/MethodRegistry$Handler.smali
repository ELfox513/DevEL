.class public interface abstract Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Prepareable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/scaffold/MethodRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Handler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler$ForAnnotationValue;,
        Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler$ForImplementation;,
        Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler$Compiled;,
        Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler$ForVisibilityBridge;,
        Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler$ForAbstractMethod;
    }
.end annotation


# virtual methods
.method public abstract compile(Lnet/bytebuddy/implementation/Implementation$Target;)Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler$Compiled;
.end method
