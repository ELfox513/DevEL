.class Lcom/prineside/tdi2/ui/components/MinerMenu$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/components/MinerMenu;-><init>(Lcom/prineside/tdi2/ui/actors/SideMenu;Lcom/prineside/tdi2/GameSystemProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/GameSystemProvider;

.field public final synthetic b:Lcom/prineside/tdi2/ui/components/MinerMenu;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/components/MinerMenu;Lcom/prineside/tdi2/GameSystemProvider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/prineside/tdi2/ui/components/MinerMenu$2;->b:Lcom/prineside/tdi2/ui/components/MinerMenu;

    iput-object p2, p0, Lcom/prineside/tdi2/ui/components/MinerMenu$2;->a:Lcom/prineside/tdi2/GameSystemProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MinerMenu$2;->b:Lcom/prineside/tdi2/ui/components/MinerMenu;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/components/MinerMenu;->d(Lcom/prineside/tdi2/ui/components/MinerMenu;)Lcom/prineside/tdi2/Miner;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/MinerMenu$2;->a:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->miner:Lcom/prineside/tdi2/systems/MinerSystem;

    invoke-virtual {v1, v0}, Lcom/prineside/tdi2/systems/MinerSystem;->sellMinerAction(Lcom/prineside/tdi2/Miner;)V

    :cond_0
    return-void
.end method
