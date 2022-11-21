.class Lcom/esotericsoftware/kryonet/Listener$QueuedListener$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/esotericsoftware/kryonet/Listener$QueuedListener;->received(Lcom/esotericsoftware/kryonet/Connection;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/esotericsoftware/kryonet/Connection;

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic d:Lcom/esotericsoftware/kryonet/Listener$QueuedListener;


# direct methods
.method public constructor <init>(Lcom/esotericsoftware/kryonet/Listener$QueuedListener;Lcom/esotericsoftware/kryonet/Connection;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/esotericsoftware/kryonet/Listener$QueuedListener$3;->d:Lcom/esotericsoftware/kryonet/Listener$QueuedListener;

    iput-object p2, p0, Lcom/esotericsoftware/kryonet/Listener$QueuedListener$3;->a:Lcom/esotericsoftware/kryonet/Connection;

    iput-object p3, p0, Lcom/esotericsoftware/kryonet/Listener$QueuedListener$3;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/Listener$QueuedListener$3;->d:Lcom/esotericsoftware/kryonet/Listener$QueuedListener;

    iget-object v0, v0, Lcom/esotericsoftware/kryonet/Listener$QueuedListener;->a:Lcom/esotericsoftware/kryonet/Listener;

    iget-object v1, p0, Lcom/esotericsoftware/kryonet/Listener$QueuedListener$3;->a:Lcom/esotericsoftware/kryonet/Connection;

    iget-object v2, p0, Lcom/esotericsoftware/kryonet/Listener$QueuedListener$3;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/esotericsoftware/kryonet/Listener;->received(Lcom/esotericsoftware/kryonet/Connection;Ljava/lang/Object;)V

    return-void
.end method
