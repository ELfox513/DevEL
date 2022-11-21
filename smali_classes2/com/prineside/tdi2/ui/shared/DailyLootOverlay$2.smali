.class Lcom/prineside/tdi2/ui/shared/DailyLootOverlay$2;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/shared/DailyLootOverlay;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic o:Lcom/prineside/tdi2/managers/DailyQuestManager$DailyLootDayConfig;

.field public final synthetic p:I

.field public final synthetic q:Lcom/prineside/tdi2/ui/shared/DailyLootOverlay;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/shared/DailyLootOverlay;Lcom/prineside/tdi2/managers/DailyQuestManager$DailyLootDayConfig;I)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/shared/DailyLootOverlay$2;->q:Lcom/prineside/tdi2/ui/shared/DailyLootOverlay;

    iput-object p2, p0, Lcom/prineside/tdi2/ui/shared/DailyLootOverlay$2;->o:Lcom/prineside/tdi2/managers/DailyQuestManager$DailyLootDayConfig;

    iput p3, p0, Lcom/prineside/tdi2/ui/shared/DailyLootOverlay$2;->p:I

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public clicked(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FF)V
    .locals 0

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object p1, p1, Lcom/prineside/tdi2/managers/UiManager;->itemDescriptionDialog:Lcom/prineside/tdi2/ui/shared/ItemDescriptionDialog;

    iget-object p2, p0, Lcom/prineside/tdi2/ui/shared/DailyLootOverlay$2;->o:Lcom/prineside/tdi2/managers/DailyQuestManager$DailyLootDayConfig;

    iget-object p2, p2, Lcom/prineside/tdi2/managers/DailyQuestManager$DailyLootDayConfig;->item:Lcom/prineside/tdi2/Item;

    iget p3, p0, Lcom/prineside/tdi2/ui/shared/DailyLootOverlay$2;->p:I

    invoke-virtual {p1, p2, p3}, Lcom/prineside/tdi2/ui/shared/ItemDescriptionDialog;->show(Lcom/prineside/tdi2/Item;I)V

    return-void
.end method
