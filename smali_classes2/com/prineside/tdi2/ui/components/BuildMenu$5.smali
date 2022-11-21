.class Lcom/prineside/tdi2/ui/components/BuildMenu$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/prineside/tdi2/ui/actors/AimStrategySelector$AimStrategySelectorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/components/BuildMenu;-><init>(Lcom/prineside/tdi2/ui/actors/SideMenu;Lcom/prineside/tdi2/GameSystemProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/GameSystemProvider;

.field public final synthetic b:Lcom/prineside/tdi2/ui/components/BuildMenu;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/components/BuildMenu;Lcom/prineside/tdi2/GameSystemProvider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/prineside/tdi2/ui/components/BuildMenu$5;->b:Lcom/prineside/tdi2/ui/components/BuildMenu;

    iput-object p2, p0, Lcom/prineside/tdi2/ui/components/BuildMenu$5;->a:Lcom/prineside/tdi2/GameSystemProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public strategyChanged(Lcom/prineside/tdi2/Tower$AimStrategy;)V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/BuildMenu$5;->a:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->tower:Lcom/prineside/tdi2/systems/TowerSystem;

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/systems/TowerSystem;->setDefaultAimStrategy(Lcom/prineside/tdi2/Tower$AimStrategy;)V

    return-void
.end method
