.class Lcom/prineside/tdi2/ui/components/MainUi$_Game_StateSystemListener;
.super Lcom/prineside/tdi2/systems/GameStateSystem$GameStateSystemListener$GameStateSystemListenerAdapter;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/NAGS;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/ui/components/MainUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "_Game_StateSystemListener"
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/ui/components/MainUi;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/components/MainUi;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/components/MainUi$_Game_StateSystemListener;->a:Lcom/prineside/tdi2/ui/components/MainUi;

    invoke-direct {p0}, Lcom/prineside/tdi2/systems/GameStateSystem$GameStateSystemListener$GameStateSystemListenerAdapter;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/ui/components/MainUi;Lcom/prineside/tdi2/ui/components/MainUi$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/ui/components/MainUi$_Game_StateSystemListener;-><init>(Lcom/prineside/tdi2/ui/components/MainUi;)V

    return-void
.end method


# virtual methods
.method public gameSpeedChanged()V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MainUi$_Game_StateSystemListener;->a:Lcom/prineside/tdi2/ui/components/MainUi;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ui/components/MainUi;->updateGameSpeedButton()V

    return-void
.end method

.method public healthChanged(I)V
    .locals 0

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/MainUi$_Game_StateSystemListener;->a:Lcom/prineside/tdi2/ui/components/MainUi;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ui/components/MainUi;->updateHealth()V

    return-void
.end method

.method public moneyChanged(IZ)V
    .locals 0

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/MainUi$_Game_StateSystemListener;->a:Lcom/prineside/tdi2/ui/components/MainUi;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ui/components/MainUi;->updateMoney()V

    return-void
.end method

.method public scoreChanged(JZLcom/prineside/tdi2/enums/StatisticsType;)V
    .locals 0

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/MainUi$_Game_StateSystemListener;->a:Lcom/prineside/tdi2/ui/components/MainUi;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ui/components/MainUi;->updateScore()V

    return-void
.end method
