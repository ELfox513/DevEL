.class public abstract Lnet/bytebuddy/build/BuildLogger$Adapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/build/BuildLogger;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/build/BuildLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Adapter"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public debug(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public debug(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public error(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public info(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public info(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public isDebugEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isErrorEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isInfoEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isWarnEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public warn(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method
