.class Lcom/prineside/tdi2/tiles/CoreTile$7;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/ChangeListener;
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
.field public final synthetic a:Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;

.field public final synthetic b:Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;

.field public final synthetic c:I

.field public final synthetic d:Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;

.field public final synthetic e:Lcom/prineside/tdi2/tiles/CoreTile;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/tiles/CoreTile;Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;ILcom/prineside/tdi2/ui/shared/ItemCreationOverlay;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/tiles/CoreTile$7;->e:Lcom/prineside/tdi2/tiles/CoreTile;

    iput-object p2, p0, Lcom/prineside/tdi2/tiles/CoreTile$7;->a:Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;

    iput-object p3, p0, Lcom/prineside/tdi2/tiles/CoreTile$7;->b:Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;

    iput p4, p0, Lcom/prineside/tdi2/tiles/CoreTile$7;->c:I

    iput-object p5, p0, Lcom/prineside/tdi2/tiles/CoreTile$7;->d:Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public changed(Lcom/badlogic/gdx/scenes/scene2d/utils/ChangeListener$ChangeEvent;Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 3

    iget-object p1, p0, Lcom/prineside/tdi2/tiles/CoreTile$7;->a:Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->getText()Ljava/lang/String;

    move-result-object p1

    :try_start_0
    iget-object p2, p0, Lcom/prineside/tdi2/tiles/CoreTile$7;->b:Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;

    iget-object p2, p2, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->upgradeLevels:Lcom/badlogic/gdx/utils/Array;

    iget-object p2, p2, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast p2, [Lcom/prineside/tdi2/tiles/CoreTile$Upgrade$UpgradeLevel;

    iget v0, p0, Lcom/prineside/tdi2/tiles/CoreTile$7;->c:I

    aget-object p2, p2, v0

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p2, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade$UpgradeLevel;->delta:F

    iget-object p2, p0, Lcom/prineside/tdi2/tiles/CoreTile$7;->e:Lcom/prineside/tdi2/tiles/CoreTile;

    iget-object v0, p0, Lcom/prineside/tdi2/tiles/CoreTile$7;->d:Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;

    iget v1, v0, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;->customIntA:I

    iget v0, v0, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;->customIntB:I

    iget-object v2, p0, Lcom/prineside/tdi2/tiles/CoreTile$7;->b:Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;

    invoke-virtual {p2, v1, v0, v2}, Lcom/prineside/tdi2/tiles/CoreTile;->setUpgrade(IILcom/prineside/tdi2/tiles/CoreTile$Upgrade;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "bad value: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CoreTile"

    invoke-static {p2, p1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lcom/prineside/tdi2/tiles/CoreTile$7;->d:Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;->updateItemIcon()V

    return-void
.end method
