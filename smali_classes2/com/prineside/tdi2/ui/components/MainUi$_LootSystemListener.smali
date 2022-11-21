.class Lcom/prineside/tdi2/ui/components/MainUi$_LootSystemListener;
.super Lcom/prineside/tdi2/systems/LootSystem$LootSystemListener$LootSystemListenerAdapter;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/NAGS;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/ui/components/MainUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "_LootSystemListener"
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/ui/components/MainUi;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/components/MainUi;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/components/MainUi$_LootSystemListener;->a:Lcom/prineside/tdi2/ui/components/MainUi;

    invoke-direct {p0}, Lcom/prineside/tdi2/systems/LootSystem$LootSystemListener$LootSystemListenerAdapter;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/ui/components/MainUi;Lcom/prineside/tdi2/ui/components/MainUi$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/ui/components/MainUi$_LootSystemListener;-><init>(Lcom/prineside/tdi2/ui/components/MainUi;)V

    return-void
.end method


# virtual methods
.method public rewardingAdBecameAvailable()V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MainUi$_LootSystemListener;->a:Lcom/prineside/tdi2/ui/components/MainUi;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/components/MainUi;->e(Lcom/prineside/tdi2/ui/components/MainUi;)V

    return-void
.end method

.method public rewardingAdRegistered()V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MainUi$_LootSystemListener;->a:Lcom/prineside/tdi2/ui/components/MainUi;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/components/MainUi;->e(Lcom/prineside/tdi2/ui/components/MainUi;)V

    return-void
.end method
