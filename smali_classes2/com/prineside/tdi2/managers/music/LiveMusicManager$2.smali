.class Lcom/prineside/tdi2/managers/music/LiveMusicManager$2;
.super Lcom/badlogic/gdx/utils/Timer$Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/managers/music/LiveMusicManager;->s()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic q:Lcom/prineside/tdi2/managers/music/LiveMusicManager;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/managers/music/LiveMusicManager;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/managers/music/LiveMusicManager$2;->q:Lcom/prineside/tdi2/managers/music/LiveMusicManager;

    invoke-direct {p0}, Lcom/badlogic/gdx/utils/Timer$Task;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v1, Lcom/prineside/tdi2/managers/music/LiveMusicManager$2$1;

    invoke-direct {v1, p0}, Lcom/prineside/tdi2/managers/music/LiveMusicManager$2$1;-><init>(Lcom/prineside/tdi2/managers/music/LiveMusicManager$2;)V

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Application;->postRunnable(Ljava/lang/Runnable;)V

    return-void
.end method
