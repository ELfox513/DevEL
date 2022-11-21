.class public final synthetic Lcom/prineside/tdi2/tiles/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/prineside/tdi2/utils/ObjectRetriever;


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/tiles/SourceTile;

.field public final synthetic b:Lcom/prineside/tdi2/enums/ResourceType;

.field public final synthetic c:Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;


# direct methods
.method public synthetic constructor <init>(Lcom/prineside/tdi2/tiles/SourceTile;Lcom/prineside/tdi2/enums/ResourceType;Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/prineside/tdi2/tiles/z;->a:Lcom/prineside/tdi2/tiles/SourceTile;

    iput-object p2, p0, Lcom/prineside/tdi2/tiles/z;->b:Lcom/prineside/tdi2/enums/ResourceType;

    iput-object p3, p0, Lcom/prineside/tdi2/tiles/z;->c:Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;

    return-void
.end method


# virtual methods
.method public final retrieved(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/prineside/tdi2/tiles/z;->a:Lcom/prineside/tdi2/tiles/SourceTile;

    iget-object v1, p0, Lcom/prineside/tdi2/tiles/z;->b:Lcom/prineside/tdi2/enums/ResourceType;

    iget-object v2, p0, Lcom/prineside/tdi2/tiles/z;->c:Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, v1, v2, p1}, Lcom/prineside/tdi2/tiles/SourceTile;->c(Lcom/prineside/tdi2/tiles/SourceTile;Lcom/prineside/tdi2/enums/ResourceType;Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;Ljava/lang/String;)V

    return-void
.end method
