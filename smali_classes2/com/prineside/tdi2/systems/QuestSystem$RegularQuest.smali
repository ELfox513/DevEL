.class public abstract Lcom/prineside/tdi2/systems/QuestSystem$RegularQuest;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/prineside/tdi2/systems/QuestSystem$Quest;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/systems/QuestSystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "RegularQuest"
.end annotation


# static fields
.field public static final h:Lcom/badlogic/gdx/utils/StringBuilder;


# instance fields
.field public final a:Lcom/prineside/tdi2/GameSystemProvider;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:D

.field public final e:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/ItemStack;",
            ">;"
        }
    .end annotation
.end field

.field public f:D

.field public final g:Lcom/prineside/tdi2/GameSystemProvider;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/systems/QuestSystem$RegularQuest;->h:Lcom/badlogic/gdx/utils/StringBuilder;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/CharSequence;DLcom/badlogic/gdx/utils/Array;Lcom/prineside/tdi2/GameSystemProvider;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/CharSequence;",
            "D",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/ItemStack;",
            ">;",
            "Lcom/prineside/tdi2/GameSystemProvider;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lcom/prineside/tdi2/systems/QuestSystem$RegularQuest;->f:D

    iput-object p6, p0, Lcom/prineside/tdi2/systems/QuestSystem$RegularQuest;->a:Lcom/prineside/tdi2/GameSystemProvider;

    iput-object p1, p0, Lcom/prineside/tdi2/systems/QuestSystem$RegularQuest;->b:Ljava/lang/String;

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/prineside/tdi2/systems/QuestSystem$RegularQuest;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/prineside/tdi2/systems/QuestSystem$RegularQuest;->e:Lcom/badlogic/gdx/utils/Array;

    iput-wide p3, p0, Lcom/prineside/tdi2/systems/QuestSystem$RegularQuest;->d:D

    iput-object p6, p0, Lcom/prineside/tdi2/systems/QuestSystem$RegularQuest;->g:Lcom/prineside/tdi2/GameSystemProvider;

    return-void
.end method


# virtual methods
.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/systems/QuestSystem$RegularQuest;->c:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getValue()D
.end method

.method public isCompleted()Z
    .locals 5

    invoke-virtual {p0}, Lcom/prineside/tdi2/systems/QuestSystem$RegularQuest;->getValue()D

    move-result-wide v0

    iget-wide v2, p0, Lcom/prineside/tdi2/systems/QuestSystem$RegularQuest;->d:D

    cmpl-double v4, v0, v2

    if-ltz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public update()V
    .locals 9

    invoke-virtual {p0}, Lcom/prineside/tdi2/systems/QuestSystem$RegularQuest;->getValue()D

    move-result-wide v0

    iget-wide v2, p0, Lcom/prineside/tdi2/systems/QuestSystem$RegularQuest;->f:D

    cmpl-double v4, v2, v0

    if-eqz v4, :cond_2

    iget-object v2, p0, Lcom/prineside/tdi2/systems/QuestSystem$RegularQuest;->g:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->_quest:Lcom/prineside/tdi2/systems/QuestSystem;

    invoke-virtual {v2, p0}, Lcom/prineside/tdi2/systems/QuestSystem;->getListItem(Lcom/prineside/tdi2/systems/QuestSystem$Quest;)Lcom/prineside/tdi2/ui/components/QuestList$QuestListItem;

    move-result-object v2

    if-eqz v2, :cond_1

    sget-object v3, Lcom/prineside/tdi2/systems/QuestSystem$RegularQuest;->h:Lcom/badlogic/gdx/utils/StringBuilder;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->setLength(I)V

    iget-object v4, p0, Lcom/prineside/tdi2/systems/QuestSystem$RegularQuest;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    iget-wide v4, p0, Lcom/prineside/tdi2/systems/QuestSystem$RegularQuest;->d:D

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpl-double v8, v4, v6

    if-lez v8, :cond_0

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/prineside/tdi2/systems/QuestSystem$RegularQuest;->d:D

    invoke-static {v0, v1, v5, v6}, Ljava/lang/StrictMath;->min(DD)D

    move-result-wide v5

    double-to-long v5, v5

    invoke-virtual {v4, v5, v6}, Lcom/badlogic/gdx/utils/StringBuilder;->append(J)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v4

    const/16 v5, 0x2f

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/prineside/tdi2/systems/QuestSystem$RegularQuest;->d:D

    double-to-long v5, v5

    invoke-virtual {v4, v5, v6}, Lcom/badlogic/gdx/utils/StringBuilder;->append(J)Lcom/badlogic/gdx/utils/StringBuilder;

    :cond_0
    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/ui/components/QuestList$QuestListItem;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iput-wide v0, p0, Lcom/prineside/tdi2/systems/QuestSystem$RegularQuest;->f:D

    :cond_2
    return-void
.end method
