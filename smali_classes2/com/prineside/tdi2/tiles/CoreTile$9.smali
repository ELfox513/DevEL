.class Lcom/prineside/tdi2/tiles/CoreTile$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/tiles/CoreTile;->fillItemCreationForm(Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;

.field public final synthetic b:I

.field public final synthetic d:Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;

.field public final synthetic k:Lcom/prineside/tdi2/tiles/CoreTile;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/tiles/CoreTile;Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;ILcom/prineside/tdi2/ui/shared/ItemCreationOverlay;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/prineside/tdi2/tiles/CoreTile$9;->k:Lcom/prineside/tdi2/tiles/CoreTile;

    iput-object p2, p0, Lcom/prineside/tdi2/tiles/CoreTile$9;->a:Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;

    iput p3, p0, Lcom/prineside/tdi2/tiles/CoreTile$9;->b:I

    iput-object p4, p0, Lcom/prineside/tdi2/tiles/CoreTile$9;->d:Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/prineside/tdi2/tiles/CoreTile$9;->a:Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;

    iget-object v0, v0, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->upgradeLevels:Lcom/badlogic/gdx/utils/Array;

    iget v1, p0, Lcom/prineside/tdi2/tiles/CoreTile$9;->b:I

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->removeIndex(I)Ljava/lang/Object;

    iget-object v0, p0, Lcom/prineside/tdi2/tiles/CoreTile$9;->k:Lcom/prineside/tdi2/tiles/CoreTile;

    iget-object v1, p0, Lcom/prineside/tdi2/tiles/CoreTile$9;->d:Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;

    iget v2, v1, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;->customIntA:I

    iget v1, v1, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;->customIntB:I

    iget-object v3, p0, Lcom/prineside/tdi2/tiles/CoreTile$9;->a:Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;

    invoke-virtual {v0, v2, v1, v3}, Lcom/prineside/tdi2/tiles/CoreTile;->setUpgrade(IILcom/prineside/tdi2/tiles/CoreTile$Upgrade;)V

    iget-object v0, p0, Lcom/prineside/tdi2/tiles/CoreTile$9;->d:Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;->updateForm()V

    return-void
.end method
