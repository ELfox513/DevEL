.class Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay$2;
.super Lcom/badlogic/gdx/scenes/scene2d/Group;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic M:Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay$2;->M:Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    return-void
.end method


# virtual methods
.method public act(F)V
    .locals 1

    invoke-super {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->act(F)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay$2;->M:Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->a(Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay$2;->M:Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;

    invoke-static {v0, p1}, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->f(Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;F)F

    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay$2;->M:Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->b(Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;)F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_0

    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay$2;->M:Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->d(Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;F)F

    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay$2;->M:Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->i(Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;)V

    :cond_0
    return-void
.end method
