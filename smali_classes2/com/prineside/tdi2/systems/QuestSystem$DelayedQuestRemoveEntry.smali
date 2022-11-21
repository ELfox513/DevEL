.class Lcom/prineside/tdi2/systems/QuestSystem$DelayedQuestRemoveEntry;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/systems/QuestSystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DelayedQuestRemoveEntry"
.end annotation


# instance fields
.field public a:Lcom/prineside/tdi2/systems/QuestSystem$Quest;

.field public b:F

.field public final synthetic c:Lcom/prineside/tdi2/systems/QuestSystem;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/systems/QuestSystem;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/systems/QuestSystem$DelayedQuestRemoveEntry;->c:Lcom/prineside/tdi2/systems/QuestSystem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/systems/QuestSystem;Lcom/prineside/tdi2/systems/QuestSystem$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/systems/QuestSystem$DelayedQuestRemoveEntry;-><init>(Lcom/prineside/tdi2/systems/QuestSystem;)V

    return-void
.end method

.method public static synthetic a(Lcom/prineside/tdi2/systems/QuestSystem$DelayedQuestRemoveEntry;)Lcom/prineside/tdi2/systems/QuestSystem$Quest;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/systems/QuestSystem$DelayedQuestRemoveEntry;->a:Lcom/prineside/tdi2/systems/QuestSystem$Quest;

    return-object p0
.end method

.method public static synthetic b(Lcom/prineside/tdi2/systems/QuestSystem$DelayedQuestRemoveEntry;Lcom/prineside/tdi2/systems/QuestSystem$Quest;)Lcom/prineside/tdi2/systems/QuestSystem$Quest;
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/systems/QuestSystem$DelayedQuestRemoveEntry;->a:Lcom/prineside/tdi2/systems/QuestSystem$Quest;

    return-object p1
.end method

.method public static synthetic c(Lcom/prineside/tdi2/systems/QuestSystem$DelayedQuestRemoveEntry;)F
    .locals 0

    iget p0, p0, Lcom/prineside/tdi2/systems/QuestSystem$DelayedQuestRemoveEntry;->b:F

    return p0
.end method

.method public static synthetic d(Lcom/prineside/tdi2/systems/QuestSystem$DelayedQuestRemoveEntry;F)F
    .locals 0

    iput p1, p0, Lcom/prineside/tdi2/systems/QuestSystem$DelayedQuestRemoveEntry;->b:F

    return p1
.end method

.method public static synthetic e(Lcom/prineside/tdi2/systems/QuestSystem$DelayedQuestRemoveEntry;F)F
    .locals 1

    iget v0, p0, Lcom/prineside/tdi2/systems/QuestSystem$DelayedQuestRemoveEntry;->b:F

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/prineside/tdi2/systems/QuestSystem$DelayedQuestRemoveEntry;->b:F

    return v0
.end method
