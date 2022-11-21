.class public final synthetic Lcom/prineside/tdi2/tiles/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/tiles/DummyTile;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic d:Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;


# direct methods
.method public synthetic constructor <init>(Lcom/prineside/tdi2/tiles/DummyTile;Ljava/lang/String;Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/prineside/tdi2/tiles/r;->a:Lcom/prineside/tdi2/tiles/DummyTile;

    iput-object p2, p0, Lcom/prineside/tdi2/tiles/r;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/prineside/tdi2/tiles/r;->d:Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/prineside/tdi2/tiles/r;->a:Lcom/prineside/tdi2/tiles/DummyTile;

    iget-object v1, p0, Lcom/prineside/tdi2/tiles/r;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/prineside/tdi2/tiles/r;->d:Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;

    invoke-static {v0, v1, v2}, Lcom/prineside/tdi2/tiles/DummyTile;->e(Lcom/prineside/tdi2/tiles/DummyTile;Ljava/lang/String;Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;)V

    return-void
.end method
