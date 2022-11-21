.class Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$1;->received(Lcom/esotericsoftware/kryonet/Connection;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/esotericsoftware/kryonet/Connection;

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic d:Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$InvokeMethod;

.field public final synthetic k:Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$1;


# direct methods
.method public constructor <init>(Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$1;Lcom/esotericsoftware/kryonet/Connection;Ljava/lang/Object;Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$InvokeMethod;)V
    .locals 0

    iput-object p1, p0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$1$1;->k:Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$1;

    iput-object p2, p0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$1$1;->a:Lcom/esotericsoftware/kryonet/Connection;

    iput-object p3, p0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$1$1;->b:Ljava/lang/Object;

    iput-object p4, p0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$1$1;->d:Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$InvokeMethod;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$1$1;->k:Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$1;

    iget-object v0, v0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$1;->a:Lcom/esotericsoftware/kryonet/rmi/ObjectSpace;

    iget-object v1, p0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$1$1;->a:Lcom/esotericsoftware/kryonet/Connection;

    iget-object v2, p0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$1$1;->b:Ljava/lang/Object;

    iget-object v3, p0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$1$1;->d:Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$InvokeMethod;

    invoke-virtual {v0, v1, v2, v3}, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace;->invoke(Lcom/esotericsoftware/kryonet/Connection;Ljava/lang/Object;Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$InvokeMethod;)V

    return-void
.end method
