.class Lcom/prineside/tdi2/ui/shared/MusicListOverlay$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/prineside/tdi2/utils/ObjectRetriever;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/shared/MusicListOverlay;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/prineside/tdi2/utils/ObjectRetriever<",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/ui/shared/MusicListOverlay;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/shared/MusicListOverlay;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$2;->a:Lcom/prineside/tdi2/ui/shared/MusicListOverlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public retrieved(Ljava/lang/Double;)V
    .locals 7

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    sget-object v1, Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;->MUSIC_VOLUME:Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/SettingsManager;->getCustomValue(Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;)D

    move-result-wide v0

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/prineside/tdi2/managers/SettingsManager;->setMusicVolume(D)V

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-nez v4, :cond_0

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    cmpl-double v6, v4, v2

    if-lez v6, :cond_0

    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$2;->a:Lcom/prineside/tdi2/ui/shared/MusicListOverlay;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/shared/MusicListOverlay;->d(Lcom/prineside/tdi2/ui/shared/MusicListOverlay;)Lcom/prineside/tdi2/ui/shared/MusicListOverlay$MusicItem;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$MusicItem;->play()V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$2;->a:Lcom/prineside/tdi2/ui/shared/MusicListOverlay;

    iget p1, p1, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$MusicItem;->hash:I

    invoke-static {v0, p1}, Lcom/prineside/tdi2/ui/shared/MusicListOverlay;->h(Lcom/prineside/tdi2/ui/shared/MusicListOverlay;I)I

    goto :goto_0

    :cond_0
    cmpl-double v4, v0, v2

    if-lez v4, :cond_1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    cmpl-double p1, v0, v2

    if-nez p1, :cond_1

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->musicManager:Lcom/prineside/tdi2/managers/MusicManager;

    invoke-virtual {p1}, Lcom/prineside/tdi2/managers/MusicManager;->stopMusic()V

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$2;->a:Lcom/prineside/tdi2/ui/shared/MusicListOverlay;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/shared/MusicListOverlay;->i(Lcom/prineside/tdi2/ui/shared/MusicListOverlay;)V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$2;->a:Lcom/prineside/tdi2/ui/shared/MusicListOverlay;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/shared/MusicListOverlay;->e(Lcom/prineside/tdi2/ui/shared/MusicListOverlay;)V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$2;->a:Lcom/prineside/tdi2/ui/shared/MusicListOverlay;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/shared/MusicListOverlay;->j(Lcom/prineside/tdi2/ui/shared/MusicListOverlay;)V

    return-void
.end method

.method public bridge synthetic retrieved(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$2;->retrieved(Ljava/lang/Double;)V

    return-void
.end method
