.class Lcom/prineside/tdi2/items/GameValueLevelItem$1;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/ChangeListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/items/GameValueLevelItem;->fillItemCreationForm(Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;

.field public final synthetic b:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

.field public final synthetic c:Lcom/prineside/tdi2/items/GameValueLevelItem;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/items/GameValueLevelItem;Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/items/GameValueLevelItem$1;->c:Lcom/prineside/tdi2/items/GameValueLevelItem;

    iput-object p2, p0, Lcom/prineside/tdi2/items/GameValueLevelItem$1;->a:Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;

    iput-object p3, p0, Lcom/prineside/tdi2/items/GameValueLevelItem$1;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public changed(Lcom/badlogic/gdx/scenes/scene2d/utils/ChangeListener$ChangeEvent;Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 4

    iget-object p1, p0, Lcom/prineside/tdi2/items/GameValueLevelItem$1;->a:Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;

    sget-object p2, Lcom/prineside/tdi2/Item$D;->F_GAME_VALUE_LEVEL:Lcom/prineside/tdi2/items/GameValueLevelItem$GameValueLevelItemFactory;

    iget-object v0, p0, Lcom/prineside/tdi2/items/GameValueLevelItem$1;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->getSelected()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/enums/GameValueType;

    iget-object v1, p0, Lcom/prineside/tdi2/items/GameValueLevelItem$1;->c:Lcom/prineside/tdi2/items/GameValueLevelItem;

    iget-wide v2, v1, Lcom/prineside/tdi2/items/GameValueLevelItem;->delta:D

    iget-object v1, v1, Lcom/prineside/tdi2/items/GameValueLevelItem;->levelName:Ljava/lang/String;

    invoke-virtual {p2, v0, v2, v3, v1}, Lcom/prineside/tdi2/items/GameValueLevelItem$GameValueLevelItemFactory;->create(Lcom/prineside/tdi2/enums/GameValueType;DLjava/lang/String;)Lcom/prineside/tdi2/items/GameValueLevelItem;

    move-result-object p2

    iput-object p2, p1, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;->currentItem:Lcom/prineside/tdi2/Item;

    iget-object p1, p0, Lcom/prineside/tdi2/items/GameValueLevelItem$1;->a:Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;->updateItemIcon()V

    return-void
.end method
