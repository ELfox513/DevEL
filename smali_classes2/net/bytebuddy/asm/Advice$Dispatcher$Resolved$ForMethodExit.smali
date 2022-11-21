.class public interface abstract Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodExit;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ForMethodExit"
.end annotation


# virtual methods
.method public abstract getArgumentHandlerFactory()Lnet/bytebuddy/asm/Advice$ArgumentHandler$Factory;
.end method

.method public abstract getThrowable()Lnet/bytebuddy/description/type/TypeDescription;
.end method
