.class Lcom/prineside/tdi2/managers/AuthManager$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/managers/AuthManager;->loadStateFromServer(Ljava/lang/String;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/badlogic/gdx/utils/JsonValue;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/Runnable;

.field public final synthetic k:Lcom/prineside/tdi2/managers/AuthManager;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/managers/AuthManager;Lcom/badlogic/gdx/utils/JsonValue;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/prineside/tdi2/managers/AuthManager$9;->k:Lcom/prineside/tdi2/managers/AuthManager;

    iput-object p2, p0, Lcom/prineside/tdi2/managers/AuthManager$9;->a:Lcom/badlogic/gdx/utils/JsonValue;

    iput-object p3, p0, Lcom/prineside/tdi2/managers/AuthManager$9;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/prineside/tdi2/managers/AuthManager$9;->d:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v0, p0, Lcom/prineside/tdi2/managers/AuthManager$9;->k:Lcom/prineside/tdi2/managers/AuthManager;

    invoke-static {}, Lcom/prineside/tdi2/Game;->getTimestampSeconds()I

    move-result v1

    iput v1, v0, Lcom/prineside/tdi2/managers/AuthManager;->lastStateUpdateTimestamp:I

    iget-object v0, p0, Lcom/prineside/tdi2/managers/AuthManager$9;->k:Lcom/prineside/tdi2/managers/AuthManager;

    iget-object v1, p0, Lcom/prineside/tdi2/managers/AuthManager$9;->a:Lcom/badlogic/gdx/utils/JsonValue;

    const-string v2, "hasPfp"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/utils/JsonValue;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/prineside/tdi2/managers/AuthManager;->j(Lcom/prineside/tdi2/managers/AuthManager;Z)Z

    iget-object v0, p0, Lcom/prineside/tdi2/managers/AuthManager$9;->k:Lcom/prineside/tdi2/managers/AuthManager;

    iget-object v1, p0, Lcom/prineside/tdi2/managers/AuthManager$9;->a:Lcom/badlogic/gdx/utils/JsonValue;

    const-string v2, "passwordSet"

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v4}, Lcom/badlogic/gdx/utils/JsonValue;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/prineside/tdi2/managers/AuthManager;->k(Lcom/prineside/tdi2/managers/AuthManager;Z)Z

    iget-object v0, p0, Lcom/prineside/tdi2/managers/AuthManager$9;->k:Lcom/prineside/tdi2/managers/AuthManager;

    iget-object v1, p0, Lcom/prineside/tdi2/managers/AuthManager$9;->a:Lcom/badlogic/gdx/utils/JsonValue;

    const-string v2, "nickname"

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/prineside/tdi2/managers/AuthManager;->l(Lcom/prineside/tdi2/managers/AuthManager;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/prineside/tdi2/managers/AuthManager$9;->k:Lcom/prineside/tdi2/managers/AuthManager;

    iget-object v1, p0, Lcom/prineside/tdi2/managers/AuthManager$9;->a:Lcom/badlogic/gdx/utils/JsonValue;

    const-string v2, "emailHint"

    const-string v5, ""

    invoke-virtual {v1, v2, v5}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/prineside/tdi2/managers/AuthManager;->m(Lcom/prineside/tdi2/managers/AuthManager;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/prineside/tdi2/managers/AuthManager$9;->k:Lcom/prineside/tdi2/managers/AuthManager;

    invoke-static {}, Lcom/prineside/tdi2/Game;->getTimestampMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/prineside/tdi2/managers/AuthManager;->n(Lcom/prineside/tdi2/managers/AuthManager;J)J

    iget-object v0, p0, Lcom/prineside/tdi2/managers/AuthManager$9;->k:Lcom/prineside/tdi2/managers/AuthManager;

    iget-object v1, p0, Lcom/prineside/tdi2/managers/AuthManager$9;->a:Lcom/badlogic/gdx/utils/JsonValue;

    const-string v2, "playerid"

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/prineside/tdi2/managers/AuthManager;->o(Lcom/prineside/tdi2/managers/AuthManager;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/prineside/tdi2/managers/AuthManager$9;->k:Lcom/prineside/tdi2/managers/AuthManager;

    iget-object v1, p0, Lcom/prineside/tdi2/managers/AuthManager$9;->a:Lcom/badlogic/gdx/utils/JsonValue;

    const-string v2, "inviteCode"

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v5}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/prineside/tdi2/managers/AuthManager;->p(Lcom/prineside/tdi2/managers/AuthManager;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/prineside/tdi2/managers/AuthManager$9;->k:Lcom/prineside/tdi2/managers/AuthManager;

    iget-object v1, p0, Lcom/prineside/tdi2/managers/AuthManager$9;->a:Lcom/badlogic/gdx/utils/JsonValue;

    const-string v2, "invitedBy"

    invoke-virtual {v1, v2, v5}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/prineside/tdi2/managers/AuthManager;->q(Lcom/prineside/tdi2/managers/AuthManager;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/prineside/tdi2/managers/AuthManager$9;->a:Lcom/badlogic/gdx/utils/JsonValue;

    const-string v1, "xp"

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/prineside/tdi2/managers/AuthManager$9;->k:Lcom/prineside/tdi2/managers/AuthManager;

    const-string v2, "current"

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v6

    const-string v7, "level-xp"

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v1, Lcom/prineside/tdi2/managers/AuthManager;->currentLevelXp:I

    iget-object v1, p0, Lcom/prineside/tdi2/managers/AuthManager$9;->k:Lcom/prineside/tdi2/managers/AuthManager;

    const-string v6, "bonusXpRemaining"

    invoke-virtual {v0, v6, v3}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, v1, Lcom/prineside/tdi2/managers/AuthManager;->bonusXpRemaining:I

    iget-object v1, p0, Lcom/prineside/tdi2/managers/AuthManager$9;->k:Lcom/prineside/tdi2/managers/AuthManager;

    const-string v6, "regularXpRemaining"

    invoke-virtual {v0, v6, v3}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, v1, Lcom/prineside/tdi2/managers/AuthManager;->regularXpRemaining:I

    iget-object v1, p0, Lcom/prineside/tdi2/managers/AuthManager$9;->k:Lcom/prineside/tdi2/managers/AuthManager;

    invoke-static {}, Lcom/prineside/tdi2/Game;->getTimestampSeconds()I

    move-result v6

    const v7, 0x69780

    add-int/2addr v6, v7

    const-string v7, "nextXpRefresh"

    invoke-virtual {v0, v7, v6}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, v1, Lcom/prineside/tdi2/managers/AuthManager;->nextXpRefreshTimestamp:I

    iget-object v1, p0, Lcom/prineside/tdi2/managers/AuthManager$9;->k:Lcom/prineside/tdi2/managers/AuthManager;

    const-string v6, "temp"

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v1, Lcom/prineside/tdi2/managers/AuthManager;->tempXp:I

    iget-object v1, p0, Lcom/prineside/tdi2/managers/AuthManager$9;->k:Lcom/prineside/tdi2/managers/AuthManager;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v6

    const-string v7, "prestige-available"

    invoke-virtual {v6, v7, v3}, Lcom/badlogic/gdx/utils/JsonValue;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, v1, Lcom/prineside/tdi2/managers/AuthManager;->ofMeritPrestigeAvailable:Z

    iget-object v1, p0, Lcom/prineside/tdi2/managers/AuthManager$9;->k:Lcom/prineside/tdi2/managers/AuthManager;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v6

    const-string v7, "next-level"

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v1, Lcom/prineside/tdi2/managers/AuthManager;->nextLevelXp:I

    iget-object v1, p0, Lcom/prineside/tdi2/managers/AuthManager$9;->k:Lcom/prineside/tdi2/managers/AuthManager;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v6

    const-string v7, "level"

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v1, Lcom/prineside/tdi2/managers/AuthManager;->profileLevel:I

    iget-object v1, p0, Lcom/prineside/tdi2/managers/AuthManager$9;->k:Lcom/prineside/tdi2/managers/AuthManager;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v2

    const-string v6, "maxLevel"

    invoke-virtual {v2, v6}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/prineside/tdi2/managers/AuthManager;->maxProfileLevel:I

    iget-object v1, p0, Lcom/prineside/tdi2/managers/AuthManager$9;->k:Lcom/prineside/tdi2/managers/AuthManager;

    const-string v2, "dailyXp"

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v6

    const-string v7, "playedLevelXpCoeff"

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;)F

    move-result v6

    iput v6, v1, Lcom/prineside/tdi2/managers/AuthManager;->playedLevelXpCoeff:F

    iget-object v1, p0, Lcom/prineside/tdi2/managers/AuthManager$9;->k:Lcom/prineside/tdi2/managers/AuthManager;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v6

    const-string v7, "bonusLevelXpCoeff"

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;)F

    move-result v6

    iput v6, v1, Lcom/prineside/tdi2/managers/AuthManager;->bonusLevelXpCoeff:F

    iget-object v1, p0, Lcom/prineside/tdi2/managers/AuthManager$9;->k:Lcom/prineside/tdi2/managers/AuthManager;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v6

    const-string v7, "bonusLevel"

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/prineside/tdi2/managers/AuthManager;->bonusXpLevel:Ljava/lang/String;

    iget-object v1, p0, Lcom/prineside/tdi2/managers/AuthManager$9;->k:Lcom/prineside/tdi2/managers/AuthManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/AuthManager;->xpPlayedLevels:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->clear()V

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v1

    const-string v2, "playedToday"

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/JsonValue;->iterator()Lcom/badlogic/gdx/utils/JsonValue$JsonIterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/utils/JsonValue;

    iget-object v6, p0, Lcom/prineside/tdi2/managers/AuthManager$9;->k:Lcom/prineside/tdi2/managers/AuthManager;

    iget-object v6, v6, Lcom/prineside/tdi2/managers/AuthManager;->xpPlayedLevels:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/JsonValue;->asString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/prineside/tdi2/managers/AuthManager$9;->k:Lcom/prineside/tdi2/managers/AuthManager;

    sget-object v2, Lcom/prineside/tdi2/managers/AuthManager$XpStatus;->NORMAL:Lcom/prineside/tdi2/managers/AuthManager$XpStatus;

    iput-object v2, v1, Lcom/prineside/tdi2/managers/AuthManager;->xpStatus:Lcom/prineside/tdi2/managers/AuthManager$XpStatus;

    const-string v1, "status"

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v6, "bonus"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/prineside/tdi2/managers/AuthManager$9;->k:Lcom/prineside/tdi2/managers/AuthManager;

    sget-object v1, Lcom/prineside/tdi2/managers/AuthManager$XpStatus;->BONUS:Lcom/prineside/tdi2/managers/AuthManager$XpStatus;

    iput-object v1, v0, Lcom/prineside/tdi2/managers/AuthManager;->xpStatus:Lcom/prineside/tdi2/managers/AuthManager$XpStatus;

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "reduced"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/prineside/tdi2/managers/AuthManager$9;->k:Lcom/prineside/tdi2/managers/AuthManager;

    sget-object v1, Lcom/prineside/tdi2/managers/AuthManager$XpStatus;->REDUCED:Lcom/prineside/tdi2/managers/AuthManager$XpStatus;

    iput-object v1, v0, Lcom/prineside/tdi2/managers/AuthManager;->xpStatus:Lcom/prineside/tdi2/managers/AuthManager$XpStatus;

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/prineside/tdi2/managers/AuthManager$9;->a:Lcom/badlogic/gdx/utils/JsonValue;

    const-string v1, "newSession"

    invoke-virtual {v0, v1, v5}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/prineside/tdi2/managers/AuthManager$9;->k:Lcom/prineside/tdi2/managers/AuthManager;

    iget-object v1, p0, Lcom/prineside/tdi2/managers/AuthManager$9;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/prineside/tdi2/managers/AuthManager;->r(Lcom/prineside/tdi2/managers/AuthManager;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/prineside/tdi2/managers/AuthManager$9;->k:Lcom/prineside/tdi2/managers/AuthManager;

    invoke-static {v1}, Lcom/prineside/tdi2/managers/AuthManager;->y(Lcom/prineside/tdi2/managers/AuthManager;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "AuthManager"

    const-string v2, "session refreshed"

    invoke-static {v1, v2}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget-object v1, p0, Lcom/prineside/tdi2/managers/AuthManager$9;->k:Lcom/prineside/tdi2/managers/AuthManager;

    invoke-static {v1, v0}, Lcom/prineside/tdi2/managers/AuthManager;->r(Lcom/prineside/tdi2/managers/AuthManager;Ljava/lang/String;)Ljava/lang/String;

    :goto_2
    iget-object v0, p0, Lcom/prineside/tdi2/managers/AuthManager$9;->k:Lcom/prineside/tdi2/managers/AuthManager;

    iget v1, v0, Lcom/prineside/tdi2/managers/AuthManager;->tempXp:I

    if-nez v1, :cond_5

    iget-object v0, v0, Lcom/prineside/tdi2/managers/AuthManager;->localXpPlayedLevels:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    :cond_5
    iget-object v0, p0, Lcom/prineside/tdi2/managers/AuthManager$9;->k:Lcom/prineside/tdi2/managers/AuthManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/AuthManager;->save()V

    iget-object v0, p0, Lcom/prineside/tdi2/managers/AuthManager$9;->k:Lcom/prineside/tdi2/managers/AuthManager;

    sget-object v1, Lcom/prineside/tdi2/managers/AuthManager$SignInStatus;->SIGNED_IN:Lcom/prineside/tdi2/managers/AuthManager$SignInStatus;

    invoke-static {v0, v1}, Lcom/prineside/tdi2/managers/AuthManager;->s(Lcom/prineside/tdi2/managers/AuthManager;Lcom/prineside/tdi2/managers/AuthManager$SignInStatus;)V

    iget-object v0, p0, Lcom/prineside/tdi2/managers/AuthManager$9;->k:Lcom/prineside/tdi2/managers/AuthManager;

    iput-boolean v4, v0, Lcom/prineside/tdi2/managers/AuthManager;->loadedAnyStateFromServer:Z

    iget-object v0, p0, Lcom/prineside/tdi2/managers/AuthManager$9;->d:Ljava/lang/Runnable;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_6
    new-instance v0, Lcom/prineside/tdi2/managers/AuthManager$9$1;

    invoke-direct {v0, p0}, Lcom/prineside/tdi2/managers/AuthManager$9$1;-><init>(Lcom/prineside/tdi2/managers/AuthManager$9;)V

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Lcom/badlogic/gdx/utils/Timer;->schedule(Lcom/badlogic/gdx/utils/Timer$Task;F)Lcom/badlogic/gdx/utils/Timer$Task;

    iget-object v0, p0, Lcom/prineside/tdi2/managers/AuthManager$9;->k:Lcom/prineside/tdi2/managers/AuthManager;

    invoke-static {v0}, Lcom/prineside/tdi2/managers/AuthManager;->u(Lcom/prineside/tdi2/managers/AuthManager;)Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->begin()V

    :goto_3
    iget-object v0, p0, Lcom/prineside/tdi2/managers/AuthManager$9;->k:Lcom/prineside/tdi2/managers/AuthManager;

    invoke-static {v0}, Lcom/prineside/tdi2/managers/AuthManager;->v(Lcom/prineside/tdi2/managers/AuthManager;)Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    move-result-object v0

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v3, v0, :cond_7

    iget-object v0, p0, Lcom/prineside/tdi2/managers/AuthManager$9;->k:Lcom/prineside/tdi2/managers/AuthManager;

    invoke-static {v0}, Lcom/prineside/tdi2/managers/AuthManager;->w(Lcom/prineside/tdi2/managers/AuthManager;)Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/managers/AuthManager$AuthManagerListener;

    invoke-interface {v0}, Lcom/prineside/tdi2/managers/AuthManager$AuthManagerListener;->stateUpdated()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_7
    iget-object v0, p0, Lcom/prineside/tdi2/managers/AuthManager$9;->k:Lcom/prineside/tdi2/managers/AuthManager;

    invoke-static {v0}, Lcom/prineside/tdi2/managers/AuthManager;->x(Lcom/prineside/tdi2/managers/AuthManager;)Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->end()V

    return-void
.end method
