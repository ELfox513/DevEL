.class Lcom/prineside/tdi2/managers/music/LiveMusicManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/LifecycleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/managers/music/LiveMusicManager;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/managers/music/LiveMusicManager;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/managers/music/LiveMusicManager;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/managers/music/LiveMusicManager$1;->a:Lcom/prineside/tdi2/managers/music/LiveMusicManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    return-void
.end method

.method public pause()V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/managers/music/LiveMusicManager$1;->a:Lcom/prineside/tdi2/managers/music/LiveMusicManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/prineside/tdi2/managers/music/LiveMusicManager;->h(Lcom/prineside/tdi2/managers/music/LiveMusicManager;Z)Z

    return-void
.end method

.method public resume()V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/managers/music/LiveMusicManager$1;->a:Lcom/prineside/tdi2/managers/music/LiveMusicManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/prineside/tdi2/managers/music/LiveMusicManager;->h(Lcom/prineside/tdi2/managers/music/LiveMusicManager;Z)Z

    return-void
.end method
