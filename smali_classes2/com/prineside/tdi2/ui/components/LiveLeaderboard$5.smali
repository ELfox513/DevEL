.class Lcom/prineside/tdi2/ui/components/LiveLeaderboard$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->G()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/ui/components/LiveLeaderboard$ListItem;

.field public final synthetic b:Lcom/prineside/tdi2/ui/components/LiveLeaderboard;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/components/LiveLeaderboard;Lcom/prineside/tdi2/ui/components/LiveLeaderboard$ListItem;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$5;->b:Lcom/prineside/tdi2/ui/components/LiveLeaderboard;

    iput-object p2, p0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$5;->a:Lcom/prineside/tdi2/ui/components/LiveLeaderboard$ListItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$5;->a:Lcom/prineside/tdi2/ui/components/LiveLeaderboard$ListItem;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->remove()Z

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$5;->a:Lcom/prineside/tdi2/ui/components/LiveLeaderboard$ListItem;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$ListItem;->p(Lcom/prineside/tdi2/ui/components/LiveLeaderboard$ListItem;)Lcom/prineside/tdi2/ui/components/LiveLeaderboard$PlaceConfig;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$PlaceConfig;->listItem:Lcom/prineside/tdi2/ui/components/LiveLeaderboard$ListItem;

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$5;->a:Lcom/prineside/tdi2/ui/components/LiveLeaderboard$ListItem;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$ListItem;->r(Lcom/prineside/tdi2/ui/components/LiveLeaderboard$ListItem;)Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    move-result-object v0

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v2, "icon-user"

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->setDrawable(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$5;->b:Lcom/prineside/tdi2/ui/components/LiveLeaderboard;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->t(Lcom/prineside/tdi2/ui/components/LiveLeaderboard;)Lcom/badlogic/gdx/utils/Pool;

    move-result-object v0

    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$5;->a:Lcom/prineside/tdi2/ui/components/LiveLeaderboard$ListItem;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Pool;->free(Ljava/lang/Object;)V

    return-void
.end method
