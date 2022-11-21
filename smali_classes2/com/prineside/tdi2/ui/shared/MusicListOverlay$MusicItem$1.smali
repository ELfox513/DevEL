.class Lcom/prineside/tdi2/ui/shared/MusicListOverlay$MusicItem$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/shared/MusicListOverlay$MusicItem;->updateUi()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/ui/shared/MusicListOverlay$MusicItem;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/shared/MusicListOverlay$MusicItem;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$MusicItem$1;->a:Lcom/prineside/tdi2/ui/shared/MusicListOverlay$MusicItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$MusicItem$1;->a:Lcom/prineside/tdi2/ui/shared/MusicListOverlay$MusicItem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$MusicItem;->toggleAsMenuTheme()V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$MusicItem$1;->a:Lcom/prineside/tdi2/ui/shared/MusicListOverlay$MusicItem;

    iget-object v0, v0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$MusicItem;->a:Lcom/prineside/tdi2/ui/shared/MusicListOverlay;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/shared/MusicListOverlay;->i(Lcom/prineside/tdi2/ui/shared/MusicListOverlay;)V

    return-void
.end method
