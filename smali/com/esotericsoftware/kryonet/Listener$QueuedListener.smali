.class public abstract Lcom/esotericsoftware/kryonet/Listener$QueuedListener;
.super Lcom/esotericsoftware/kryonet/Listener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/esotericsoftware/kryonet/Listener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "QueuedListener"
.end annotation


# instance fields
.field public final a:Lcom/esotericsoftware/kryonet/Listener;


# direct methods
.method public constructor <init>(Lcom/esotericsoftware/kryonet/Listener;)V
    .locals 1

    invoke-direct {p0}, Lcom/esotericsoftware/kryonet/Listener;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/esotericsoftware/kryonet/Listener$QueuedListener;->a:Lcom/esotericsoftware/kryonet/Listener;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "listener cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public connected(Lcom/esotericsoftware/kryonet/Connection;)V
    .locals 1

    new-instance v0, Lcom/esotericsoftware/kryonet/Listener$QueuedListener$1;

    invoke-direct {v0, p0, p1}, Lcom/esotericsoftware/kryonet/Listener$QueuedListener$1;-><init>(Lcom/esotericsoftware/kryonet/Listener$QueuedListener;Lcom/esotericsoftware/kryonet/Connection;)V

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryonet/Listener$QueuedListener;->queue(Ljava/lang/Runnable;)V

    return-void
.end method

.method public disconnected(Lcom/esotericsoftware/kryonet/Connection;)V
    .locals 1

    new-instance v0, Lcom/esotericsoftware/kryonet/Listener$QueuedListener$2;

    invoke-direct {v0, p0, p1}, Lcom/esotericsoftware/kryonet/Listener$QueuedListener$2;-><init>(Lcom/esotericsoftware/kryonet/Listener$QueuedListener;Lcom/esotericsoftware/kryonet/Connection;)V

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryonet/Listener$QueuedListener;->queue(Ljava/lang/Runnable;)V

    return-void
.end method

.method public idle(Lcom/esotericsoftware/kryonet/Connection;)V
    .locals 1

    new-instance v0, Lcom/esotericsoftware/kryonet/Listener$QueuedListener$4;

    invoke-direct {v0, p0, p1}, Lcom/esotericsoftware/kryonet/Listener$QueuedListener$4;-><init>(Lcom/esotericsoftware/kryonet/Listener$QueuedListener;Lcom/esotericsoftware/kryonet/Connection;)V

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryonet/Listener$QueuedListener;->queue(Ljava/lang/Runnable;)V

    return-void
.end method

.method public abstract queue(Ljava/lang/Runnable;)V
.end method

.method public received(Lcom/esotericsoftware/kryonet/Connection;Ljava/lang/Object;)V
    .locals 1

    new-instance v0, Lcom/esotericsoftware/kryonet/Listener$QueuedListener$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/esotericsoftware/kryonet/Listener$QueuedListener$3;-><init>(Lcom/esotericsoftware/kryonet/Listener$QueuedListener;Lcom/esotericsoftware/kryonet/Connection;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryonet/Listener$QueuedListener;->queue(Ljava/lang/Runnable;)V

    return-void
.end method
