.class Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay$22;
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
.field public final synthetic a:Lcom/prineside/tdi2/tiles/XmMusicTrackTile;

.field public final synthetic b:Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;Lcom/prineside/tdi2/tiles/XmMusicTrackTile;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay$22;->b:Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;

    iput-object p2, p0, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay$22;->a:Lcom/prineside/tdi2/tiles/XmMusicTrackTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic retrieved(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay$22;->retrieved(Ljava/lang/String;)V

    return-void
.end method

.method public retrieved(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay$22;->a:Lcom/prineside/tdi2/tiles/XmMusicTrackTile;

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/tiles/XmMusicTrackTile;->setTrack(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay$22;->a:Lcom/prineside/tdi2/tiles/XmMusicTrackTile;

    invoke-virtual {p1}, Lcom/prineside/tdi2/tiles/XmMusicTrackTile;->getModule()Lcom/prineside/tdi2/ibxm/Module;

    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay$22;->b:Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;->updateItemIcon()V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay$22;->b:Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;->updateForm()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay$22;->a:Lcom/prineside/tdi2/tiles/XmMusicTrackTile;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/tiles/XmMusicTrackTile;->setTrack(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
