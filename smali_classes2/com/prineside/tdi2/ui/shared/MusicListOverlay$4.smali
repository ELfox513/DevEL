.class Lcom/prineside/tdi2/ui/shared/MusicListOverlay$4;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/shared/MusicListOverlay;->t()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic o:Lcom/prineside/tdi2/managers/music/LiveMusicManager;

.field public final synthetic p:I

.field public final synthetic q:Lcom/prineside/tdi2/ui/shared/MusicListOverlay;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/shared/MusicListOverlay;Lcom/prineside/tdi2/managers/music/LiveMusicManager;I)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$4;->q:Lcom/prineside/tdi2/ui/shared/MusicListOverlay;

    iput-object p2, p0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$4;->o:Lcom/prineside/tdi2/managers/music/LiveMusicManager;

    iput p3, p0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$4;->p:I

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public clicked(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FF)V
    .locals 0

    :try_start_0
    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$4;->o:Lcom/prineside/tdi2/managers/music/LiveMusicManager;

    iget-object p1, p1, Lcom/prineside/tdi2/managers/music/LiveMusicManager;->ibxm:Lcom/prineside/tdi2/ibxm/IBXM;

    const/4 p2, 0x0

    iput p2, p1, Lcom/prineside/tdi2/ibxm/IBXM;->lastSeqPos:I

    iget p2, p0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$4;->p:I

    invoke-virtual {p1, p2}, Lcom/prineside/tdi2/ibxm/IBXM;->setSequencePos(I)V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$4;->q:Lcom/prineside/tdi2/ui/shared/MusicListOverlay;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/shared/MusicListOverlay;->e(Lcom/prineside/tdi2/ui/shared/MusicListOverlay;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
