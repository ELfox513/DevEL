.class public interface abstract Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$Parameter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Parameter"
.end annotation

.annotation runtime Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Proxied;
    value = "java.lang.reflect.Parameter"
.end annotation


# virtual methods
.method public abstract getModifiers(Ljava/lang/Object;)I
    .annotation runtime Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Proxied;
        value = "getModifiers"
    .end annotation
.end method

.method public abstract getName(Ljava/lang/Object;)Ljava/lang/String;
    .annotation runtime Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Proxied;
        value = "getName"
    .end annotation
.end method

.method public abstract isNamePresent(Ljava/lang/Object;)Z
    .annotation runtime Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Proxied;
        value = "isNamePresent"
    .end annotation
.end method
