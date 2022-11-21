.class Lcom/prineside/tdi2/managers/NetworkManager$3$1;
.super Lcom/badlogic/gdx/utils/Timer$Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/managers/NetworkManager$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic q:Lcom/prineside/tdi2/managers/NetworkManager$3;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/managers/NetworkManager$3;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/managers/NetworkManager$3$1;->q:Lcom/prineside/tdi2/managers/NetworkManager$3;

    invoke-direct {p0}, Lcom/badlogic/gdx/utils/Timer$Task;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/managers/NetworkManager$3$1;->q:Lcom/prineside/tdi2/managers/NetworkManager$3;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/NetworkManager$3;->q:Lcom/prineside/tdi2/managers/NetworkManager;

    invoke-static {v0}, Lcom/prineside/tdi2/managers/NetworkManager;->c(Lcom/prineside/tdi2/managers/NetworkManager;)Lcom/esotericsoftware/kryonet/Client;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/managers/NetworkManager$3$1;->q:Lcom/prineside/tdi2/managers/NetworkManager$3;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/NetworkManager$3;->q:Lcom/prineside/tdi2/managers/NetworkManager;

    invoke-static {v0}, Lcom/prineside/tdi2/managers/NetworkManager;->c(Lcom/prineside/tdi2/managers/NetworkManager;)Lcom/esotericsoftware/kryonet/Client;

    move-result-object v0

    invoke-virtual {v0}, Lcom/esotericsoftware/kryonet/Connection;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/managers/NetworkManager$3$1;->q:Lcom/prineside/tdi2/managers/NetworkManager$3;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/NetworkManager$3;->q:Lcom/prineside/tdi2/managers/NetworkManager;

    invoke-static {v0}, Lcom/prineside/tdi2/managers/NetworkManager;->b(Lcom/prineside/tdi2/managers/NetworkManager;)V

    :cond_1
    return-void
.end method
