.class Lcom/prineside/tdi2/ui/components/MinerMenu$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/components/MinerMenu$1;->globalUpgradeButtonConfirmed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/Miner;

.field public final synthetic b:Lcom/prineside/tdi2/ui/components/MinerMenu$1;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/components/MinerMenu$1;Lcom/prineside/tdi2/Miner;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/prineside/tdi2/ui/components/MinerMenu$1$1;->b:Lcom/prineside/tdi2/ui/components/MinerMenu$1;

    iput-object p2, p0, Lcom/prineside/tdi2/ui/components/MinerMenu$1$1;->a:Lcom/prineside/tdi2/Miner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MinerMenu$1$1;->b:Lcom/prineside/tdi2/ui/components/MinerMenu$1;

    iget-object v0, v0, Lcom/prineside/tdi2/ui/components/MinerMenu$1;->a:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->miner:Lcom/prineside/tdi2/systems/MinerSystem;

    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/MinerMenu$1$1;->a:Lcom/prineside/tdi2/Miner;

    iget-object v1, v1, Lcom/prineside/tdi2/Miner;->type:Lcom/prineside/tdi2/enums/MinerType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/systems/MinerSystem;->globalUpgradeMinerAction(Lcom/prineside/tdi2/enums/MinerType;)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MinerMenu$1$1;->b:Lcom/prineside/tdi2/ui/components/MinerMenu$1;

    iget-object v0, v0, Lcom/prineside/tdi2/ui/components/MinerMenu$1;->b:Lcom/prineside/tdi2/ui/components/MinerMenu;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/components/MinerMenu;->c(Lcom/prineside/tdi2/ui/components/MinerMenu;)V

    return-void
.end method
