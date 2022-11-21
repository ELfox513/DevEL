.class Lcom/prineside/tdi2/items/CaseItem$1;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/ChangeListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/items/CaseItem;->fillItemCreationForm(Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;

.field public final synthetic b:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

.field public final synthetic c:Lcom/prineside/tdi2/items/CaseItem;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/items/CaseItem;Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/items/CaseItem$1;->c:Lcom/prineside/tdi2/items/CaseItem;

    iput-object p2, p0, Lcom/prineside/tdi2/items/CaseItem$1;->a:Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;

    iput-object p3, p0, Lcom/prineside/tdi2/items/CaseItem$1;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public changed(Lcom/badlogic/gdx/scenes/scene2d/utils/ChangeListener$ChangeEvent;Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 3

    iget-object p1, p0, Lcom/prineside/tdi2/items/CaseItem$1;->a:Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;

    sget-object p2, Lcom/prineside/tdi2/Item$D;->F_CASE:Lcom/prineside/tdi2/items/CaseItem$CaseItemFactory;

    iget-object v0, p0, Lcom/prineside/tdi2/items/CaseItem$1;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->getSelected()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/enums/CaseType;

    iget-object v1, p0, Lcom/prineside/tdi2/items/CaseItem$1;->c:Lcom/prineside/tdi2/items/CaseItem;

    iget-boolean v2, v1, Lcom/prineside/tdi2/items/CaseItem;->encrypted:Z

    iget-boolean v1, v1, Lcom/prineside/tdi2/items/CaseItem;->containsPapers:Z

    invoke-virtual {p2, v0, v2, v1}, Lcom/prineside/tdi2/items/CaseItem$CaseItemFactory;->create(Lcom/prineside/tdi2/enums/CaseType;ZZ)Lcom/prineside/tdi2/items/CaseItem;

    move-result-object p2

    iput-object p2, p1, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;->currentItem:Lcom/prineside/tdi2/Item;

    iget-object p1, p0, Lcom/prineside/tdi2/items/CaseItem$1;->a:Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;->updateItemIcon()V

    return-void
.end method
