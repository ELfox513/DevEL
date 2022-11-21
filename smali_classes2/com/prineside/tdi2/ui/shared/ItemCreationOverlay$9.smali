.class Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay$9;
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
.field public final synthetic a:Lcom/prineside/tdi2/tiles/BossTile;

.field public final synthetic b:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

.field public final synthetic c:Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;Lcom/prineside/tdi2/tiles/BossTile;Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay$9;->c:Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;

    iput-object p2, p0, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay$9;->a:Lcom/prineside/tdi2/tiles/BossTile;

    iput-object p3, p0, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay$9;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public changed(Lcom/badlogic/gdx/scenes/scene2d/utils/ChangeListener$ChangeEvent;Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 0

    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay$9;->a:Lcom/prineside/tdi2/tiles/BossTile;

    iget-object p2, p0, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay$9;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    invoke-virtual {p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->getSelected()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/prineside/tdi2/enums/BossTileType;

    invoke-virtual {p1, p2}, Lcom/prineside/tdi2/tiles/BossTile;->setBossTileType(Lcom/prineside/tdi2/enums/BossTileType;)V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay$9;->c:Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;->updateForm()V

    return-void
.end method
