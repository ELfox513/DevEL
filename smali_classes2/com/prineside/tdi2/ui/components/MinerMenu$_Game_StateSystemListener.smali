.class Lcom/prineside/tdi2/ui/components/MinerMenu$_Game_StateSystemListener;
.super Lcom/prineside/tdi2/systems/GameStateSystem$GameStateSystemListener$GameStateSystemListenerAdapter;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/NAGS;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/ui/components/MinerMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "_Game_StateSystemListener"
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/ui/components/MinerMenu;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/components/MinerMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/components/MinerMenu$_Game_StateSystemListener;->a:Lcom/prineside/tdi2/ui/components/MinerMenu;

    invoke-direct {p0}, Lcom/prineside/tdi2/systems/GameStateSystem$GameStateSystemListener$GameStateSystemListenerAdapter;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/ui/components/MinerMenu;Lcom/prineside/tdi2/ui/components/MinerMenu$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/ui/components/MinerMenu$_Game_StateSystemListener;-><init>(Lcom/prineside/tdi2/ui/components/MinerMenu;)V

    return-void
.end method


# virtual methods
.method public moneyChanged(IZ)V
    .locals 0

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/MinerMenu$_Game_StateSystemListener;->a:Lcom/prineside/tdi2/ui/components/MinerMenu;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/components/MinerMenu;->e(Lcom/prineside/tdi2/ui/components/MinerMenu;)V

    return-void
.end method
