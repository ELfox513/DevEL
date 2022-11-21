.class Lcom/prineside/tdi2/tiles/CoreTile$10;
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

.field public final synthetic b:Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;

.field public final synthetic d:Lcom/prineside/tdi2/tiles/CoreTile;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/tiles/CoreTile;Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/prineside/tdi2/tiles/CoreTile$10;->d:Lcom/prineside/tdi2/tiles/CoreTile;

    iput-object p2, p0, Lcom/prineside/tdi2/tiles/CoreTile$10;->a:Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;

    iput-object p3, p0, Lcom/prineside/tdi2/tiles/CoreTile$10;->b:Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/prineside/tdi2/tiles/CoreTile$10;->a:Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;

    iget-object v0, v0, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->upgradeLevels:Lcom/badlogic/gdx/utils/Array;

    new-instance v1, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade$UpgradeLevel;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade$UpgradeLevel;-><init>(FI)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/tdi2/tiles/CoreTile$10;->d:Lcom/prineside/tdi2/tiles/CoreTile;

    iget-object v1, p0, Lcom/prineside/tdi2/tiles/CoreTile$10;->b:Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;

    iget v2, v1, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;->customIntA:I

    iget v1, v1, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;->customIntB:I

    iget-object v3, p0, Lcom/prineside/tdi2/tiles/CoreTile$10;->a:Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;

    invoke-virtual {v0, v2, v1, v3}, Lcom/prineside/tdi2/tiles/CoreTile;->setUpgrade(IILcom/prineside/tdi2/tiles/CoreTile$Upgrade;)V

    iget-object v0, p0, Lcom/prineside/tdi2/tiles/CoreTile$10;->b:Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;->updateForm()V

    return-void
.end method
