.class Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay$40;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/prineside/tdi2/utils/ObjectRetriever;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;->updateForm()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/prineside/tdi2/utils/ObjectRetriever<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay$40;->a:Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic retrieved(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay$40;->retrieved(Ljava/lang/String;)V

    return-void
.end method

.method public retrieved(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay$40;->a:Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;

    sget-object v1, Lcom/prineside/tdi2/Item$D;->F_RANDOM_TILE:Lcom/prineside/tdi2/items/RandomTileItem$RandomTileItemFactory;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/items/RandomTileItem$RandomTileItemFactory;->create(F)Lcom/prineside/tdi2/items/RandomTileItem;

    move-result-object v1

    iput-object v1, v0, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;->currentItem:Lcom/prineside/tdi2/Item;

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay$40;->a:Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;->updateItemIcon()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bad value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ItemCreationOverlay"

    invoke-static {v0, p1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
