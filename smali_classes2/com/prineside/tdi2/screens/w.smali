.class public final synthetic Lcom/prineside/tdi2/screens/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$WaveQuestsLine$WaveMilestoneConfig;

    check-cast p2, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$WaveQuestsLine$WaveMilestoneConfig;

    invoke-static {p1, p2}, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$WaveQuestsLine;->p(Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$WaveQuestsLine$WaveMilestoneConfig;Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$WaveQuestsLine$WaveMilestoneConfig;)I

    move-result p1

    return p1
.end method
