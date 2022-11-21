.class Lcom/prineside/tdi2/ui/shared/ProfileSummary$4;
.super Lcom/prineside/tdi2/managers/AuthManager$AuthManagerListener$AuthManagerListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/shared/ProfileSummary;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/ui/shared/ProfileSummary;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/shared/ProfileSummary;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/shared/ProfileSummary$4;->a:Lcom/prineside/tdi2/ui/shared/ProfileSummary;

    invoke-direct {p0}, Lcom/prineside/tdi2/managers/AuthManager$AuthManagerListener$AuthManagerListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public stateUpdated()V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/ProfileSummary$4;->a:Lcom/prineside/tdi2/ui/shared/ProfileSummary;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->d(Lcom/prineside/tdi2/ui/shared/ProfileSummary;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/ProfileSummary$4;->a:Lcom/prineside/tdi2/ui/shared/ProfileSummary;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->e(Lcom/prineside/tdi2/ui/shared/ProfileSummary;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/ProfileSummary$4;->a:Lcom/prineside/tdi2/ui/shared/ProfileSummary;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->i(Lcom/prineside/tdi2/ui/shared/ProfileSummary;)Lcom/prineside/tdi2/ui/shared/ProfileSummary$AnimationStage;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/ProfileSummary$4;->a:Lcom/prineside/tdi2/ui/shared/ProfileSummary;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->update()V

    :cond_0
    return-void
.end method
