.class Lcom/prineside/tdi2/managers/MusicManager$3;
.super Lcom/prineside/tdi2/managers/SettingsManager$SettingsManagerListener$SettingsManagerListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/managers/MusicManager;->setup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/managers/MusicManager;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/managers/MusicManager;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/managers/MusicManager$3;->a:Lcom/prineside/tdi2/managers/MusicManager;

    invoke-direct {p0}, Lcom/prineside/tdi2/managers/SettingsManager$SettingsManagerListener$SettingsManagerListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public customValueChanged(Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;D)V
    .locals 1

    sget-object p2, Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;->MUSIC_VOLUME:Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/prineside/tdi2/managers/MusicManager$3;->a:Lcom/prineside/tdi2/managers/MusicManager;

    invoke-static {p1}, Lcom/prineside/tdi2/managers/MusicManager;->b(Lcom/prineside/tdi2/managers/MusicManager;)F

    move-result p2

    const/4 p3, 0x0

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0}, Lcom/prineside/tdi2/managers/MusicManager;->setVolume(FFZ)V

    :cond_0
    return-void
.end method
