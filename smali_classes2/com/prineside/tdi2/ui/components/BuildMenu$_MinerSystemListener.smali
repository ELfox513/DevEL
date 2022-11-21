.class Lcom/prineside/tdi2/ui/components/BuildMenu$_MinerSystemListener;
.super Lcom/prineside/tdi2/systems/MinerSystem$MinerSystemListener$MinerSystemListenerAdapter;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/NAGS;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/ui/components/BuildMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "_MinerSystemListener"
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/ui/components/BuildMenu;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/components/BuildMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/components/BuildMenu$_MinerSystemListener;->a:Lcom/prineside/tdi2/ui/components/BuildMenu;

    invoke-direct {p0}, Lcom/prineside/tdi2/systems/MinerSystem$MinerSystemListener$MinerSystemListenerAdapter;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/ui/components/BuildMenu;Lcom/prineside/tdi2/ui/components/BuildMenu$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/ui/components/BuildMenu$_MinerSystemListener;-><init>(Lcom/prineside/tdi2/ui/components/BuildMenu;)V

    return-void
.end method


# virtual methods
.method public minerSold(Lcom/prineside/tdi2/Miner;I)V
    .locals 0

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/BuildMenu$_MinerSystemListener;->a:Lcom/prineside/tdi2/ui/components/BuildMenu;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/components/BuildMenu;->m(Lcom/prineside/tdi2/ui/components/BuildMenu;)V

    return-void
.end method
