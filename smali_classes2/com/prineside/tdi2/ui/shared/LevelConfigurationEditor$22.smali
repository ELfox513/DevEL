.class Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor$22;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->S(Lcom/badlogic/gdx/scenes/scene2d/ui/Table;Lcom/badlogic/gdx/utils/Array;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic o:Lcom/prineside/tdi2/ItemStack;

.field public final synthetic p:Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;Lcom/prineside/tdi2/ItemStack;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor$22;->p:Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;

    iput-object p2, p0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor$22;->o:Lcom/prineside/tdi2/ItemStack;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor$22;Lcom/prineside/tdi2/ItemStack;Lcom/prineside/tdi2/Item;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor$22;->b(Lcom/prineside/tdi2/ItemStack;Lcom/prineside/tdi2/Item;)V

    return-void
.end method

.method private synthetic b(Lcom/prineside/tdi2/ItemStack;Lcom/prineside/tdi2/Item;)V
    .locals 0

    invoke-virtual {p1, p2}, Lcom/prineside/tdi2/ItemStack;->setItem(Lcom/prineside/tdi2/Item;)V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor$22;->p:Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->R(Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;)V

    return-void
.end method


# virtual methods
.method public clicked(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FF)V
    .locals 1

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object p1, p1, Lcom/prineside/tdi2/managers/UiManager;->itemCreationOverlay:Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;

    iget-object p2, p0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor$22;->o:Lcom/prineside/tdi2/ItemStack;

    invoke-virtual {p2}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object p2

    iget-object p3, p0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor$22;->o:Lcom/prineside/tdi2/ItemStack;

    new-instance v0, Lcom/prineside/tdi2/ui/shared/f1;

    invoke-direct {v0, p0, p3}, Lcom/prineside/tdi2/ui/shared/f1;-><init>(Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor$22;Lcom/prineside/tdi2/ItemStack;)V

    const/4 p3, 0x1

    invoke-virtual {p1, p2, v0, p3}, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;->show(Lcom/prineside/tdi2/Item;Lcom/prineside/tdi2/utils/ObjectRetriever;Z)V

    return-void
.end method
