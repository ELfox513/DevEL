.class public interface abstract Lnet/bytebuddy/utility/JavaConstant$Simple$Dispatcher;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/utility/JavaConstant$Simple;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Dispatcher"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/utility/JavaConstant$Simple$Dispatcher$OfDynamicConstantDesc;,
        Lnet/bytebuddy/utility/JavaConstant$Simple$Dispatcher$OfDirectMethodHandleDesc;,
        Lnet/bytebuddy/utility/JavaConstant$Simple$Dispatcher$OfMethodHandleDesc;,
        Lnet/bytebuddy/utility/JavaConstant$Simple$Dispatcher$OfMethodTypeDesc;,
        Lnet/bytebuddy/utility/JavaConstant$Simple$Dispatcher$OfClassDesc;
    }
.end annotation

.annotation runtime Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Proxied;
    value = "java.lang.constant.ConstantDesc"
.end annotation


# virtual methods
.method public abstract isInstance(Ljava/lang/Object;)Z
    .annotation runtime Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Instance;
    .end annotation

    .annotation runtime Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Proxied;
        value = "isInstance"
    .end annotation
.end method

.method public abstract toArray(I)[Ljava/lang/Object;
    .annotation runtime Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Container;
    .end annotation

    .annotation runtime Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Proxied;
        value = "toArray"
    .end annotation
.end method
