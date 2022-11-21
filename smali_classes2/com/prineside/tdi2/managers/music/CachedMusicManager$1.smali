.class Lcom/prineside/tdi2/managers/music/CachedMusicManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/prineside/tdi2/managers/ScreenManager$ScreenManagerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/managers/music/CachedMusicManager;->setup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/managers/music/CachedMusicManager;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/managers/music/CachedMusicManager;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/managers/music/CachedMusicManager$1;->a:Lcom/prineside/tdi2/managers/music/CachedMusicManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public screenChanged()V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/managers/music/CachedMusicManager$1;->a:Lcom/prineside/tdi2/managers/music/CachedMusicManager;

    invoke-static {v0}, Lcom/prineside/tdi2/managers/music/CachedMusicManager;->e(Lcom/prineside/tdi2/managers/music/CachedMusicManager;)V

    return-void
.end method
