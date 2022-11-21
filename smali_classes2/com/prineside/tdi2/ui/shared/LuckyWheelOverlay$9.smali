.class Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$9;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->rebuild()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic o:Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;

.field public final synthetic p:Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$9;->p:Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;

    iput-object p2, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$9;->o:Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public clicked(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FF)V
    .locals 0

    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$9;->o:Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;->q(Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;)Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;

    move-result-object p1

    iget-object p1, p1, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;->item:Lcom/prineside/tdi2/ItemStack;

    if-eqz p1, :cond_0

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object p1, p1, Lcom/prineside/tdi2/managers/UiManager;->itemDescriptionDialog:Lcom/prineside/tdi2/ui/shared/ItemDescriptionDialog;

    iget-object p2, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$9;->o:Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;

    invoke-static {p2}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;->q(Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;)Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;

    move-result-object p2

    iget-object p2, p2, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;->item:Lcom/prineside/tdi2/ItemStack;

    invoke-virtual {p2}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object p2

    iget-object p3, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$9;->o:Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;

    invoke-static {p3}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;->q(Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;)Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;

    move-result-object p3

    iget-object p3, p3, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;->item:Lcom/prineside/tdi2/ItemStack;

    invoke-virtual {p3}, Lcom/prineside/tdi2/ItemStack;->getCount()I

    move-result p3

    invoke-virtual {p1, p2, p3}, Lcom/prineside/tdi2/ui/shared/ItemDescriptionDialog;->show(Lcom/prineside/tdi2/Item;I)V

    :cond_0
    return-void
.end method
