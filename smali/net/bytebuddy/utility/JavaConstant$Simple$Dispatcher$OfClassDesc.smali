.class public interface abstract Lnet/bytebuddy/utility/JavaConstant$Simple$Dispatcher$OfClassDesc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/utility/JavaConstant$Simple$Dispatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/utility/JavaConstant$Simple$Dispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OfClassDesc"
.end annotation

.annotation runtime Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Proxied;
    value = "java.lang.constant.ClassDesc"
.end annotation


# virtual methods
.method public abstract descriptorString(Ljava/lang/Object;)Ljava/lang/String;
    .annotation runtime Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Proxied;
        value = "descriptorString"
    .end annotation
.end method

.method public abstract ofDescriptor(Ljava/lang/String;)Ljava/lang/Object;
    .annotation runtime Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$IsStatic;
    .end annotation

    .annotation runtime Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Proxied;
        value = "ofDescriptor"
    .end annotation
.end method
