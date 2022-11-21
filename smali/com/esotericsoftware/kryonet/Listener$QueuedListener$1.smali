.class Lcom/esotericsoftware/kryonet/Listener$QueuedListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/esotericsoftware/kryonet/Listener$QueuedListener;->connected(Lcom/esotericsoftware/kryonet/Connection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/esotericsoftware/kryonet/Connection;

.field public final synthetic b:Lcom/esotericsoftware/kryonet/Listener$QueuedListener;


# direct methods
.method public constructor <init>(Lcom/esotericsoftware/kryonet/Listener$QueuedListener;Lcom/esotericsoftware/kryonet/Connection;)V
    .locals 0

    iput-object p1, p0, Lcom/esotericsoftware/kryonet/Listener$QueuedListener$1;->b:Lcom/esotericsoftware/kryonet/Listener$QueuedListener;

    iput-object p2, p0, Lcom/esotericsoftware/kryonet/Listener$QueuedListener$1;->a:Lcom/esotericsoftware/kryonet/Connection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/Listener$QueuedListener$1;->b:Lcom/esotericsoftware/kryonet/Listener$QueuedListener;

    iget-object v0, v0, Lcom/esotericsoftware/kryonet/Listener$QueuedListener;->a:Lcom/esotericsoftware/kryonet/Listener;

    iget-object v1, p0, Lcom/esotericsoftware/kryonet/Listener$QueuedListener$1;->a:Lcom/esotericsoftware/kryonet/Connection;

    invoke-virtual {v0, v1}, Lcom/esotericsoftware/kryonet/Listener;->connected(Lcom/esotericsoftware/kryonet/Connection;)V

    return-void
.end method
