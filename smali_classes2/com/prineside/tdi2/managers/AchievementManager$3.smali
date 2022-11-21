.class Lcom/prineside/tdi2/managers/AchievementManager$3;
.super Lcom/prineside/tdi2/managers/ProgressManager$ProgressManagerListener$ProgressManagerListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/managers/AchievementManager;->setup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/managers/AchievementManager;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/managers/AchievementManager;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/managers/AchievementManager$3;->a:Lcom/prineside/tdi2/managers/AchievementManager;

    invoke-direct {p0}, Lcom/prineside/tdi2/managers/ProgressManager$ProgressManagerListener$ProgressManagerListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public saved()V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/managers/AchievementManager$3;->a:Lcom/prineside/tdi2/managers/AchievementManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/AchievementManager;->saveIfRequired()V

    return-void
.end method
