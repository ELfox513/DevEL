.class Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay$39;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/ChangeListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;->updateForm()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

.field public final synthetic b:Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay$39;->b:Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;

    iput-object p2, p0, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay$39;->a:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public changed(Lcom/badlogic/gdx/scenes/scene2d/utils/ChangeListener$ChangeEvent;Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 1

    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay$39;->b:Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;

    sget-object p2, Lcom/prineside/tdi2/Item$D;->F_RESOURCE:Lcom/prineside/tdi2/items/ResourceItem$ResourceItemFactory;

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay$39;->a:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->getSelected()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/enums/ResourceType;

    invoke-virtual {p2, v0}, Lcom/prineside/tdi2/items/ResourceItem$ResourceItemFactory;->create(Lcom/prineside/tdi2/enums/ResourceType;)Lcom/prineside/tdi2/items/ResourceItem;

    move-result-object p2

    iput-object p2, p1, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;->currentItem:Lcom/prineside/tdi2/Item;

    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay$39;->b:Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;->updateForm()V

    return-void
.end method
