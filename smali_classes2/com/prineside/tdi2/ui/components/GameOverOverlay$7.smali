.class Lcom/prineside/tdi2/ui/components/GameOverOverlay$7;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/components/GameOverOverlay;->show(Lcom/badlogic/gdx/utils/Array;Lcom/prineside/tdi2/MapPrestigeConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic o:Lcom/prineside/tdi2/ui/components/GameOverOverlay$GameOverItemStack;

.field public final synthetic p:Lcom/prineside/tdi2/ui/components/GameOverOverlay;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/components/GameOverOverlay;Lcom/prineside/tdi2/ui/components/GameOverOverlay$GameOverItemStack;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/components/GameOverOverlay$7;->p:Lcom/prineside/tdi2/ui/components/GameOverOverlay;

    iput-object p2, p0, Lcom/prineside/tdi2/ui/components/GameOverOverlay$7;->o:Lcom/prineside/tdi2/ui/components/GameOverOverlay$GameOverItemStack;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public clicked(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FF)V
    .locals 0

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object p1, p1, Lcom/prineside/tdi2/managers/UiManager;->itemDescriptionDialog:Lcom/prineside/tdi2/ui/shared/ItemDescriptionDialog;

    iget-object p2, p0, Lcom/prineside/tdi2/ui/components/GameOverOverlay$7;->o:Lcom/prineside/tdi2/ui/components/GameOverOverlay$GameOverItemStack;

    invoke-virtual {p2}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object p2

    iget-object p3, p0, Lcom/prineside/tdi2/ui/components/GameOverOverlay$7;->o:Lcom/prineside/tdi2/ui/components/GameOverOverlay$GameOverItemStack;

    invoke-virtual {p3}, Lcom/prineside/tdi2/ItemStack;->getCount()I

    move-result p3

    invoke-virtual {p1, p2, p3}, Lcom/prineside/tdi2/ui/shared/ItemDescriptionDialog;->show(Lcom/prineside/tdi2/Item;I)V

    return-void
.end method
