.class Lcom/prineside/tdi2/tiles/CoreTile$6;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/tiles/CoreTile;->fillItemCreationForm(Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic o:Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;

.field public final synthetic p:Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;

.field public final synthetic q:Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;

.field public final synthetic r:Lcom/prineside/tdi2/tiles/CoreTile;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/tiles/CoreTile;Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/tiles/CoreTile$6;->r:Lcom/prineside/tdi2/tiles/CoreTile;

    iput-object p2, p0, Lcom/prineside/tdi2/tiles/CoreTile$6;->o:Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;

    iput-object p3, p0, Lcom/prineside/tdi2/tiles/CoreTile$6;->p:Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;

    iput-object p4, p0, Lcom/prineside/tdi2/tiles/CoreTile$6;->q:Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public clicked(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FF)V
    .locals 1

    iget-object p1, p0, Lcom/prineside/tdi2/tiles/CoreTile$6;->o:Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;

    iget-object p2, p0, Lcom/prineside/tdi2/tiles/CoreTile$6;->p:Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;

    invoke-virtual {p1, p2}, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->hasLink(Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;)Z

    move-result p3

    xor-int/lit8 p3, p3, 0x1

    invoke-virtual {p1, p2, p3}, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->setHasLink(Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;Z)V

    iget-object p1, p0, Lcom/prineside/tdi2/tiles/CoreTile$6;->r:Lcom/prineside/tdi2/tiles/CoreTile;

    iget-object p2, p0, Lcom/prineside/tdi2/tiles/CoreTile$6;->q:Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;

    iget p3, p2, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;->customIntA:I

    iget p2, p2, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;->customIntB:I

    iget-object v0, p0, Lcom/prineside/tdi2/tiles/CoreTile$6;->o:Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;

    invoke-virtual {p1, p3, p2, v0}, Lcom/prineside/tdi2/tiles/CoreTile;->setUpgrade(IILcom/prineside/tdi2/tiles/CoreTile$Upgrade;)V

    iget-object p1, p0, Lcom/prineside/tdi2/tiles/CoreTile$6;->q:Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;->updateForm()V

    return-void
.end method
