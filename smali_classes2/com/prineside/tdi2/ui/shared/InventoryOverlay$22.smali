.class Lcom/prineside/tdi2/ui/shared/InventoryOverlay$22;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->Q()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic o:Lcom/prineside/tdi2/ui/shared/InventoryOverlay;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/shared/InventoryOverlay;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$22;->o:Lcom/prineside/tdi2/ui/shared/InventoryOverlay;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public clicked(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FF)V
    .locals 0

    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$22;->o:Lcom/prineside/tdi2/ui/shared/InventoryOverlay;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->hide(Z)V

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->screenManager:Lcom/prineside/tdi2/managers/ScreenManager;

    sget-object p2, Lcom/prineside/tdi2/enums/ResearchType;->CRAFTING_QUEUE_SIZE:Lcom/prineside/tdi2/enums/ResearchType;

    invoke-virtual {p1, p2}, Lcom/prineside/tdi2/managers/ScreenManager;->goToResearchesScreen(Lcom/prineside/tdi2/enums/ResearchType;)V

    return-void
.end method
