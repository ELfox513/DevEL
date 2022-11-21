.class Lcom/esotericsoftware/kryonet/Server$1;
.super Lcom/esotericsoftware/kryonet/Listener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/esotericsoftware/kryonet/Server;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/esotericsoftware/kryonet/Server;


# direct methods
.method public constructor <init>(Lcom/esotericsoftware/kryonet/Server;)V
    .locals 0

    iput-object p1, p0, Lcom/esotericsoftware/kryonet/Server$1;->a:Lcom/esotericsoftware/kryonet/Server;

    invoke-direct {p0}, Lcom/esotericsoftware/kryonet/Listener;-><init>()V

    return-void
.end method


# virtual methods
.method public connected(Lcom/esotericsoftware/kryonet/Connection;)V
    .locals 4

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/Server$1;->a:Lcom/esotericsoftware/kryonet/Server;

    iget-object v0, v0, Lcom/esotericsoftware/kryonet/Server;->u:[Lcom/esotericsoftware/kryonet/Listener;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Lcom/esotericsoftware/kryonet/Listener;->connected(Lcom/esotericsoftware/kryonet/Connection;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public disconnected(Lcom/esotericsoftware/kryonet/Connection;)V
    .locals 4

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/Server$1;->a:Lcom/esotericsoftware/kryonet/Server;

    invoke-virtual {v0, p1}, Lcom/esotericsoftware/kryonet/Server;->d(Lcom/esotericsoftware/kryonet/Connection;)V

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/Server$1;->a:Lcom/esotericsoftware/kryonet/Server;

    iget-object v0, v0, Lcom/esotericsoftware/kryonet/Server;->u:[Lcom/esotericsoftware/kryonet/Listener;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Lcom/esotericsoftware/kryonet/Listener;->disconnected(Lcom/esotericsoftware/kryonet/Connection;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public idle(Lcom/esotericsoftware/kryonet/Connection;)V
    .locals 4

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/Server$1;->a:Lcom/esotericsoftware/kryonet/Server;

    iget-object v0, v0, Lcom/esotericsoftware/kryonet/Server;->u:[Lcom/esotericsoftware/kryonet/Listener;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Lcom/esotericsoftware/kryonet/Listener;->idle(Lcom/esotericsoftware/kryonet/Connection;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public received(Lcom/esotericsoftware/kryonet/Connection;Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/Server$1;->a:Lcom/esotericsoftware/kryonet/Server;

    iget-object v0, v0, Lcom/esotericsoftware/kryonet/Server;->u:[Lcom/esotericsoftware/kryonet/Listener;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3, p1, p2}, Lcom/esotericsoftware/kryonet/Listener;->received(Lcom/esotericsoftware/kryonet/Connection;Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
