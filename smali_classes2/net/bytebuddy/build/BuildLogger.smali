.class public interface abstract Lnet/bytebuddy/build/BuildLogger;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/build/BuildLogger$Compound;,
        Lnet/bytebuddy/build/BuildLogger$StreamWriting;,
        Lnet/bytebuddy/build/BuildLogger$Adapter;,
        Lnet/bytebuddy/build/BuildLogger$NoOp;
    }
.end annotation


# virtual methods
.method public abstract debug(Ljava/lang/String;)V
.end method

.method public abstract debug(Ljava/lang/String;Ljava/lang/Throwable;)V
.end method

.method public abstract error(Ljava/lang/String;)V
.end method

.method public abstract error(Ljava/lang/String;Ljava/lang/Throwable;)V
.end method

.method public abstract info(Ljava/lang/String;)V
.end method

.method public abstract info(Ljava/lang/String;Ljava/lang/Throwable;)V
.end method

.method public abstract isDebugEnabled()Z
.end method

.method public abstract isErrorEnabled()Z
.end method

.method public abstract isInfoEnabled()Z
.end method

.method public abstract isWarnEnabled()Z
.end method

.method public abstract warn(Ljava/lang/String;)V
.end method

.method public abstract warn(Ljava/lang/String;Ljava/lang/Throwable;)V
.end method
