.class public interface abstract Lnet/bytebuddy/utility/JavaConstant$Simple$Dispatcher$OfMethodHandleDesc;
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
    name = "OfMethodHandleDesc"
.end annotation

.annotation runtime Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Proxied;
    value = "java.lang.constant.MethodHandleDesc"
.end annotation


# virtual methods
.method public abstract invocationType(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation runtime Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Proxied;
        value = "invocationType"
    .end annotation
.end method

.method public abstract of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Proxied;
            value = "java.lang.constant.DirectMethodHandleDesc$Kind"
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Proxied;
            value = "java.lang.constant.ClassDesc"
        .end annotation
    .end param
    .annotation runtime Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$IsStatic;
    .end annotation

    .annotation runtime Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Proxied;
        value = "of"
    .end annotation
.end method
