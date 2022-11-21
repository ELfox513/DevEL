.class public final synthetic Lcom/prineside/tdi2/tiles/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/tiles/ScriptTile;

.field public final synthetic b:Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;


# direct methods
.method public synthetic constructor <init>(Lcom/prineside/tdi2/tiles/ScriptTile;Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/prineside/tdi2/tiles/u;->a:Lcom/prineside/tdi2/tiles/ScriptTile;

    iput-object p2, p0, Lcom/prineside/tdi2/tiles/u;->b:Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/tiles/u;->a:Lcom/prineside/tdi2/tiles/ScriptTile;

    iget-object v1, p0, Lcom/prineside/tdi2/tiles/u;->b:Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;

    invoke-static {v0, v1}, Lcom/prineside/tdi2/tiles/ScriptTile;->g(Lcom/prineside/tdi2/tiles/ScriptTile;Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;)V

    return-void
.end method
