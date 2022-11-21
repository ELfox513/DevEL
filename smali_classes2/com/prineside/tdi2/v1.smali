.class public final synthetic Lcom/prineside/tdi2/v1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field public final synthetic a:Ljava/lang/Thread$UncaughtExceptionHandler;

.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Thread$UncaughtExceptionHandler;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/prineside/tdi2/v1;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    iput-boolean p2, p0, Lcom/prineside/tdi2/v1;->b:Z

    return-void
.end method


# virtual methods
.method public final uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/v1;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    iget-boolean v1, p0, Lcom/prineside/tdi2/v1;->b:Z

    invoke-static {v0, v1, p1, p2}, Lcom/prineside/tdi2/Logger;->a(Ljava/lang/Thread$UncaughtExceptionHandler;ZLjava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method
