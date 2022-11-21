.class public Lcom/prineside/tdi2/managers/AuthManager;
.super Lcom/prineside/tdi2/Manager$ManagerWithListeners;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
    serializer = Lcom/prineside/tdi2/managers/AuthManager$Serializer;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/managers/AuthManager$SignInStatus;,
        Lcom/prineside/tdi2/managers/AuthManager$NewsResponse;,
        Lcom/prineside/tdi2/managers/AuthManager$HttpQueuedRequest;,
        Lcom/prineside/tdi2/managers/AuthManager$XpStatus;,
        Lcom/prineside/tdi2/managers/AuthManager$AuthManagerListener;,
        Lcom/prineside/tdi2/managers/AuthManager$SaveGameResult;,
        Lcom/prineside/tdi2/managers/AuthManager$SignUpResult;,
        Lcom/prineside/tdi2/managers/AuthManager$ReceivedIssuedItemsResponse;,
        Lcom/prineside/tdi2/managers/AuthManager$InUpSignInResult;,
        Lcom/prineside/tdi2/managers/AuthManager$SignInResult;,
        Lcom/prineside/tdi2/managers/AuthManager$PasswordResetResult;,
        Lcom/prineside/tdi2/managers/AuthManager$Serializer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/prineside/tdi2/Manager$ManagerWithListeners<",
        "Lcom/prineside/tdi2/managers/AuthManager$AuthManagerListener;",
        ">;"
    }
.end annotation


# static fields
.field public static final AUTO_SIGN_UP_HANDLER:Lcom/prineside/tdi2/utils/ObjectRetriever;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/prineside/tdi2/utils/ObjectRetriever<",
            "Lcom/prineside/tdi2/managers/AuthManager$InUpSignInResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public A:Z

.field public B:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/utils/ObjectRetriever<",
            "Lcom/prineside/tdi2/managers/AuthManager$NewsResponse;",
            ">;>;"
        }
    .end annotation
.end field

.field public C:Lcom/prineside/tdi2/managers/AuthManager$NewsResponse;

.field public D:Z

.field public E:F

.field public F:Lcom/prineside/tdi2/managers/AuthManager$HttpQueuedRequest;

.field public G:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/managers/AuthManager$HttpQueuedRequest;",
            ">;"
        }
    .end annotation
.end field

.field public b:Lcom/prineside/tdi2/managers/AuthManager$SignInStatus;

.field public bonusLevelXpCoeff:F

.field public bonusXpLevel:Ljava/lang/String;

.field public bonusXpRemaining:I

.field public currentLevelXp:I

.field public d:Ljava/lang/String;

.field public gameUpdateNotificationShown:Z

.field public k:Z

.field public lastStateUpdateTimestamp:I

.field public loadedAnyStateFromServer:Z

.field public localXpPlayedLevels:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public maxProfileLevel:I

.field public nextLevelXp:I

.field public nextXpRefreshTimestamp:I

.field public ofMeritPrestigeAvailable:Z

.field public p:Ljava/lang/String;

.field public playedLevelXpCoeff:F

.field public profileLevel:I

.field public q:Ljava/lang/String;

.field public r:Ljava/lang/String;

.field public regularXpRemaining:I

.field public s:Ljava/lang/String;

.field public t:Ljava/lang/String;

.field public tempXp:I

.field public u:J

.field public v:Ljava/lang/String;

.field public w:Z

.field public x:Z

.field public xpPlayedLevels:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public xpStatus:Lcom/prineside/tdi2/managers/AuthManager$XpStatus;

.field public y:I

.field public z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/prineside/tdi2/managers/AuthManager$1;

    invoke-direct {v0}, Lcom/prineside/tdi2/managers/AuthManager$1;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/managers/AuthManager;->AUTO_SIGN_UP_HANDLER:Lcom/prineside/tdi2/utils/ObjectRetriever;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const-class v0, Ljava/lang/String;

    invoke-direct {p0}, Lcom/prineside/tdi2/Manager$ManagerWithListeners;-><init>()V

    sget-object v1, Lcom/prineside/tdi2/managers/AuthManager$SignInStatus;->NOT_SIGNED_IN:Lcom/prineside/tdi2/managers/AuthManager$SignInStatus;

    iput-object v1, p0, Lcom/prineside/tdi2/managers/AuthManager;->b:Lcom/prineside/tdi2/managers/AuthManager$SignInStatus;

    sget-object v1, Lcom/prineside/tdi2/managers/AuthManager$XpStatus;->NORMAL:Lcom/prineside/tdi2/managers/AuthManager$XpStatus;

    iput-object v1, p0, Lcom/prineside/tdi2/managers/AuthManager;->xpStatus:Lcom/prineside/tdi2/managers/AuthManager$XpStatus;

    new-instance v1, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v1, v0}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/prineside/tdi2/managers/AuthManager;->xpPlayedLevels:Lcom/badlogic/gdx/utils/Array;

    new-instance v1, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v1, v0}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/prineside/tdi2/managers/AuthManager;->localXpPlayedLevels:Lcom/badlogic/gdx/utils/Array;

    const/4 v0, -0x1

    iput v0, p0, Lcom/prineside/tdi2/managers/AuthManager;->y:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/prineside/tdi2/managers/AuthManager;->A:Z

    new-instance v1, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v1, p0, Lcom/prineside/tdi2/managers/AuthManager;->B:Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x0

    iput v1, p0, Lcom/prineside/tdi2/managers/AuthManager;->E:F

    iput-boolean v0, p0, Lcom/prineside/tdi2/managers/AuthManager;->gameUpdateNotificationShown:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prineside/tdi2/managers/AuthManager;->F:Lcom/prineside/tdi2/managers/AuthManager$HttpQueuedRequest;

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const-class v1, Lcom/prineside/tdi2/managers/AuthManager$HttpQueuedRequest;

    const/4 v2, 0x1

    invoke-direct {v0, v2, v2, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(ZILjava/lang/Class;)V

    iput-object v0, p0, Lcom/prineside/tdi2/managers/AuthManager;->G:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/AuthManager;->fallBackToOfflineCache()V

    return-void
.end method

.method public static synthetic A(Lcom/prineside/tdi2/managers/AuthManager;Lcom/prineside/tdi2/managers/AuthManager$HttpQueuedRequest;)Lcom/prineside/tdi2/managers/AuthManager$HttpQueuedRequest;
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/managers/AuthManager;->F:Lcom/prineside/tdi2/managers/AuthManager$HttpQueuedRequest;

    return-object p1
.end method

.method public static synthetic B(Lcom/prineside/tdi2/managers/AuthManager;)V
    .locals 0

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/AuthManager;->T()V

    return-void
.end method

.method public static synthetic C(Lcom/prineside/tdi2/managers/AuthManager;)V
    .locals 0

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/AuthManager;->H()V

    return-void
.end method

.method public static synthetic D(Lcom/prineside/tdi2/managers/AuthManager;)Lcom/prineside/tdi2/managers/AuthManager$NewsResponse;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/managers/AuthManager;->C:Lcom/prineside/tdi2/managers/AuthManager$NewsResponse;

    return-object p0
.end method

.method public static synthetic E(Lcom/prineside/tdi2/managers/AuthManager;Lcom/prineside/tdi2/managers/AuthManager$NewsResponse;)Lcom/prineside/tdi2/managers/AuthManager$NewsResponse;
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/managers/AuthManager;->C:Lcom/prineside/tdi2/managers/AuthManager$NewsResponse;

    return-object p1
.end method

.method public static synthetic F(Lcom/prineside/tdi2/managers/AuthManager;)Lcom/badlogic/gdx/utils/Array;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/managers/AuthManager;->B:Lcom/badlogic/gdx/utils/Array;

    return-object p0
.end method

.method public static synthetic L(ZLjava/lang/String;)V
    .locals 2

    const-string v0, "AuthManager"

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "progress backup: response: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p0, "progress backup: failed"

    invoke-static {v0, p0}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private synthetic M(Ljava/lang/String;Ljava/lang/Runnable;ZLjava/lang/String;)V
    .locals 4

    const/4 v0, 0x1

    const-string v1, "AuthManager"

    if-eqz p3, :cond_2

    :try_start_0
    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/AuthManager;->K()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-static {v1, p4}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance p3, Lcom/badlogic/gdx/utils/JsonReader;

    invoke-direct {p3}, Lcom/badlogic/gdx/utils/JsonReader;-><init>()V

    invoke-virtual {p3, p4}, Lcom/badlogic/gdx/utils/JsonReader;->parse(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object p3

    const-string v2, "status"

    invoke-virtual {p3, v2}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "success"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string p4, "sessionData"

    invoke-virtual {p3, p4}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object p3

    const-string p4, "playerid"

    invoke-virtual {p3, p4}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    new-instance v2, Lcom/prineside/tdi2/managers/AuthManager$9;

    invoke-direct {v2, p0, p3, p1, p2}, Lcom/prineside/tdi2/managers/AuthManager$9;-><init>(Lcom/prineside/tdi2/managers/AuthManager;Lcom/badlogic/gdx/utils/JsonValue;Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-virtual {p0, p4, v2}, Lcom/prineside/tdi2/managers/AuthManager;->J(Ljava/lang/String;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "can\'t load session: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/prineside/tdi2/managers/AuthManager$SignInStatus;->NOT_SIGNED_IN:Lcom/prineside/tdi2/managers/AuthManager$SignInStatus;

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/managers/AuthManager;->S(Lcom/prineside/tdi2/managers/AuthManager$SignInStatus;)V

    iput-boolean v0, p0, Lcom/prineside/tdi2/managers/AuthManager;->loadedAnyStateFromServer:Z

    if-eqz p2, :cond_3

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Exception: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3, p1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/AuthManager;->fallBackToOfflineCache()V

    iput-boolean v0, p0, Lcom/prineside/tdi2/managers/AuthManager;->loadedAnyStateFromServer:Z

    if-eqz p2, :cond_3

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_2
    const-string p1, "Error continuing session"

    invoke-static {v1, p1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/AuthManager;->fallBackToOfflineCache()V

    iput-boolean v0, p0, Lcom/prineside/tdi2/managers/AuthManager;->loadedAnyStateFromServer:Z

    if-eqz p2, :cond_3

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :cond_3
    :goto_0
    return-void
.end method

.method private synthetic N()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/prineside/tdi2/managers/AuthManager;->loadStateFromServer(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic O(ZLjava/lang/String;)V
    .locals 2

    const-string v0, "AuthManager"

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/AuthManager;->K()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Response: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    sget-object p1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance p2, Lcom/prineside/tdi2/managers/e;

    invoke-direct {p2, p0}, Lcom/prineside/tdi2/managers/e;-><init>(Lcom/prineside/tdi2/managers/AuthManager;)V

    invoke-interface {p1, p2}, Lcom/badlogic/gdx/Application;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    const-string p1, "Failed to get of merit badge"

    invoke-static {v0, p1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private synthetic P(Lcom/prineside/tdi2/utils/ObjectRetriever;ZLjava/lang/String;)V
    .locals 3

    const-string v0, "AuthManager"

    if-eqz p2, :cond_2

    :try_start_0
    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/AuthManager;->K()Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Response: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance p2, Lcom/badlogic/gdx/utils/JsonReader;

    invoke-direct {p2}, Lcom/badlogic/gdx/utils/JsonReader;-><init>()V

    invoke-virtual {p2, p3}, Lcom/badlogic/gdx/utils/JsonReader;->parse(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object p2

    const-string v1, "status"

    invoke-virtual {p2, v1}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "success"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object p3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p3, p3, Lcom/prineside/tdi2/Game;->actionResolver:Lcom/prineside/tdi2/ActionResolver;

    const-string v1, "password"

    invoke-interface {p3, v1}, Lcom/prineside/tdi2/ActionResolver;->logSignedUp(Ljava/lang/String;)V

    const-string p3, "sessionid"

    invoke-virtual {p2, p3}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lcom/prineside/tdi2/managers/AuthManager$18;

    invoke-direct {p3, p0, p1}, Lcom/prineside/tdi2/managers/AuthManager$18;-><init>(Lcom/prineside/tdi2/managers/AuthManager;Lcom/prineside/tdi2/utils/ObjectRetriever;)V

    invoke-virtual {p0, p2, p3}, Lcom/prineside/tdi2/managers/AuthManager;->loadStateFromServer(Ljava/lang/String;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to sign up: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/AuthManager;->signOut()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz p1, :cond_3

    :try_start_1
    const-string p3, "signUpResult"

    invoke-virtual {p2, p3}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/prineside/tdi2/managers/AuthManager$SignUpResult;->valueOf(Ljava/lang/String;)Lcom/prineside/tdi2/managers/AuthManager$SignUpResult;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/prineside/tdi2/utils/ObjectRetriever;->retrieved(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    :try_start_2
    sget-object p2, Lcom/prineside/tdi2/managers/AuthManager$SignUpResult;->OTHER_ERROR:Lcom/prineside/tdi2/managers/AuthManager$SignUpResult;

    invoke-interface {p1, p2}, Lcom/prineside/tdi2/utils/ObjectRetriever;->retrieved(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception p2

    const-string p3, "Failed to parse response"

    invoke-static {v0, p3, p2}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/AuthManager;->signOut()V

    sget-object p2, Lcom/prineside/tdi2/managers/AuthManager$SignUpResult;->OTHER_ERROR:Lcom/prineside/tdi2/managers/AuthManager$SignUpResult;

    invoke-interface {p1, p2}, Lcom/prineside/tdi2/utils/ObjectRetriever;->retrieved(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    const-string p2, "Failed to sign up"

    invoke-static {v0, p2}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/AuthManager;->signOut()V

    sget-object p2, Lcom/prineside/tdi2/managers/AuthManager$SignUpResult;->OTHER_ERROR:Lcom/prineside/tdi2/managers/AuthManager$SignUpResult;

    invoke-interface {p1, p2}, Lcom/prineside/tdi2/utils/ObjectRetriever;->retrieved(Ljava/lang/Object;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public static synthetic a(Lcom/prineside/tdi2/managers/AuthManager;Ljava/lang/String;Ljava/lang/Runnable;ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/prineside/tdi2/managers/AuthManager;->M(Ljava/lang/String;Ljava/lang/Runnable;ZLjava/lang/String;)V

    return-void
.end method

.method public static synthetic b(ZLjava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/prineside/tdi2/managers/AuthManager;->L(ZLjava/lang/String;)V

    return-void
.end method

.method public static synthetic c(Lcom/prineside/tdi2/managers/AuthManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/managers/AuthManager;->N()V

    return-void
.end method

.method public static synthetic d(Lcom/prineside/tdi2/managers/AuthManager;Lcom/prineside/tdi2/utils/ObjectRetriever;ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/prineside/tdi2/managers/AuthManager;->P(Lcom/prineside/tdi2/utils/ObjectRetriever;ZLjava/lang/String;)V

    return-void
.end method

.method public static synthetic e(Lcom/prineside/tdi2/managers/AuthManager;ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/prineside/tdi2/managers/AuthManager;->O(ZLjava/lang/String;)V

    return-void
.end method

.method public static synthetic f(Lcom/prineside/tdi2/managers/AuthManager;)V
    .locals 0

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/AuthManager;->Q()V

    return-void
.end method

.method public static synthetic g(Lcom/prineside/tdi2/managers/AuthManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/prineside/tdi2/managers/AuthManager;->D:Z

    return p1
.end method

.method public static synthetic h(Lcom/prineside/tdi2/managers/AuthManager;II)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/prineside/tdi2/managers/AuthManager;->R(II)V

    return-void
.end method

.method public static synthetic i(Lcom/prineside/tdi2/managers/AuthManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/prineside/tdi2/managers/AuthManager;->A:Z

    return p1
.end method

.method public static synthetic j(Lcom/prineside/tdi2/managers/AuthManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/prineside/tdi2/managers/AuthManager;->w:Z

    return p1
.end method

.method public static synthetic k(Lcom/prineside/tdi2/managers/AuthManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/prineside/tdi2/managers/AuthManager;->x:Z

    return p1
.end method

.method public static synthetic l(Lcom/prineside/tdi2/managers/AuthManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/managers/AuthManager;->v:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic m(Lcom/prineside/tdi2/managers/AuthManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/managers/AuthManager;->t:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic n(Lcom/prineside/tdi2/managers/AuthManager;J)J
    .locals 0

    iput-wide p1, p0, Lcom/prineside/tdi2/managers/AuthManager;->u:J

    return-wide p1
.end method

.method public static synthetic o(Lcom/prineside/tdi2/managers/AuthManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/managers/AuthManager;->q:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic p(Lcom/prineside/tdi2/managers/AuthManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/managers/AuthManager;->r:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic q(Lcom/prineside/tdi2/managers/AuthManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/managers/AuthManager;->s:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic r(Lcom/prineside/tdi2/managers/AuthManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/managers/AuthManager;->p:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic s(Lcom/prineside/tdi2/managers/AuthManager;Lcom/prineside/tdi2/managers/AuthManager$SignInStatus;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/managers/AuthManager;->S(Lcom/prineside/tdi2/managers/AuthManager$SignInStatus;)V

    return-void
.end method

.method public static synthetic t(Lcom/prineside/tdi2/managers/AuthManager;)V
    .locals 0

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/AuthManager;->I()V

    return-void
.end method

.method public static synthetic u(Lcom/prineside/tdi2/managers/AuthManager;)Lcom/badlogic/gdx/utils/DelayedRemovalArray;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/Manager$ManagerWithListeners;->a:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    return-object p0
.end method

.method public static synthetic v(Lcom/prineside/tdi2/managers/AuthManager;)Lcom/badlogic/gdx/utils/DelayedRemovalArray;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/Manager$ManagerWithListeners;->a:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    return-object p0
.end method

.method public static synthetic w(Lcom/prineside/tdi2/managers/AuthManager;)Lcom/badlogic/gdx/utils/DelayedRemovalArray;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/Manager$ManagerWithListeners;->a:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    return-object p0
.end method

.method public static synthetic x(Lcom/prineside/tdi2/managers/AuthManager;)Lcom/badlogic/gdx/utils/DelayedRemovalArray;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/Manager$ManagerWithListeners;->a:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    return-object p0
.end method

.method public static synthetic y(Lcom/prineside/tdi2/managers/AuthManager;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/AuthManager;->K()Z

    move-result p0

    return p0
.end method

.method public static synthetic z(Lcom/prineside/tdi2/managers/AuthManager;)Lcom/prineside/tdi2/managers/AuthManager$HttpQueuedRequest;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/managers/AuthManager;->F:Lcom/prineside/tdi2/managers/AuthManager$HttpQueuedRequest;

    return-object p0
.end method


# virtual methods
.method public final G()V
    .locals 3

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    invoke-virtual {v0}, Lcom/prineside/tdi2/Game;->assertInMainThread()V

    :try_start_0
    iget-object v0, p0, Lcom/prineside/tdi2/managers/AuthManager;->F:Lcom/prineside/tdi2/managers/AuthManager$HttpQueuedRequest;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/badlogic/gdx/Gdx;->net:Lcom/badlogic/gdx/Net;

    invoke-static {v0}, Lcom/prineside/tdi2/managers/AuthManager$HttpQueuedRequest;->b(Lcom/prineside/tdi2/managers/AuthManager$HttpQueuedRequest;)Lcom/badlogic/gdx/Net$HttpRequest;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/Net;->cancelHttpRequest(Lcom/badlogic/gdx/Net$HttpRequest;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prineside/tdi2/managers/AuthManager;->F:Lcom/prineside/tdi2/managers/AuthManager$HttpQueuedRequest;

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/managers/AuthManager;->G:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AuthManager"

    const-string v2, "failed to cancel all requests"

    invoke-static {v1, v2, v0}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final H()V
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    invoke-virtual {v0}, Lcom/prineside/tdi2/Game;->assertInMainThread()V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/ProgressManager;->existsAnyProgress()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/prineside/tdi2/managers/AuthManager$4;

    invoke-direct {v0, p0}, Lcom/prineside/tdi2/managers/AuthManager$4;-><init>(Lcom/prineside/tdi2/managers/AuthManager;)V

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/managers/AuthManager;->getCloudSavedGamesList(Lcom/prineside/tdi2/utils/ObjectRetriever;)V

    :cond_0
    return-void
.end method

.method public final I()V
    .locals 2

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/AuthManager;->getCloudSaveSlotId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Lcom/prineside/tdi2/managers/AuthManager$8;

    invoke-direct {v0, p0}, Lcom/prineside/tdi2/managers/AuthManager$8;-><init>(Lcom/prineside/tdi2/managers/AuthManager;)V

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/managers/AuthManager;->getCloudSavedGamesList(Lcom/prineside/tdi2/utils/ObjectRetriever;)V

    :cond_0
    return-void
.end method

.method public final J(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 3

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->preferencesManager:Lcom/prineside/tdi2/managers/PreferencesManager;

    sget-object v1, Lcom/prineside/tdi2/Config;->PREFERENCES_NAME_PROGRESS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/PreferencesManager;->getInstance(Ljava/lang/String;)Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;

    move-result-object v0

    const-string v1, "authProgressOwnerId"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "AuthManager"

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "owner id: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "authProgressOwnerNickname"

    invoke-virtual {v0, p1, v1}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p2, p2, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object p2, p2, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "current_progress_owner_mismatch_alert"

    invoke-virtual {p2, p1, v0}, Lcom/prineside/tdi2/utils/I18NBundle;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p2, p2, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object p2, p2, Lcom/prineside/tdi2/managers/UiManager;->dialog:Lcom/prineside/tdi2/ui/shared/Dialog;

    invoke-virtual {p2, p1}, Lcom/prineside/tdi2/ui/shared/Dialog;->showAlert(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "preferences owner confirmed: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :goto_1
    return-void
.end method

.method public final K()Z
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/SettingsManager;->isInDebugMode()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/SettingsManager;->isInDebugDetailedMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final Q()V
    .locals 5

    const-string v0, "false"

    const/4 v1, -0x1

    iput v1, p0, Lcom/prineside/tdi2/managers/AuthManager;->y:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/prineside/tdi2/managers/AuthManager;->z:I

    iput-boolean v1, p0, Lcom/prineside/tdi2/managers/AuthManager;->k:Z

    iput-boolean v1, p0, Lcom/prineside/tdi2/managers/AuthManager;->A:Z

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->preferencesManager:Lcom/prineside/tdi2/managers/PreferencesManager;

    sget-object v2, Lcom/prineside/tdi2/Config;->PREFERENCES_NAME_SETTINGS:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/PreferencesManager;->getInstance(Ljava/lang/String;)Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "cloudSaveSlot"

    invoke-virtual {v1, v3, v2}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    new-instance v4, Lcom/badlogic/gdx/utils/JsonReader;

    invoke-direct {v4}, Lcom/badlogic/gdx/utils/JsonReader;-><init>()V

    invoke-virtual {v4, v3}, Lcom/badlogic/gdx/utils/JsonReader;->parse(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v3

    const-string v4, "id"

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/prineside/tdi2/managers/AuthManager;->y:I

    const-string v4, "timestamp"

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/prineside/tdi2/managers/AuthManager;->z:I

    :cond_0
    const-string v3, "authAutoSaves"

    invoke-virtual {v1, v3, v0}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/prineside/tdi2/managers/AuthManager;->k:Z

    const-string v3, "hasUnsavedProgressForCloud"

    invoke-virtual {v1, v3, v0}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/prineside/tdi2/managers/AuthManager;->A:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v3, "AuthManager"

    invoke-static {v3, v1, v0}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    invoke-virtual {p0, v2, v2}, Lcom/prineside/tdi2/managers/AuthManager;->loadStateFromServer(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final R(II)V
    .locals 4

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    invoke-virtual {v0}, Lcom/prineside/tdi2/Game;->assertInMainThread()V

    iput p1, p0, Lcom/prineside/tdi2/managers/AuthManager;->y:I

    iput p2, p0, Lcom/prineside/tdi2/managers/AuthManager;->z:I

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->preferencesManager:Lcom/prineside/tdi2/managers/PreferencesManager;

    sget-object v1, Lcom/prineside/tdi2/Config;->PREFERENCES_NAME_SETTINGS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/PreferencesManager;->getInstance(Ljava/lang/String;)Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;

    move-result-object v0

    new-instance v1, Lcom/badlogic/gdx/utils/Json;

    sget-object v2, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;->json:Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/Json;-><init>(Lcom/badlogic/gdx/utils/JsonWriter$OutputType;)V

    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/Json;->setWriter(Ljava/io/Writer;)V

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Json;->writeObjectStart()V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v3, "id"

    invoke-virtual {v1, v3, p1}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "timestamp"

    invoke-virtual {v1, p2, p1}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Json;->writeObjectEnd()V

    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "cloudSaveSlot"

    invoke-virtual {v0, p2, p1}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->flush()V

    return-void
.end method

.method public final S(Lcom/prineside/tdi2/managers/AuthManager$SignInStatus;)V
    .locals 4

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    invoke-virtual {v0}, Lcom/prineside/tdi2/Game;->assertInMainThread()V

    iget-object v0, p0, Lcom/prineside/tdi2/managers/AuthManager;->b:Lcom/prineside/tdi2/managers/AuthManager$SignInStatus;

    iput-object p1, p0, Lcom/prineside/tdi2/managers/AuthManager;->b:Lcom/prineside/tdi2/managers/AuthManager$SignInStatus;

    sget-object v1, Lcom/prineside/tdi2/managers/AuthManager$SignInStatus;->SIGNED_IN:Lcom/prineside/tdi2/managers/AuthManager$SignInStatus;

    if-ne p1, v1, :cond_0

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/AuthManager;->U()V

    :cond_0
    if-ne v0, p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/AuthManager;->K()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "signIn status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AuthManager"

    invoke-static {v1, v0}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/prineside/tdi2/Manager$ManagerWithListeners;->a:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->begin()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/prineside/tdi2/Manager$ManagerWithListeners;->a:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v2, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v2, :cond_3

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prineside/tdi2/managers/AuthManager$AuthManagerListener;

    invoke-interface {v1}, Lcom/prineside/tdi2/managers/AuthManager$AuthManagerListener;->signInStatusUpdated()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->end()V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    if-eqz v0, :cond_6

    iget-object v0, v0, Lcom/prineside/tdi2/managers/UiManager;->notifications:Lcom/prineside/tdi2/ui/shared/Notifications;

    if-eqz v0, :cond_6

    sget-object v0, Lcom/prineside/tdi2/managers/AuthManager$21;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const-string v0, " "

    const/4 v1, 0x1

    if-eq p1, v1, :cond_5

    const/4 v1, 0x2

    if-eq p1, v1, :cond_4

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object p1, p1, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v0, "not_signed_in"

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v2, "signed_in_offline_as"

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/AuthManager;->getNickname()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v2, "signed_in_online_as"

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/AuthManager;->getNickname()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/UiManager;->notifications:Lcom/prineside/tdi2/ui/shared/Notifications;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v2, "icon-user"

    invoke-virtual {v0, v2}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v0

    const/4 v2, 0x0

    sget-object v3, Lcom/prineside/tdi2/enums/StaticSoundType;->NOTIFICATION:Lcom/prineside/tdi2/enums/StaticSoundType;

    invoke-virtual {v1, p1, v0, v2, v3}, Lcom/prineside/tdi2/ui/shared/Notifications;->add(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/graphics/Color;Lcom/prineside/tdi2/enums/StaticSoundType;)Lcom/prineside/tdi2/ui/shared/Notifications$Notification;

    :cond_6
    return-void
.end method

.method public final T()V
    .locals 4

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    invoke-virtual {v0}, Lcom/prineside/tdi2/Game;->assertInMainThread()V

    iget-object v0, p0, Lcom/prineside/tdi2/managers/AuthManager;->G:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/prineside/tdi2/managers/AuthManager;->F:Lcom/prineside/tdi2/managers/AuthManager$HttpQueuedRequest;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/badlogic/gdx/Gdx;->net:Lcom/badlogic/gdx/Net;

    invoke-static {v0}, Lcom/prineside/tdi2/managers/AuthManager$HttpQueuedRequest;->b(Lcom/prineside/tdi2/managers/AuthManager$HttpQueuedRequest;)Lcom/badlogic/gdx/Net$HttpRequest;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/Net;->cancelHttpRequest(Lcom/badlogic/gdx/Net$HttpRequest;)V

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/managers/AuthManager;->G:Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->removeIndex(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/managers/AuthManager$HttpQueuedRequest;

    iput-object v0, p0, Lcom/prineside/tdi2/managers/AuthManager;->F:Lcom/prineside/tdi2/managers/AuthManager$HttpQueuedRequest;

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/AuthManager;->K()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Net: starting request: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/prineside/tdi2/managers/AuthManager;->F:Lcom/prineside/tdi2/managers/AuthManager$HttpQueuedRequest;

    invoke-static {v1}, Lcom/prineside/tdi2/managers/AuthManager$HttpQueuedRequest;->a(Lcom/prineside/tdi2/managers/AuthManager$HttpQueuedRequest;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AuthManager"

    invoke-static {v1, v0}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/prineside/tdi2/managers/AuthManager;->F:Lcom/prineside/tdi2/managers/AuthManager$HttpQueuedRequest;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->net:Lcom/badlogic/gdx/Net;

    invoke-static {v0}, Lcom/prineside/tdi2/managers/AuthManager$HttpQueuedRequest;->b(Lcom/prineside/tdi2/managers/AuthManager$HttpQueuedRequest;)Lcom/badlogic/gdx/Net$HttpRequest;

    move-result-object v2

    new-instance v3, Lcom/prineside/tdi2/managers/AuthManager$3;

    invoke-direct {v3, p0, v0}, Lcom/prineside/tdi2/managers/AuthManager$3;-><init>(Lcom/prineside/tdi2/managers/AuthManager;Lcom/prineside/tdi2/managers/AuthManager$HttpQueuedRequest;)V

    invoke-interface {v1, v2, v3}, Lcom/badlogic/gdx/Net;->sendHttpRequest(Lcom/badlogic/gdx/Net$HttpRequest;Lcom/badlogic/gdx/Net$HttpResponseListener;)V

    :cond_2
    return-void
.end method

.method public final U()V
    .locals 5

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->preferencesManager:Lcom/prineside/tdi2/managers/PreferencesManager;

    sget-object v1, Lcom/prineside/tdi2/Config;->PREFERENCES_NAME_PROGRESS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/PreferencesManager;->getInstance(Ljava/lang/String;)Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;

    move-result-object v0

    const-string v1, "authProgressOwnerId"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "AuthManager"

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/AuthManager;->getPlayerId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v2, v4, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "owner id not changed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/AuthManager;->getPlayerId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/AuthManager;->getPlayerId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/AuthManager;->getNickname()Ljava/lang/String;

    move-result-object v1

    const-string v2, "authProgressOwnerNickname"

    invoke-virtual {v0, v2, v1}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->flush()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "owner id saved in preferences: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/AuthManager;->getPlayerId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public anyRequestRunning()Z
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    invoke-virtual {v0}, Lcom/prineside/tdi2/Game;->assertInMainThread()V

    iget-object v0, p0, Lcom/prineside/tdi2/managers/AuthManager;->F:Lcom/prineside/tdi2/managers/AuthManager$HttpQueuedRequest;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/prineside/tdi2/managers/AuthManager;->G:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public backupProgressToServer()V
    .locals 7

    const-string v0, "AuthManager"

    :try_start_0
    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    invoke-virtual {v1}, Lcom/prineside/tdi2/Game;->assertInMainThread()V

    iget-object v1, p0, Lcom/prineside/tdi2/managers/AuthManager;->b:Lcom/prineside/tdi2/managers/AuthManager$SignInStatus;

    sget-object v2, Lcom/prineside/tdi2/managers/AuthManager$SignInStatus;->SIGNED_IN:Lcom/prineside/tdi2/managers/AuthManager$SignInStatus;

    if-eq v1, v2, :cond_0

    const-string v1, "progress backup: canceled, not signed in"

    invoke-static {v0, v1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/ProgressManager;->isDeveloperModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "progress backup: canceled, dev mode"

    invoke-static {v0, v1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-static {}, Lcom/prineside/tdi2/Config;->isHeadless()Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    :cond_2
    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->preferencesManager:Lcom/prineside/tdi2/managers/PreferencesManager;

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/PreferencesManager;->isTemporarySettingsApplied()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "progress backup: canceled, temp settings"

    invoke-static {v0, v1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/ProgressManager;->getAllItems()Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    move-result-object v1

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-nez v1, :cond_4

    const-string v1, "progress backup: canceled, no items"

    invoke-static {v0, v1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->actionResolver:Lcom/prineside/tdi2/ActionResolver;

    invoke-interface {v1}, Lcom/prineside/tdi2/ActionResolver;->isAppModified()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-static {}, Lcom/prineside/tdi2/Config;->isModdingMode()Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_0

    :cond_5
    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/SettingsManager;->saveIfRequired()V

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/ProgressManager;->saveIfRequired()V

    new-instance v1, Lcom/badlogic/gdx/Net$HttpRequest;

    const-string v2, "POST"

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/Net$HttpRequest;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/prineside/tdi2/Config;->AUTH_BACKUP_PROGRESS_URL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/Net$HttpRequest;->setUrl(Ljava/lang/String;)V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "sessionid"

    iget-object v4, p0, Lcom/prineside/tdi2/managers/AuthManager;->p:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "gameStartHash"

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v4}, Lcom/prineside/tdi2/managers/SettingsManager;->getGameStartHash()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "progress"

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->preferencesManager:Lcom/prineside/tdi2/managers/PreferencesManager;

    new-instance v5, Lcom/badlogic/gdx/utils/Array;

    sget-object v6, Lcom/prineside/tdi2/Config;->PREFERENCES_NAMES:[Ljava/lang/String;

    invoke-direct {v5, v6}, Lcom/badlogic/gdx/utils/Array;-><init>([Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Lcom/prineside/tdi2/managers/PreferencesManager;->saveSnapshotAsString(Lcom/badlogic/gdx/utils/Array;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2}, Lcom/badlogic/gdx/net/HttpParametersUtils;->convertHttpParameters(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/Net$HttpRequest;->setContent(Ljava/lang/String;)V

    new-instance v2, Lcom/prineside/tdi2/managers/AuthManager$HttpQueuedRequest;

    const-string v3, "backupProgressToServer"

    new-instance v4, Lcom/prineside/tdi2/managers/d;

    invoke-direct {v4}, Lcom/prineside/tdi2/managers/d;-><init>()V

    invoke-direct {v2, v3, v1, v4}, Lcom/prineside/tdi2/managers/AuthManager$HttpQueuedRequest;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/Net$HttpRequest;Lcom/prineside/tdi2/managers/AuthManager$HttpQueuedRequest$Listener;)V

    invoke-virtual {p0, v2}, Lcom/prineside/tdi2/managers/AuthManager;->queueRequest(Lcom/prineside/tdi2/managers/AuthManager$HttpQueuedRequest;)V

    goto :goto_1

    :cond_6
    :goto_0
    const-string v1, "progress backup: canceled, modified game"

    invoke-static {v0, v1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    const-string v2, "backupProgressToServer failed"

    invoke-static {v0, v2, v1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public clearPools()V
    .locals 0

    return-void
.end method

.method public deleteGameFromServer(ILcom/prineside/tdi2/utils/ObjectRetriever;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/prineside/tdi2/utils/ObjectRetriever<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/prineside/tdi2/Config;->isHeadless()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/managers/AuthManager;->b:Lcom/prineside/tdi2/managers/AuthManager$SignInStatus;

    sget-object v1, Lcom/prineside/tdi2/managers/AuthManager$SignInStatus;->SIGNED_IN:Lcom/prineside/tdi2/managers/AuthManager$SignInStatus;

    if-ne v0, v1, :cond_1

    new-instance v0, Lcom/badlogic/gdx/Net$HttpRequest;

    const-string v1, "POST"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/Net$HttpRequest;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/prineside/tdi2/Config;->AUTH_DELETE_GAME_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/Net$HttpRequest;->setUrl(Ljava/lang/String;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v2, p0, Lcom/prineside/tdi2/managers/AuthManager;->p:Ljava/lang/String;

    const-string v3, "sessionid"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v2, "slotId"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Lcom/badlogic/gdx/net/HttpParametersUtils;->convertHttpParameters(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/Net$HttpRequest;->setContent(Ljava/lang/String;)V

    new-instance p1, Lcom/prineside/tdi2/managers/AuthManager$HttpQueuedRequest;

    new-instance v1, Lcom/prineside/tdi2/managers/AuthManager$11;

    invoke-direct {v1, p0, p2}, Lcom/prineside/tdi2/managers/AuthManager$11;-><init>(Lcom/prineside/tdi2/managers/AuthManager;Lcom/prineside/tdi2/utils/ObjectRetriever;)V

    const-string p2, "deleteGameFromServer"

    invoke-direct {p1, p2, v0, v1}, Lcom/prineside/tdi2/managers/AuthManager$HttpQueuedRequest;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/Net$HttpRequest;Lcom/prineside/tdi2/managers/AuthManager$HttpQueuedRequest$Listener;)V

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/managers/AuthManager;->queueRequest(Lcom/prineside/tdi2/managers/AuthManager$HttpQueuedRequest;)V

    goto :goto_0

    :cond_1
    const-string p1, "AuthManager"

    const-string v0, "not signed in, can\'t delete saved game"

    invoke-static {p1, v0}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p2, p1}, Lcom/prineside/tdi2/utils/ObjectRetriever;->retrieved(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public fallBackToOfflineCache()V
    .locals 9

    const-string v0, "xpPlayedLevels"

    const-string v1, "AuthManager"

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    invoke-virtual {v2}, Lcom/prineside/tdi2/Game;->assertInMainThread()V

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->preferencesManager:Lcom/prineside/tdi2/managers/PreferencesManager;

    sget-object v3, Lcom/prineside/tdi2/Config;->PREFERENCES_NAME_SETTINGS:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/managers/PreferencesManager;->getInstance(Ljava/lang/String;)Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;

    move-result-object v2

    const-string v3, "authSession"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    :try_start_0
    new-instance v3, Lcom/badlogic/gdx/utils/JsonReader;

    invoke-direct {v3}, Lcom/badlogic/gdx/utils/JsonReader;-><init>()V

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/utils/JsonReader;->parse(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v2

    const-string v3, "id"

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/prineside/tdi2/managers/AuthManager;->p:Ljava/lang/String;

    const-string v3, "nickname"

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/prineside/tdi2/managers/AuthManager;->v:Ljava/lang/String;

    const-string v3, "updateTimestamp"

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/JsonValue;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/prineside/tdi2/managers/AuthManager;->u:J

    const-string v3, "playerId"

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/prineside/tdi2/managers/AuthManager;->q:Ljava/lang/String;

    const-string v3, "inviteCode"

    invoke-virtual {v2, v3, v4}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/prineside/tdi2/managers/AuthManager;->r:Ljava/lang/String;

    const-string v3, "invitedBy"

    invoke-virtual {v2, v3, v4}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/prineside/tdi2/managers/AuthManager;->s:Ljava/lang/String;

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/prineside/tdi2/managers/AuthManager;->x:Z

    const-string v5, ""

    iput-object v5, p0, Lcom/prineside/tdi2/managers/AuthManager;->t:Ljava/lang/String;

    sget-object v5, Lcom/prineside/tdi2/managers/AuthManager$XpStatus;->values:[Lcom/prineside/tdi2/managers/AuthManager$XpStatus;

    const-string v6, "xpStatus"

    sget-object v7, Lcom/prineside/tdi2/managers/AuthManager$XpStatus;->NORMAL:Lcom/prineside/tdi2/managers/AuthManager$XpStatus;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    invoke-virtual {v2, v6, v7}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;I)I

    move-result v6

    aget-object v5, v5, v6

    iput-object v5, p0, Lcom/prineside/tdi2/managers/AuthManager;->xpStatus:Lcom/prineside/tdi2/managers/AuthManager$XpStatus;

    const-string v5, "currentLevelXp"

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/prineside/tdi2/managers/AuthManager;->currentLevelXp:I

    const-string v5, "bonusXpRemaining"

    invoke-virtual {v2, v5, v6}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/prineside/tdi2/managers/AuthManager;->bonusXpRemaining:I

    const-string v5, "regularXpRemaining"

    invoke-virtual {v2, v5, v6}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/prineside/tdi2/managers/AuthManager;->regularXpRemaining:I

    const-string v5, "nextXpRefresh"

    invoke-static {}, Lcom/prineside/tdi2/Game;->getTimestampSeconds()I

    move-result v7

    const v8, 0x69780

    add-int/2addr v7, v8

    invoke-virtual {v2, v5, v7}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/prineside/tdi2/managers/AuthManager;->nextXpRefreshTimestamp:I

    const-string v5, "tempXp"

    invoke-virtual {v2, v5, v6}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/prineside/tdi2/managers/AuthManager;->tempXp:I

    iput-boolean v6, p0, Lcom/prineside/tdi2/managers/AuthManager;->ofMeritPrestigeAvailable:Z

    const-string v5, "nextLevelXp"

    const/16 v6, 0x3e8

    invoke-virtual {v2, v5, v6}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/prineside/tdi2/managers/AuthManager;->nextLevelXp:I

    const-string v5, "profileLevel"

    invoke-virtual {v2, v5, v3}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/prineside/tdi2/managers/AuthManager;->profileLevel:I

    const-string v3, "maxProfileLevel"

    const/16 v5, 0x1e

    invoke-virtual {v2, v3, v5}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/prineside/tdi2/managers/AuthManager;->maxProfileLevel:I

    const-string v3, "playedLevelXpCoeff"

    const/high16 v5, 0x3f000000    # 0.5f

    invoke-virtual {v2, v3, v5}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;F)F

    move-result v3

    iput v3, p0, Lcom/prineside/tdi2/managers/AuthManager;->playedLevelXpCoeff:F

    const-string v3, "bonusLevelXpCoeff"

    const/high16 v5, 0x3fc00000    # 1.5f

    invoke-virtual {v2, v3, v5}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;F)F

    move-result v3

    iput v3, p0, Lcom/prineside/tdi2/managers/AuthManager;->bonusLevelXpCoeff:F

    const-string v3, "bonusXpLevel"

    invoke-virtual {v2, v3, v4}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/prineside/tdi2/managers/AuthManager;->bonusXpLevel:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->iterator()Lcom/badlogic/gdx/utils/JsonValue$JsonIterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/utils/JsonValue;

    iget-object v3, p0, Lcom/prineside/tdi2/managers/AuthManager;->xpPlayedLevels:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/JsonValue;->asString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/prineside/tdi2/managers/AuthManager$SignInStatus;->SIGNED_IN_OFFLINE:Lcom/prineside/tdi2/managers/AuthManager$SignInStatus;

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/managers/AuthManager;->S(Lcom/prineside/tdi2/managers/AuthManager$SignInStatus;)V

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/AuthManager;->K()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "offline mode"

    invoke-static {v1, v0}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v2, "failed to parse cached authSession"

    invoke-static {v1, v2, v0}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/AuthManager;->signOut()V

    :cond_1
    :goto_1
    return-void
.end method

.method public getAvatar(I)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .locals 3

    const/16 v0, 0x40

    const/16 v1, 0x20

    if-eq p1, v1, :cond_0

    if-eq p1, v0, :cond_0

    const/16 v1, 0x80

    if-eq p1, v1, :cond_0

    const/16 p1, 0x40

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/managers/AuthManager;->b:Lcom/prineside/tdi2/managers/AuthManager$SignInStatus;

    sget-object v1, Lcom/prineside/tdi2/managers/AuthManager$SignInStatus;->SIGNED_IN:Lcom/prineside/tdi2/managers/AuthManager$SignInStatus;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/prineside/tdi2/managers/AuthManager$SignInStatus;->SIGNED_IN_OFFLINE:Lcom/prineside/tdi2/managers/AuthManager$SignInStatus;

    if-ne v0, v1, :cond_2

    :cond_1
    iget-boolean v0, p0, Lcom/prineside/tdi2/managers/AuthManager;->w:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/prineside/tdi2/managers/AuthManager;->q:Ljava/lang/String;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/prineside/tdi2/Config;->AVATAR_WEB_TEXTURES_URL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/prineside/tdi2/managers/AuthManager;->q:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ".png"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/prineside/tdi2/managers/AssetManager;->loadWebTexture(Ljava/lang/String;Z)Lcom/prineside/tdi2/managers/AssetManager$WebTextureRegion;

    move-result-object p1

    return-object p1

    :cond_2
    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v0, "icon-user"

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object p1

    return-object p1
.end method

.method public getCloudSaveSlotId()I
    .locals 1

    iget v0, p0, Lcom/prineside/tdi2/managers/AuthManager;->y:I

    return v0
.end method

.method public getCloudSaveSlotTimestamp()I
    .locals 2

    iget v0, p0, Lcom/prineside/tdi2/managers/AuthManager;->y:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lcom/prineside/tdi2/managers/AuthManager;->z:I

    return v0
.end method

.method public getCloudSavedGamesList(Lcom/prineside/tdi2/utils/ObjectRetriever;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/prineside/tdi2/utils/ObjectRetriever<",
            "Lcom/badlogic/gdx/utils/JsonValue;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/prineside/tdi2/Config;->isHeadless()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/managers/AuthManager;->b:Lcom/prineside/tdi2/managers/AuthManager$SignInStatus;

    sget-object v1, Lcom/prineside/tdi2/managers/AuthManager$SignInStatus;->SIGNED_IN:Lcom/prineside/tdi2/managers/AuthManager$SignInStatus;

    if-eq v0, v1, :cond_2

    const-string v0, "AuthManager"

    const-string v1, "unable to load list of cloud saved games while not signed in"

    invoke-static {v0, v1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/prineside/tdi2/utils/ObjectRetriever;->retrieved(Ljava/lang/Object;)V

    :cond_1
    return-void

    :cond_2
    new-instance v0, Lcom/badlogic/gdx/Net$HttpRequest;

    const-string v1, "POST"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/Net$HttpRequest;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/prineside/tdi2/Config;->GET_SAVED_GAMES_LIST_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/Net$HttpRequest;->setUrl(Ljava/lang/String;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v2, p0, Lcom/prineside/tdi2/managers/AuthManager;->p:Ljava/lang/String;

    if-eqz v2, :cond_3

    const-string v3, "sessionid"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Lcom/badlogic/gdx/net/HttpParametersUtils;->convertHttpParameters(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/Net$HttpRequest;->setContent(Ljava/lang/String;)V

    new-instance v1, Lcom/prineside/tdi2/managers/AuthManager$HttpQueuedRequest;

    new-instance v2, Lcom/prineside/tdi2/managers/AuthManager$17;

    invoke-direct {v2, p0, p1}, Lcom/prineside/tdi2/managers/AuthManager$17;-><init>(Lcom/prineside/tdi2/managers/AuthManager;Lcom/prineside/tdi2/utils/ObjectRetriever;)V

    const-string p1, "getCloudSavedGamesList"

    invoke-direct {v1, p1, v0, v2}, Lcom/prineside/tdi2/managers/AuthManager$HttpQueuedRequest;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/Net$HttpRequest;Lcom/prineside/tdi2/managers/AuthManager$HttpQueuedRequest$Listener;)V

    invoke-virtual {p0, v1}, Lcom/prineside/tdi2/managers/AuthManager;->queueRequest(Lcom/prineside/tdi2/managers/AuthManager$HttpQueuedRequest;)V

    return-void

    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "sessionId is null"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getEmailHint()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/managers/AuthManager;->t:Ljava/lang/String;

    return-object v0
.end method

.method public getInviteCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/managers/AuthManager;->r:Ljava/lang/String;

    return-object v0
.end method

.method public getInvitedById()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/managers/AuthManager;->s:Ljava/lang/String;

    return-object v0
.end method

.method public getNews(Lcom/prineside/tdi2/utils/ObjectRetriever;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/prineside/tdi2/utils/ObjectRetriever<",
            "Lcom/prineside/tdi2/managers/AuthManager$NewsResponse;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/prineside/tdi2/Config;->isHeadless()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    invoke-virtual {v0}, Lcom/prineside/tdi2/Game;->assertInMainThread()V

    iget-object v0, p0, Lcom/prineside/tdi2/managers/AuthManager;->C:Lcom/prineside/tdi2/managers/AuthManager$NewsResponse;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/prineside/tdi2/Game;->getTimestampSeconds()I

    move-result v0

    iget-object v1, p0, Lcom/prineside/tdi2/managers/AuthManager;->C:Lcom/prineside/tdi2/managers/AuthManager$NewsResponse;

    iget v2, v1, Lcom/prineside/tdi2/managers/AuthManager$NewsResponse;->cachedAt:I

    sub-int/2addr v0, v2

    const/16 v2, 0x258

    if-ge v0, v2, :cond_1

    invoke-interface {p1, v1}, Lcom/prineside/tdi2/utils/ObjectRetriever;->retrieved(Ljava/lang/Object;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prineside/tdi2/managers/AuthManager;->C:Lcom/prineside/tdi2/managers/AuthManager$NewsResponse;

    :cond_2
    iget-object v0, p0, Lcom/prineside/tdi2/managers/AuthManager;->B:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public getNickname()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/AuthManager;->isSignedIn()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Guest"

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/managers/AuthManager;->v:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayerId()Ljava/lang/String;
    .locals 6

    const-string v0, "AuthManager"

    const-string v1, "playerid"

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    invoke-virtual {v2}, Lcom/prineside/tdi2/Game;->assertInMainThread()V

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/AuthManager;->isSignedIn()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/managers/AuthManager;->q:Ljava/lang/String;

    return-object v0

    :cond_0
    iget-object v2, p0, Lcom/prineside/tdi2/managers/AuthManager;->d:Ljava/lang/String;

    if-nez v2, :cond_3

    const/4 v2, 0x0

    :try_start_0
    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->preferencesManager:Lcom/prineside/tdi2/managers/PreferencesManager;

    sget-object v4, Lcom/prineside/tdi2/Config;->PREFERENCES_NAME_SETTINGS:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/prineside/tdi2/managers/PreferencesManager;->getInstance(Ljava/lang/String;)Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3, v1, v2}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/prineside/tdi2/managers/AuthManager;->d:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x20

    if-le v4, v5, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid playerid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/prineside/tdi2/managers/AuthManager;->d:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/prineside/tdi2/Logger;->report(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->remove(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/prineside/tdi2/managers/AuthManager;->d:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    const-string v4, "Failed to load offline player ID"

    invoke-static {v0, v4, v3}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object v2, p0, Lcom/prineside/tdi2/managers/AuthManager;->d:Ljava/lang/String;

    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/prineside/tdi2/managers/AuthManager;->d:Ljava/lang/String;

    if-nez v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "G-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/prineside/tdi2/utils/FastRandom;->generateUniqueDistinguishableId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/prineside/tdi2/managers/AuthManager;->d:Ljava/lang/String;

    :try_start_1
    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->preferencesManager:Lcom/prineside/tdi2/managers/PreferencesManager;

    sget-object v3, Lcom/prineside/tdi2/Config;->PREFERENCES_NAME_SETTINGS:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/managers/PreferencesManager;->getInstance(Ljava/lang/String;)Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;

    move-result-object v2

    iget-object v3, p0, Lcom/prineside/tdi2/managers/AuthManager;->d:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playerId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/prineside/tdi2/managers/AuthManager;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lcom/prineside/tdi2/managers/AuthManager;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayerIdCached()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/AuthManager;->isSignedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/managers/AuthManager;->q:Ljava/lang/String;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/managers/AuthManager;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getProfileLevelTextures(I)Lcom/badlogic/gdx/utils/Array;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/utils/TextureRegionConfig;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    :cond_0
    new-instance v1, Lcom/badlogic/gdx/utils/Array;

    const-class v2, Lcom/prineside/tdi2/utils/TextureRegionConfig;

    invoke-direct {v1, v0, v0, v2}, Lcom/badlogic/gdx/utils/Array;-><init>(ZILjava/lang/Class;)V

    const/16 v0, 0x1e

    if-gt p1, v0, :cond_1

    new-instance v0, Lcom/prineside/tdi2/utils/TextureRegionConfig;

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "player-level-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/prineside/tdi2/utils/TextureRegionConfig;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/prineside/tdi2/utils/TextureRegionConfig;

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v3, "player-level-max"

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/prineside/tdi2/utils/TextureRegionConfig;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0xc

    rsub-int/lit8 v0, v0, 0x40

    int-to-float v0, v0

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float v0, v0, v2

    const/high16 v2, 0x40000000    # 2.0f

    sub-float/2addr v0, v2

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "player-level-digit-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v6

    new-instance v3, Lcom/prineside/tdi2/utils/TextureRegionConfig;

    int-to-float v4, v2

    const/high16 v5, 0x41400000    # 12.0f

    mul-float v4, v4, v5

    add-float/2addr v4, v0

    const/high16 v5, 0x3c800000    # 0.015625f

    mul-float v7, v4, v5

    const/high16 v8, 0x3e980000    # 0.296875f

    const/high16 v9, 0x3e000000    # 0.125f

    const/high16 v10, 0x3e300000    # 0.171875f

    const/high16 v11, 0x3e800000    # 0.25f

    const/high16 v12, 0x3eb00000    # 0.34375f

    move-object v5, v3

    invoke-direct/range {v5 .. v12}, Lcom/prineside/tdi2/utils/TextureRegionConfig;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFF)V

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v1
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/managers/AuthManager;->p:Ljava/lang/String;

    return-object v0
.end method

.method public getSignInStatus()Lcom/prineside/tdi2/managers/AuthManager$SignInStatus;
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/managers/AuthManager;->b:Lcom/prineside/tdi2/managers/AuthManager$SignInStatus;

    return-object v0
.end method

.method public handleAutoSave()V
    .locals 2

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/AuthManager;->isAutoSavesEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/AuthManager;->getCloudSaveSlotId()I

    move-result v0

    new-instance v1, Lcom/prineside/tdi2/managers/AuthManager$13;

    invoke-direct {v1, p0}, Lcom/prineside/tdi2/managers/AuthManager$13;-><init>(Lcom/prineside/tdi2/managers/AuthManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/prineside/tdi2/managers/AuthManager;->saveGameToServer(ILcom/prineside/tdi2/utils/ObjectRetriever;)V

    :cond_0
    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/AuthManager;->backupProgressToServer()V

    return-void
.end method

.method public hasUnsavedProgressForCloud()Z
    .locals 1

    iget-boolean v0, p0, Lcom/prineside/tdi2/managers/AuthManager;->A:Z

    return v0
.end method

.method public isAutoSavesEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/prineside/tdi2/managers/AuthManager;->k:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/ProgressManager;->isDeveloperModeEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPasswordSet()Z
    .locals 1

    iget-boolean v0, p0, Lcom/prineside/tdi2/managers/AuthManager;->x:Z

    return v0
.end method

.method public isSignedIn()Z
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/managers/AuthManager;->b:Lcom/prineside/tdi2/managers/AuthManager$SignInStatus;

    sget-object v1, Lcom/prineside/tdi2/managers/AuthManager$SignInStatus;->SIGNED_IN:Lcom/prineside/tdi2/managers/AuthManager$SignInStatus;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/prineside/tdi2/managers/AuthManager$SignInStatus;->SIGNED_IN_OFFLINE:Lcom/prineside/tdi2/managers/AuthManager$SignInStatus;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public loadSavedGameFromServer(I)V
    .locals 4

    invoke-static {}, Lcom/prineside/tdi2/Config;->isHeadless()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/ProgressManager;->isDeveloperModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, p1, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/UiManager;->notifications:Lcom/prineside/tdi2/ui/shared/Notifications;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v1, "icon-times"

    invoke-virtual {p1, v1}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object p1

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$RED;->P800:Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Lcom/prineside/tdi2/enums/StaticSoundType;->FAIL:Lcom/prineside/tdi2/enums/StaticSoundType;

    const-string v3, "Could not load game while being in Developer mode, please reset your progress first"

    invoke-virtual {v0, v3, p1, v1, v2}, Lcom/prineside/tdi2/ui/shared/Notifications;->add(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/graphics/Color;Lcom/prineside/tdi2/enums/StaticSoundType;)Lcom/prineside/tdi2/ui/shared/Notifications$Notification;

    return-void

    :cond_1
    iget-object v0, p0, Lcom/prineside/tdi2/managers/AuthManager;->b:Lcom/prineside/tdi2/managers/AuthManager$SignInStatus;

    sget-object v1, Lcom/prineside/tdi2/managers/AuthManager$SignInStatus;->SIGNED_IN:Lcom/prineside/tdi2/managers/AuthManager$SignInStatus;

    if-ne v0, v1, :cond_2

    new-instance v0, Lcom/badlogic/gdx/Net$HttpRequest;

    const-string v1, "POST"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/Net$HttpRequest;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/prineside/tdi2/Config;->AUTH_LOAD_GAME_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/Net$HttpRequest;->setUrl(Ljava/lang/String;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v2, p0, Lcom/prineside/tdi2/managers/AuthManager;->p:Ljava/lang/String;

    const-string v3, "sessionid"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v2, "slotId"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Lcom/badlogic/gdx/net/HttpParametersUtils;->convertHttpParameters(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/Net$HttpRequest;->setContent(Ljava/lang/String;)V

    new-instance p1, Lcom/prineside/tdi2/managers/AuthManager$HttpQueuedRequest;

    new-instance v1, Lcom/prineside/tdi2/managers/AuthManager$12;

    invoke-direct {v1, p0}, Lcom/prineside/tdi2/managers/AuthManager$12;-><init>(Lcom/prineside/tdi2/managers/AuthManager;)V

    const-string v2, "loadSavedGameFromServer"

    invoke-direct {p1, v2, v0, v1}, Lcom/prineside/tdi2/managers/AuthManager$HttpQueuedRequest;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/Net$HttpRequest;Lcom/prineside/tdi2/managers/AuthManager$HttpQueuedRequest$Listener;)V

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/managers/AuthManager;->queueRequest(Lcom/prineside/tdi2/managers/AuthManager$HttpQueuedRequest;)V

    goto :goto_0

    :cond_2
    const-string p1, "AuthManager"

    const-string v0, "not signed in, can\'t load saved game"

    invoke-static {p1, v0}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public loadStateFromServer(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 5

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->actionResolver:Lcom/prineside/tdi2/ActionResolver;

    invoke-interface {v0}, Lcom/prineside/tdi2/ActionResolver;->isAppModified()Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "AuthManager"

    if-nez v0, :cond_5

    invoke-static {}, Lcom/prineside/tdi2/Config;->isHeadless()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {}, Lcom/prineside/tdi2/Config;->isModdingMode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    invoke-virtual {v0}, Lcom/prineside/tdi2/Game;->assertInMainThread()V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->preferencesManager:Lcom/prineside/tdi2/managers/PreferencesManager;

    sget-object v3, Lcom/prineside/tdi2/Config;->PREFERENCES_NAME_SETTINGS:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/prineside/tdi2/managers/PreferencesManager;->getInstance(Ljava/lang/String;)Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;

    move-result-object v0

    if-nez p1, :cond_1

    const/4 v3, 0x0

    const-string v4, "authSession"

    invoke-virtual {v0, v4, v3}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance p1, Lcom/badlogic/gdx/utils/JsonReader;

    invoke-direct {p1}, Lcom/badlogic/gdx/utils/JsonReader;-><init>()V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/JsonReader;->parse(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object p1

    const-string v0, "id"

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_1
    if-eqz p1, :cond_3

    new-instance v0, Lcom/badlogic/gdx/Net$HttpRequest;

    const-string v1, "POST"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/Net$HttpRequest;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/prineside/tdi2/Config;->AUTH_GET_SESSION_INFO_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/Net$HttpRequest;->setUrl(Ljava/lang/String;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v3, "sessionid"

    invoke-virtual {v1, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Lcom/badlogic/gdx/net/HttpParametersUtils;->convertHttpParameters(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/Net$HttpRequest;->setContent(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/AuthManager;->K()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getting status of session "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    new-instance v1, Lcom/prineside/tdi2/managers/AuthManager$HttpQueuedRequest;

    new-instance v2, Lcom/prineside/tdi2/managers/c;

    invoke-direct {v2, p0, p1, p2}, Lcom/prineside/tdi2/managers/c;-><init>(Lcom/prineside/tdi2/managers/AuthManager;Ljava/lang/String;Ljava/lang/Runnable;)V

    const-string p1, "loadStateFromServer"

    invoke-direct {v1, p1, v0, v2}, Lcom/prineside/tdi2/managers/AuthManager$HttpQueuedRequest;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/Net$HttpRequest;Lcom/prineside/tdi2/managers/AuthManager$HttpQueuedRequest$Listener;)V

    invoke-virtual {p0, v1}, Lcom/prineside/tdi2/managers/AuthManager;->queueRequest(Lcom/prineside/tdi2/managers/AuthManager$HttpQueuedRequest;)V

    goto :goto_0

    :cond_3
    sget-object p1, Lcom/prineside/tdi2/managers/AuthManager$SignInStatus;->NOT_SIGNED_IN:Lcom/prineside/tdi2/managers/AuthManager$SignInStatus;

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/managers/AuthManager;->S(Lcom/prineside/tdi2/managers/AuthManager$SignInStatus;)V

    iput-boolean v1, p0, Lcom/prineside/tdi2/managers/AuthManager;->loadedAnyStateFromServer:Z

    if-eqz p2, :cond_4

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :cond_4
    :goto_0
    return-void

    :cond_5
    :goto_1
    const-string p1, "loadStateFromServer - app is modified or headless"

    invoke-static {v2, p1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/prineside/tdi2/managers/AuthManager;->loadedAnyStateFromServer:Z

    return-void
.end method

.method public notifyNeedCloudSave(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/prineside/tdi2/managers/AuthManager;->A:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Lcom/prineside/tdi2/managers/AuthManager;->A:Z

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->preferencesManager:Lcom/prineside/tdi2/managers/PreferencesManager;

    sget-object v1, Lcom/prineside/tdi2/Config;->PREFERENCES_NAME_SETTINGS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/PreferencesManager;->getInstance(Ljava/lang/String;)Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;

    move-result-object v0

    if-eqz p1, :cond_0

    const-string p1, "true"

    goto :goto_0

    :cond_0
    const-string p1, "false"

    :goto_0
    const-string v1, "hasUnsavedProgressForCloud"

    invoke-virtual {v0, v1, p1}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->flush()V

    :cond_1
    return-void
.end method

.method public onSteamAuthFinished()V
    .locals 0

    return-void
.end method

.method public postRender(F)V
    .locals 3

    iget v0, p0, Lcom/prineside/tdi2/managers/AuthManager;->E:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/prineside/tdi2/managers/AuthManager;->E:F

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/AuthManager;->getSignInStatus()Lcom/prineside/tdi2/managers/AuthManager$SignInStatus;

    move-result-object p1

    sget-object v0, Lcom/prineside/tdi2/managers/AuthManager$SignInStatus;->SIGNED_IN:Lcom/prineside/tdi2/managers/AuthManager$SignInStatus;

    if-eq p1, v0, :cond_0

    iget p1, p0, Lcom/prineside/tdi2/managers/AuthManager;->E:F

    const/high16 v0, 0x40e00000    # 7.0f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_3

    :cond_0
    iget-object p1, p0, Lcom/prineside/tdi2/managers/AuthManager;->B:Lcom/badlogic/gdx/utils/Array;

    iget p1, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/prineside/tdi2/managers/AuthManager;->D:Z

    if-nez p1, :cond_3

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/prineside/tdi2/managers/AuthManager;->D:Z

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/AuthManager;->K()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "AuthManager"

    const-string v0, "requesting latest news..."

    invoke-static {p1, v0}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    new-instance p1, Lcom/badlogic/gdx/Net$HttpRequest;

    const-string v0, "POST"

    invoke-direct {p1, v0}, Lcom/badlogic/gdx/Net$HttpRequest;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/prineside/tdi2/Config;->GET_LATEST_NEWS_URL:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/Net$HttpRequest;->setUrl(Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/LocaleManager;->getLocale()Ljava/lang/String;

    move-result-object v1

    const-string v2, "locale"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/AuthManager;->getSessionId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/AuthManager;->getSessionId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sessionid"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-static {v0}, Lcom/badlogic/gdx/net/HttpParametersUtils;->convertHttpParameters(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/Net$HttpRequest;->setContent(Ljava/lang/String;)V

    new-instance v0, Lcom/prineside/tdi2/managers/AuthManager$HttpQueuedRequest;

    new-instance v1, Lcom/prineside/tdi2/managers/AuthManager$7;

    invoke-direct {v1, p0}, Lcom/prineside/tdi2/managers/AuthManager$7;-><init>(Lcom/prineside/tdi2/managers/AuthManager;)V

    const-string v2, "getLatestNews"

    invoke-direct {v0, v2, p1, v1}, Lcom/prineside/tdi2/managers/AuthManager$HttpQueuedRequest;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/Net$HttpRequest;Lcom/prineside/tdi2/managers/AuthManager$HttpQueuedRequest$Listener;)V

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/managers/AuthManager;->queueRequest(Lcom/prineside/tdi2/managers/AuthManager$HttpQueuedRequest;)V

    :cond_3
    return-void
.end method

.method public queueRequest(Lcom/prineside/tdi2/managers/AuthManager$HttpQueuedRequest;)V
    .locals 3

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    invoke-virtual {v0}, Lcom/prineside/tdi2/Game;->assertInMainThread()V

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/AuthManager;->K()Z

    move-result v0

    const-string v1, "AuthManager"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Net: queueRequest: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/prineside/tdi2/managers/AuthManager$HttpQueuedRequest;->a(Lcom/prineside/tdi2/managers/AuthManager$HttpQueuedRequest;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/AuthManager;->anyRequestRunning()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/AuthManager;->K()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "     queueRequest: starting request"

    invoke-static {v1, v0}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/prineside/tdi2/managers/AuthManager;->G:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/AuthManager;->T()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/prineside/tdi2/managers/AuthManager;->G:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/AuthManager;->K()Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "     queueRequest: other request in progress, waiting"

    invoke-static {v1, p1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public receiveIssuedItemsFromServer(Lcom/prineside/tdi2/utils/ObjectRetriever;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/prineside/tdi2/utils/ObjectRetriever<",
            "Lcom/prineside/tdi2/managers/AuthManager$ReceivedIssuedItemsResponse;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/prineside/tdi2/Config;->isHeadless()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/AuthManager;->getSessionId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    invoke-virtual {v0}, Lcom/prineside/tdi2/Game;->assertInMainThread()V

    new-instance v0, Lcom/badlogic/gdx/Net$HttpRequest;

    const-string v1, "POST"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/Net$HttpRequest;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/prineside/tdi2/Config;->RECEIVE_ISSUED_ITEMS_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/Net$HttpRequest;->setUrl(Ljava/lang/String;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/AuthManager;->getSessionId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "sessionid"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Lcom/badlogic/gdx/net/HttpParametersUtils;->convertHttpParameters(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/Net$HttpRequest;->setContent(Ljava/lang/String;)V

    new-instance v1, Lcom/prineside/tdi2/managers/AuthManager$HttpQueuedRequest;

    new-instance v2, Lcom/prineside/tdi2/managers/AuthManager$20;

    invoke-direct {v2, p0, p1}, Lcom/prineside/tdi2/managers/AuthManager$20;-><init>(Lcom/prineside/tdi2/managers/AuthManager;Lcom/prineside/tdi2/utils/ObjectRetriever;)V

    const-string p1, "receiveIssuedItemsFromServer"

    invoke-direct {v1, p1, v0, v2}, Lcom/prineside/tdi2/managers/AuthManager$HttpQueuedRequest;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/Net$HttpRequest;Lcom/prineside/tdi2/managers/AuthManager$HttpQueuedRequest$Listener;)V

    invoke-virtual {p0, v1}, Lcom/prineside/tdi2/managers/AuthManager;->queueRequest(Lcom/prineside/tdi2/managers/AuthManager$HttpQueuedRequest;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public reloadPlayerId()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prineside/tdi2/managers/AuthManager;->q:Ljava/lang/String;

    return-void
.end method

.method public requestNicknameChange(Ljava/lang/String;Lcom/prineside/tdi2/utils/ObjectRetriever;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/prineside/tdi2/utils/ObjectRetriever<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/AuthManager;->getSessionId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p2, p1}, Lcom/prineside/tdi2/utils/ObjectRetriever;->retrieved(Ljava/lang/Object;)V

    :cond_0
    return-void

    :cond_1
    new-instance v0, Lcom/badlogic/gdx/Net$HttpRequest;

    const-string v1, "POST"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/Net$HttpRequest;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/prineside/tdi2/Config;->AUTH_NICKNAME_CHANGE_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/Net$HttpRequest;->setUrl(Ljava/lang/String;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "nickname"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/AuthManager;->getSessionId()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/AuthManager;->getSessionId()Ljava/lang/String;

    move-result-object p1

    const-string v2, "sessionid"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-static {v1}, Lcom/badlogic/gdx/net/HttpParametersUtils;->convertHttpParameters(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/Net$HttpRequest;->setContent(Ljava/lang/String;)V

    new-instance p1, Lcom/prineside/tdi2/managers/AuthManager$HttpQueuedRequest;

    new-instance v1, Lcom/prineside/tdi2/managers/AuthManager$14;

    invoke-direct {v1, p0, p2}, Lcom/prineside/tdi2/managers/AuthManager$14;-><init>(Lcom/prineside/tdi2/managers/AuthManager;Lcom/prineside/tdi2/utils/ObjectRetriever;)V

    const-string p2, "changeNickname"

    invoke-direct {p1, p2, v0, v1}, Lcom/prineside/tdi2/managers/AuthManager$HttpQueuedRequest;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/Net$HttpRequest;Lcom/prineside/tdi2/managers/AuthManager$HttpQueuedRequest$Listener;)V

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/managers/AuthManager;->queueRequest(Lcom/prineside/tdi2/managers/AuthManager$HttpQueuedRequest;)V

    return-void
.end method

.method public requestOfMeritPrestige()V
    .locals 4

    invoke-static {}, Lcom/prineside/tdi2/Config;->isHeadless()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/managers/AuthManager;->b:Lcom/prineside/tdi2/managers/AuthManager$SignInStatus;

    sget-object v1, Lcom/prineside/tdi2/managers/AuthManager$SignInStatus;->SIGNED_IN:Lcom/prineside/tdi2/managers/AuthManager$SignInStatus;

    if-eq v0, v1, :cond_1

    const-string v0, "AuthManager"

    const-string v1, "requestOfMeritPrestige - not signed in"

    invoke-static {v0, v1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance v0, Lcom/badlogic/gdx/Net$HttpRequest;

    const-string v1, "POST"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/Net$HttpRequest;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/prineside/tdi2/Config;->REQUEST_OF_MERIT_BADGE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/Net$HttpRequest;->setUrl(Ljava/lang/String;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v2, p0, Lcom/prineside/tdi2/managers/AuthManager;->p:Ljava/lang/String;

    if-eqz v2, :cond_2

    const-string v3, "sessionid"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Lcom/badlogic/gdx/net/HttpParametersUtils;->convertHttpParameters(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/Net$HttpRequest;->setContent(Ljava/lang/String;)V

    new-instance v1, Lcom/prineside/tdi2/managers/AuthManager$HttpQueuedRequest;

    new-instance v2, Lcom/prineside/tdi2/managers/b;

    invoke-direct {v2, p0}, Lcom/prineside/tdi2/managers/b;-><init>(Lcom/prineside/tdi2/managers/AuthManager;)V

    const-string v3, "requestOfMeritPrestige"

    invoke-direct {v1, v3, v0, v2}, Lcom/prineside/tdi2/managers/AuthManager$HttpQueuedRequest;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/Net$HttpRequest;Lcom/prineside/tdi2/managers/AuthManager$HttpQueuedRequest$Listener;)V

    invoke-virtual {p0, v1}, Lcom/prineside/tdi2/managers/AuthManager;->queueRequest(Lcom/prineside/tdi2/managers/AuthManager$HttpQueuedRequest;)V

    return-void

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "sessionId is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public resetPassword(Ljava/lang/String;Lcom/prineside/tdi2/utils/ObjectRetriever;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/prineside/tdi2/utils/ObjectRetriever<",
            "Lcom/prineside/tdi2/managers/AuthManager$PasswordResetResult;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->actionResolver:Lcom/prineside/tdi2/ActionResolver;

    invoke-interface {v0}, Lcom/prineside/tdi2/ActionResolver;->isAppModified()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/prineside/tdi2/Config;->isModdingMode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/badlogic/gdx/Net$HttpRequest;

    const-string v1, "POST"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/Net$HttpRequest;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/prineside/tdi2/Config;->AUTH_PASSWORD_RESET_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/Net$HttpRequest;->setUrl(Ljava/lang/String;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "emailOrNickname"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Lcom/badlogic/gdx/net/HttpParametersUtils;->convertHttpParameters(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/Net$HttpRequest;->setContent(Ljava/lang/String;)V

    new-instance p1, Lcom/prineside/tdi2/managers/AuthManager$HttpQueuedRequest;

    new-instance v1, Lcom/prineside/tdi2/managers/AuthManager$15;

    invoke-direct {v1, p0, p2}, Lcom/prineside/tdi2/managers/AuthManager$15;-><init>(Lcom/prineside/tdi2/managers/AuthManager;Lcom/prineside/tdi2/utils/ObjectRetriever;)V

    const-string p2, "resetPassword"

    invoke-direct {p1, p2, v0, v1}, Lcom/prineside/tdi2/managers/AuthManager$HttpQueuedRequest;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/Net$HttpRequest;Lcom/prineside/tdi2/managers/AuthManager$HttpQueuedRequest$Listener;)V

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/managers/AuthManager;->queueRequest(Lcom/prineside/tdi2/managers/AuthManager$HttpQueuedRequest;)V

    return-void

    :cond_1
    :goto_0
    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p2, p1, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object p2, p2, Lcom/prineside/tdi2/managers/UiManager;->notifications:Lcom/prineside/tdi2/ui/shared/Notifications;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object p1, p1, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v0, "app_is_modified"

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v1, "icon-times"

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v0

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$RED;->P800:Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Lcom/prineside/tdi2/enums/StaticSoundType;->FAIL:Lcom/prineside/tdi2/enums/StaticSoundType;

    invoke-virtual {p2, p1, v0, v1, v2}, Lcom/prineside/tdi2/ui/shared/Notifications;->add(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/graphics/Color;Lcom/prineside/tdi2/enums/StaticSoundType;)Lcom/prineside/tdi2/ui/shared/Notifications$Notification;

    return-void
.end method

.method public save()V
    .locals 6

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    invoke-virtual {v0}, Lcom/prineside/tdi2/Game;->assertInMainThread()V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->preferencesManager:Lcom/prineside/tdi2/managers/PreferencesManager;

    sget-object v1, Lcom/prineside/tdi2/Config;->PREFERENCES_NAME_SETTINGS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/PreferencesManager;->getInstance(Ljava/lang/String;)Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;

    move-result-object v0

    new-instance v1, Lcom/badlogic/gdx/utils/Json;

    sget-object v2, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;->json:Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/Json;-><init>(Lcom/badlogic/gdx/utils/JsonWriter$OutputType;)V

    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/Json;->setWriter(Ljava/io/Writer;)V

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Json;->writeObjectStart()V

    iget-object v3, p0, Lcom/prineside/tdi2/managers/AuthManager;->p:Ljava/lang/String;

    const-string v4, "id"

    invoke-virtual {v1, v4, v3}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/prineside/tdi2/managers/AuthManager;->v:Ljava/lang/String;

    const-string v4, "nickname"

    invoke-virtual {v1, v4, v3}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/prineside/tdi2/managers/AuthManager;->q:Ljava/lang/String;

    const-string v4, "playerId"

    invoke-virtual {v1, v4, v3}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/prineside/tdi2/managers/AuthManager;->t:Ljava/lang/String;

    const-string v4, "emailHint"

    invoke-virtual {v1, v4, v3}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/prineside/tdi2/managers/AuthManager;->r:Ljava/lang/String;

    if-eqz v3, :cond_0

    const-string v4, "inviteCode"

    invoke-virtual {v1, v4, v3}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    iget-object v3, p0, Lcom/prineside/tdi2/managers/AuthManager;->s:Ljava/lang/String;

    if-eqz v3, :cond_1

    const-string v4, "invitedBy"

    invoke-virtual {v1, v4, v3}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    iget-wide v3, p0, Lcom/prineside/tdi2/managers/AuthManager;->u:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "updateTimestamp"

    invoke-virtual {v1, v4, v3}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/prineside/tdi2/managers/AuthManager;->xpStatus:Lcom/prineside/tdi2/managers/AuthManager$XpStatus;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "xpStatus"

    invoke-virtual {v1, v4, v3}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget v3, p0, Lcom/prineside/tdi2/managers/AuthManager;->currentLevelXp:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "currentLevelXp"

    invoke-virtual {v1, v4, v3}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget v3, p0, Lcom/prineside/tdi2/managers/AuthManager;->tempXp:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "tempXp"

    invoke-virtual {v1, v4, v3}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget v3, p0, Lcom/prineside/tdi2/managers/AuthManager;->nextLevelXp:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "nextLevelXp"

    invoke-virtual {v1, v4, v3}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget v3, p0, Lcom/prineside/tdi2/managers/AuthManager;->profileLevel:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "profileLevel"

    invoke-virtual {v1, v4, v3}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget v3, p0, Lcom/prineside/tdi2/managers/AuthManager;->maxProfileLevel:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "maxProfileLevel"

    invoke-virtual {v1, v4, v3}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget v3, p0, Lcom/prineside/tdi2/managers/AuthManager;->playedLevelXpCoeff:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const-string v4, "playedLevelXpCoeff"

    invoke-virtual {v1, v4, v3}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget v3, p0, Lcom/prineside/tdi2/managers/AuthManager;->bonusLevelXpCoeff:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const-string v4, "bonusLevelXpCoeff"

    invoke-virtual {v1, v4, v3}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/prineside/tdi2/managers/AuthManager;->bonusXpLevel:Ljava/lang/String;

    if-eqz v3, :cond_2

    const-string v4, "bonusXpLevel"

    invoke-virtual {v1, v4, v3}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    iget v3, p0, Lcom/prineside/tdi2/managers/AuthManager;->bonusXpRemaining:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "bonusXpRemaining"

    invoke-virtual {v1, v4, v3}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget v3, p0, Lcom/prineside/tdi2/managers/AuthManager;->regularXpRemaining:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "regularXpRemaining"

    invoke-virtual {v1, v4, v3}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget v3, p0, Lcom/prineside/tdi2/managers/AuthManager;->nextXpRefreshTimestamp:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "nextXpRefresh"

    invoke-virtual {v1, v4, v3}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v3, "xpPlayedLevels"

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/utils/Json;->writeArrayStart(Ljava/lang/String;)V

    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Lcom/prineside/tdi2/managers/AuthManager;->xpPlayedLevels:Lcom/badlogic/gdx/utils/Array;

    iget v5, v4, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v3, v5, :cond_3

    iget-object v4, v4, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v4, [Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Json;->writeArrayEnd()V

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Json;->writeObjectEnd()V

    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "authSession"

    invoke-virtual {v0, v2, v1}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->flush()V

    return-void
.end method

.method public saveGameToServer(ILcom/prineside/tdi2/utils/ObjectRetriever;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/prineside/tdi2/utils/ObjectRetriever<",
            "Lcom/prineside/tdi2/managers/AuthManager$SaveGameResult;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    invoke-virtual {v0}, Lcom/prineside/tdi2/Game;->assertInMainThread()V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/ProgressManager;->isDeveloperModeEnabled()Z

    move-result v0

    const-string v1, "icon-times"

    if-eqz v0, :cond_0

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p2, p1, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object p2, p2, Lcom/prineside/tdi2/managers/UiManager;->notifications:Lcom/prineside/tdi2/ui/shared/Notifications;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {p1, v1}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object p1

    sget-object v0, Lcom/prineside/tdi2/utils/MaterialColor$RED;->P800:Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Lcom/prineside/tdi2/enums/StaticSoundType;->FAIL:Lcom/prineside/tdi2/enums/StaticSoundType;

    const-string v2, "Could not save game to cloud while being in Developer mode, please reset your progress first"

    invoke-virtual {p2, v2, p1, v0, v1}, Lcom/prineside/tdi2/ui/shared/Notifications;->add(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/graphics/Color;Lcom/prineside/tdi2/enums/StaticSoundType;)Lcom/prineside/tdi2/ui/shared/Notifications$Notification;

    return-void

    :cond_0
    invoke-static {}, Lcom/prineside/tdi2/Config;->isHeadless()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->preferencesManager:Lcom/prineside/tdi2/managers/PreferencesManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/PreferencesManager;->isTemporarySettingsApplied()Z

    move-result v0

    const-string v2, "AuthManager"

    if-eqz v0, :cond_2

    const-string p1, "temporary settings enabled, skipped save to cloud"

    invoke-static {v2, p1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/ProgressManager;->getAllItems()Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    move-result-object v0

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-nez v0, :cond_3

    const-string p1, "empty items, save to cloud disabled"

    invoke-static {v2, p1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/prineside/tdi2/managers/AuthManager;->b:Lcom/prineside/tdi2/managers/AuthManager$SignInStatus;

    sget-object v3, Lcom/prineside/tdi2/managers/AuthManager$SignInStatus;->SIGNED_IN:Lcom/prineside/tdi2/managers/AuthManager$SignInStatus;

    if-ne v0, v3, :cond_7

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->actionResolver:Lcom/prineside/tdi2/ActionResolver;

    invoke-interface {v0}, Lcom/prineside/tdi2/ActionResolver;->isAppModified()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {}, Lcom/prineside/tdi2/Config;->isModdingMode()Z

    move-result v0

    if-eqz v0, :cond_4

    goto/16 :goto_0

    :cond_4
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/SettingsManager;->saveIfRequired()V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/ProgressManager;->saveIfRequired()V

    new-instance v0, Lcom/badlogic/gdx/Net$HttpRequest;

    const-string v1, "POST"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/Net$HttpRequest;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/prineside/tdi2/Config;->AUTH_SAVE_GAME_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/Net$HttpRequest;->setUrl(Ljava/lang/String;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v3, p0, Lcom/prineside/tdi2/managers/AuthManager;->p:Ljava/lang/String;

    const-string v4, "sessionid"

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v3}, Lcom/prineside/tdi2/managers/SettingsManager;->getGameStartHash()Ljava/lang/String;

    move-result-object v3

    const-string v4, "gameStartHash"

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v3}, Lcom/prineside/tdi2/managers/SettingsManager;->getTimeSpentInGameSinceStart()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "timeInGame"

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, -0x1

    if-eq p1, v3, :cond_5

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v3, "slotId"

    invoke-virtual {v1, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->preferencesManager:Lcom/prineside/tdi2/managers/PreferencesManager;

    new-instance v3, Lcom/badlogic/gdx/utils/Array;

    sget-object v4, Lcom/prineside/tdi2/Config;->PREFERENCES_NAMES:[Ljava/lang/String;

    invoke-direct {v3, v4}, Lcom/badlogic/gdx/utils/Array;-><init>([Ljava/lang/Object;)V

    invoke-virtual {p1, v3}, Lcom/prineside/tdi2/managers/PreferencesManager;->saveSnapshotAsString(Lcom/badlogic/gdx/utils/Array;)Ljava/lang/String;

    move-result-object p1

    const-string v3, "data"

    invoke-virtual {v1, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Lcom/badlogic/gdx/net/HttpParametersUtils;->convertHttpParameters(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/Net$HttpRequest;->setContent(Ljava/lang/String;)V

    new-instance p1, Lcom/prineside/tdi2/managers/AuthManager$HttpQueuedRequest;

    new-instance v1, Lcom/prineside/tdi2/managers/AuthManager$10;

    invoke-direct {v1, p0, p2}, Lcom/prineside/tdi2/managers/AuthManager$10;-><init>(Lcom/prineside/tdi2/managers/AuthManager;Lcom/prineside/tdi2/utils/ObjectRetriever;)V

    const-string p2, "saveGameToServer"

    invoke-direct {p1, p2, v0, v1}, Lcom/prineside/tdi2/managers/AuthManager$HttpQueuedRequest;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/Net$HttpRequest;Lcom/prineside/tdi2/managers/AuthManager$HttpQueuedRequest$Listener;)V

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/managers/AuthManager;->queueRequest(Lcom/prineside/tdi2/managers/AuthManager$HttpQueuedRequest;)V

    goto :goto_1

    :cond_6
    :goto_0
    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p2, p1, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object p2, p2, Lcom/prineside/tdi2/managers/UiManager;->notifications:Lcom/prineside/tdi2/ui/shared/Notifications;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object p1, p1, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v0, "app_is_modified"

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v0

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$RED;->P800:Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Lcom/prineside/tdi2/enums/StaticSoundType;->FAIL:Lcom/prineside/tdi2/enums/StaticSoundType;

    invoke-virtual {p2, p1, v0, v1, v2}, Lcom/prineside/tdi2/ui/shared/Notifications;->add(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/graphics/Color;Lcom/prineside/tdi2/enums/StaticSoundType;)Lcom/prineside/tdi2/ui/shared/Notifications$Notification;

    return-void

    :cond_7
    const-string p1, "can\'t save game to cloud, not signed in"

    invoke-static {v2, p1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_8

    sget-object p1, Lcom/prineside/tdi2/managers/AuthManager$SaveGameResult;->OTHER_ERROR:Lcom/prineside/tdi2/managers/AuthManager$SaveGameResult;

    invoke-interface {p2, p1}, Lcom/prineside/tdi2/utils/ObjectRetriever;->retrieved(Ljava/lang/Object;)V

    :cond_8
    :goto_1
    return-void
.end method

.method public sendAutoSignUpDetails(Ljava/lang/String;Ljava/lang/String;Lcom/prineside/tdi2/utils/ObjectRetriever;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/prineside/tdi2/utils/ObjectRetriever<",
            "Lcom/prineside/tdi2/managers/AuthManager$SignUpResult;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/prineside/tdi2/Config;->isHeadless()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->actionResolver:Lcom/prineside/tdi2/ActionResolver;

    invoke-interface {v0}, Lcom/prineside/tdi2/ActionResolver;->isAppModified()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/prineside/tdi2/Config;->isModdingMode()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/badlogic/gdx/Net$HttpRequest;

    const-string v1, "POST"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/Net$HttpRequest;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/prineside/tdi2/Config;->AUTH_AUT_SIGN_UP_DETAILS_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/Net$HttpRequest;->setUrl(Ljava/lang/String;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "nickname"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "inviteCode"

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/AuthManager;->getSessionId()Ljava/lang/String;

    move-result-object p1

    const-string p2, "sessionid"

    invoke-virtual {v1, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Lcom/badlogic/gdx/net/HttpParametersUtils;->convertHttpParameters(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/Net$HttpRequest;->setContent(Ljava/lang/String;)V

    new-instance p1, Lcom/prineside/tdi2/managers/AuthManager$HttpQueuedRequest;

    new-instance p2, Lcom/prineside/tdi2/managers/AuthManager$19;

    invoke-direct {p2, p0, p3}, Lcom/prineside/tdi2/managers/AuthManager$19;-><init>(Lcom/prineside/tdi2/managers/AuthManager;Lcom/prineside/tdi2/utils/ObjectRetriever;)V

    const-string p3, "sendAutoSignUpDetails"

    invoke-direct {p1, p3, v0, p2}, Lcom/prineside/tdi2/managers/AuthManager$HttpQueuedRequest;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/Net$HttpRequest;Lcom/prineside/tdi2/managers/AuthManager$HttpQueuedRequest$Listener;)V

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/managers/AuthManager;->queueRequest(Lcom/prineside/tdi2/managers/AuthManager$HttpQueuedRequest;)V

    return-void

    :cond_2
    :goto_0
    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p2, p1, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object p2, p2, Lcom/prineside/tdi2/managers/UiManager;->notifications:Lcom/prineside/tdi2/ui/shared/Notifications;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object p1, p1, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string p3, "app_is_modified"

    invoke-virtual {p1, p3}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object p3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p3, p3, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v0, "icon-times"

    invoke-virtual {p3, v0}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object p3

    sget-object v0, Lcom/prineside/tdi2/utils/MaterialColor$RED;->P800:Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Lcom/prineside/tdi2/enums/StaticSoundType;->FAIL:Lcom/prineside/tdi2/enums/StaticSoundType;

    invoke-virtual {p2, p1, p3, v0, v1}, Lcom/prineside/tdi2/ui/shared/Notifications;->add(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/graphics/Color;Lcom/prineside/tdi2/enums/StaticSoundType;)Lcom/prineside/tdi2/ui/shared/Notifications$Notification;

    return-void
.end method

.method public setAutoSavesEnabled(Z)V
    .locals 4

    iput-boolean p1, p0, Lcom/prineside/tdi2/managers/AuthManager;->k:Z

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    invoke-virtual {v0}, Lcom/prineside/tdi2/Game;->assertInMainThread()V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->preferencesManager:Lcom/prineside/tdi2/managers/PreferencesManager;

    sget-object v1, Lcom/prineside/tdi2/Config;->PREFERENCES_NAME_SETTINGS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/PreferencesManager;->getInstance(Ljava/lang/String;)Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "authAutoSaves"

    invoke-virtual {v0, v2, v1}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->flush()V

    iget-object v0, p0, Lcom/prineside/tdi2/Manager$ManagerWithListeners;->a:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->begin()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/prineside/tdi2/Manager$ManagerWithListeners;->a:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v2, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v2, :cond_0

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prineside/tdi2/managers/AuthManager$AuthManagerListener;

    invoke-interface {v1}, Lcom/prineside/tdi2/managers/AuthManager$AuthManagerListener;->autoSaveModeChanged()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->end()V

    const-string v0, "icon-info"

    if-eqz p1, :cond_1

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, p1, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/UiManager;->notifications:Lcom/prineside/tdi2/ui/shared/Notifications;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object p1, p1, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v2, "auto_saves_enabled"

    invoke-virtual {p1, v2}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v2, v0}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v0

    sget-object v2, Lcom/prineside/tdi2/utils/MaterialColor$GREEN;->P800:Lcom/badlogic/gdx/graphics/Color;

    sget-object v3, Lcom/prineside/tdi2/enums/StaticSoundType;->NOTIFICATION:Lcom/prineside/tdi2/enums/StaticSoundType;

    invoke-virtual {v1, p1, v0, v2, v3}, Lcom/prineside/tdi2/ui/shared/Notifications;->add(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/graphics/Color;Lcom/prineside/tdi2/enums/StaticSoundType;)Lcom/prineside/tdi2/ui/shared/Notifications$Notification;

    goto :goto_1

    :cond_1
    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, p1, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/UiManager;->notifications:Lcom/prineside/tdi2/ui/shared/Notifications;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object p1, p1, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v2, "auto_saves_disabled"

    invoke-virtual {p1, v2}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v2, v0}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v0

    sget-object v2, Lcom/prineside/tdi2/utils/MaterialColor$AMBER;->P800:Lcom/badlogic/gdx/graphics/Color;

    sget-object v3, Lcom/prineside/tdi2/enums/StaticSoundType;->NOTIFICATION:Lcom/prineside/tdi2/enums/StaticSoundType;

    invoke-virtual {v1, p1, v0, v2, v3}, Lcom/prineside/tdi2/ui/shared/Notifications;->add(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/graphics/Color;Lcom/prineside/tdi2/enums/StaticSoundType;)Lcom/prineside/tdi2/ui/shared/Notifications$Notification;

    :goto_1
    return-void
.end method

.method public setSessionIdForced(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    invoke-virtual {v0}, Lcom/prineside/tdi2/Game;->assertInMainThread()V

    iput-object p1, p0, Lcom/prineside/tdi2/managers/AuthManager;->p:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/AuthManager;->save()V

    return-void
.end method

.method public setup()V
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->preferencesManager:Lcom/prineside/tdi2/managers/PreferencesManager;

    new-instance v1, Lcom/prineside/tdi2/managers/AuthManager$2;

    invoke-direct {v1, p0}, Lcom/prineside/tdi2/managers/AuthManager$2;-><init>(Lcom/prineside/tdi2/managers/AuthManager;)V

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/PreferencesManager;->addListener(Lcom/prineside/tdi2/managers/PreferencesManager$PreferencesManagerListener;)V

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/AuthManager;->Q()V

    return-void
.end method

.method public signIn(Ljava/lang/String;Ljava/lang/String;Lcom/prineside/tdi2/utils/ObjectRetriever;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/prineside/tdi2/utils/ObjectRetriever<",
            "Lcom/prineside/tdi2/managers/AuthManager$SignInResult;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/prineside/tdi2/Config;->isHeadless()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->actionResolver:Lcom/prineside/tdi2/ActionResolver;

    invoke-interface {v0}, Lcom/prineside/tdi2/ActionResolver;->isAppModified()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/prineside/tdi2/Config;->isModdingMode()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/badlogic/gdx/Net$HttpRequest;

    const-string v1, "POST"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/Net$HttpRequest;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/prineside/tdi2/Config;->AUTH_SIGN_IN_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/Net$HttpRequest;->setUrl(Ljava/lang/String;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "login"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "password"

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Lcom/badlogic/gdx/net/HttpParametersUtils;->convertHttpParameters(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/Net$HttpRequest;->setContent(Ljava/lang/String;)V

    new-instance p1, Lcom/prineside/tdi2/managers/AuthManager$HttpQueuedRequest;

    new-instance p2, Lcom/prineside/tdi2/managers/AuthManager$16;

    invoke-direct {p2, p0, p3}, Lcom/prineside/tdi2/managers/AuthManager$16;-><init>(Lcom/prineside/tdi2/managers/AuthManager;Lcom/prineside/tdi2/utils/ObjectRetriever;)V

    const-string p3, "signIn"

    invoke-direct {p1, p3, v0, p2}, Lcom/prineside/tdi2/managers/AuthManager$HttpQueuedRequest;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/Net$HttpRequest;Lcom/prineside/tdi2/managers/AuthManager$HttpQueuedRequest$Listener;)V

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/managers/AuthManager;->queueRequest(Lcom/prineside/tdi2/managers/AuthManager$HttpQueuedRequest;)V

    return-void

    :cond_2
    :goto_0
    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p2, p1, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object p2, p2, Lcom/prineside/tdi2/managers/UiManager;->notifications:Lcom/prineside/tdi2/ui/shared/Notifications;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object p1, p1, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string p3, "app_is_modified"

    invoke-virtual {p1, p3}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object p3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p3, p3, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v0, "icon-times"

    invoke-virtual {p3, v0}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object p3

    sget-object v0, Lcom/prineside/tdi2/utils/MaterialColor$RED;->P800:Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Lcom/prineside/tdi2/enums/StaticSoundType;->FAIL:Lcom/prineside/tdi2/enums/StaticSoundType;

    invoke-virtual {p2, p1, p3, v0, v1}, Lcom/prineside/tdi2/ui/shared/Notifications;->add(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/graphics/Color;Lcom/prineside/tdi2/enums/StaticSoundType;)Lcom/prineside/tdi2/ui/shared/Notifications$Notification;

    return-void
.end method

.method public signInWithGoogle(Ljava/lang/String;Lcom/prineside/tdi2/utils/ObjectRetriever;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/prineside/tdi2/utils/ObjectRetriever<",
            "Lcom/prineside/tdi2/managers/AuthManager$InUpSignInResult;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    invoke-virtual {v0}, Lcom/prineside/tdi2/Game;->assertInMainThread()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/prineside/tdi2/managers/AuthManager;->G:Lcom/badlogic/gdx/utils/Array;

    iget v2, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    const-string v3, "signInWithGoogle"

    if-ge v0, v2, :cond_1

    iget-object v1, v1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v1, [Lcom/prineside/tdi2/managers/AuthManager$HttpQueuedRequest;

    aget-object v1, v1, v0

    invoke-static {v1}, Lcom/prineside/tdi2/managers/AuthManager$HttpQueuedRequest;->a(Lcom/prineside/tdi2/managers/AuthManager$HttpQueuedRequest;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "AuthManager"

    const-string p2, "skipped signInWithGoogle - request already queued"

    invoke-static {p1, p2}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/badlogic/gdx/Net$HttpRequest;

    const-string v1, "POST"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/Net$HttpRequest;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/prineside/tdi2/Config;->AUTH_SIGN_IN_GOOGLE_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/Net$HttpRequest;->setUrl(Ljava/lang/String;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "token"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Lcom/badlogic/gdx/net/HttpParametersUtils;->convertHttpParameters(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/Net$HttpRequest;->setContent(Ljava/lang/String;)V

    new-instance p1, Lcom/prineside/tdi2/managers/AuthManager$HttpQueuedRequest;

    new-instance v1, Lcom/prineside/tdi2/managers/AuthManager$6;

    invoke-direct {v1, p0, p2}, Lcom/prineside/tdi2/managers/AuthManager$6;-><init>(Lcom/prineside/tdi2/managers/AuthManager;Lcom/prineside/tdi2/utils/ObjectRetriever;)V

    invoke-direct {p1, v3, v0, v1}, Lcom/prineside/tdi2/managers/AuthManager$HttpQueuedRequest;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/Net$HttpRequest;Lcom/prineside/tdi2/managers/AuthManager$HttpQueuedRequest$Listener;)V

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/managers/AuthManager;->queueRequest(Lcom/prineside/tdi2/managers/AuthManager$HttpQueuedRequest;)V

    return-void
.end method

.method public signInWithOkJoy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/prineside/tdi2/utils/ObjectRetriever;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/prineside/tdi2/utils/ObjectRetriever<",
            "Lcom/prineside/tdi2/managers/AuthManager$InUpSignInResult;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "signInWithOkJoy "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AuthManager"

    invoke-static {v1, v0}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    invoke-virtual {v0}, Lcom/prineside/tdi2/Game;->assertInMainThread()V

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/prineside/tdi2/managers/AuthManager;->G:Lcom/badlogic/gdx/utils/Array;

    iget v3, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    const-string v4, "signInWithOkJoy"

    if-ge v0, v3, :cond_1

    iget-object v2, v2, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v2, [Lcom/prineside/tdi2/managers/AuthManager$HttpQueuedRequest;

    aget-object v2, v2, v0

    invoke-static {v2}, Lcom/prineside/tdi2/managers/AuthManager$HttpQueuedRequest;->a(Lcom/prineside/tdi2/managers/AuthManager$HttpQueuedRequest;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string p1, "ERR: skipped signInWithOkJoy - request already queued"

    invoke-static {v1, p1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/badlogic/gdx/Net$HttpRequest;

    const-string v1, "POST"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/Net$HttpRequest;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/prineside/tdi2/Config;->AUTH_SIGN_IN_OKJOY_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/Net$HttpRequest;->setUrl(Ljava/lang/String;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xa

    if-ge v2, v3, :cond_3

    :cond_2
    const-string p1, "testusertoken"

    :cond_3
    const-string v2, "token"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "userid"

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "username"

    invoke-virtual {v1, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Lcom/badlogic/gdx/net/HttpParametersUtils;->convertHttpParameters(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/Net$HttpRequest;->setContent(Ljava/lang/String;)V

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p2, p1, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object p2, p2, Lcom/prineside/tdi2/managers/UiManager;->notifications:Lcom/prineside/tdi2/ui/shared/Notifications;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object p1, p1, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string p3, "signing_in..."

    invoke-virtual {p1, p3}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p3, p3, p3}, Lcom/prineside/tdi2/ui/shared/Notifications;->add(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/graphics/Color;Lcom/prineside/tdi2/enums/StaticSoundType;)Lcom/prineside/tdi2/ui/shared/Notifications$Notification;

    new-instance p1, Lcom/prineside/tdi2/managers/AuthManager$HttpQueuedRequest;

    new-instance p2, Lcom/prineside/tdi2/managers/AuthManager$5;

    invoke-direct {p2, p0, p4}, Lcom/prineside/tdi2/managers/AuthManager$5;-><init>(Lcom/prineside/tdi2/managers/AuthManager;Lcom/prineside/tdi2/utils/ObjectRetriever;)V

    invoke-direct {p1, v4, v0, p2}, Lcom/prineside/tdi2/managers/AuthManager$HttpQueuedRequest;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/Net$HttpRequest;Lcom/prineside/tdi2/managers/AuthManager$HttpQueuedRequest$Listener;)V

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/managers/AuthManager;->queueRequest(Lcom/prineside/tdi2/managers/AuthManager$HttpQueuedRequest;)V

    return-void
.end method

.method public signOut()V
    .locals 4

    invoke-static {}, Lcom/prineside/tdi2/Config;->isHeadless()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->preferencesManager:Lcom/prineside/tdi2/managers/PreferencesManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/PreferencesManager;->isTemporarySettingsApplied()Z

    move-result v0

    const-string v1, "AuthManager"

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/AuthManager;->K()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "temporary settings enabled, skipped sign out"

    invoke-static {v1, v0}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    invoke-virtual {v0}, Lcom/prineside/tdi2/Game;->assertInMainThread()V

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/AuthManager;->K()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "cancel requests (signOut)"

    invoke-static {v1, v0}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/AuthManager;->G()V

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/AuthManager;->isSignedIn()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lcom/badlogic/gdx/Net$HttpRequest;

    const-string v1, "POST"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/Net$HttpRequest;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/prineside/tdi2/Config;->AUTH_SIGN_OUT_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/Net$HttpRequest;->setUrl(Ljava/lang/String;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v2, p0, Lcom/prineside/tdi2/managers/AuthManager;->p:Ljava/lang/String;

    const-string v3, "sessionid"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Lcom/badlogic/gdx/net/HttpParametersUtils;->convertHttpParameters(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/Net$HttpRequest;->setContent(Ljava/lang/String;)V

    sget-object v1, Lcom/badlogic/gdx/Gdx;->net:Lcom/badlogic/gdx/Net;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/badlogic/gdx/Net;->sendHttpRequest(Lcom/badlogic/gdx/Net$HttpRequest;Lcom/badlogic/gdx/Net$HttpResponseListener;)V

    :cond_4
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->preferencesManager:Lcom/prineside/tdi2/managers/PreferencesManager;

    sget-object v1, Lcom/prineside/tdi2/Config;->PREFERENCES_NAME_SETTINGS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/PreferencesManager;->getInstance(Ljava/lang/String;)Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;

    move-result-object v0

    const-string v1, "authSession"

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->remove(Ljava/lang/String;)V

    sget-object v0, Lcom/prineside/tdi2/managers/AuthManager$SignInStatus;->NOT_SIGNED_IN:Lcom/prineside/tdi2/managers/AuthManager$SignInStatus;

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/managers/AuthManager;->S(Lcom/prineside/tdi2/managers/AuthManager$SignInStatus;)V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->actionResolver:Lcom/prineside/tdi2/ActionResolver;

    invoke-interface {v0}, Lcom/prineside/tdi2/ActionResolver;->signOutGoogle()V

    return-void
.end method

.method public signUp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/prineside/tdi2/utils/ObjectRetriever;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/prineside/tdi2/utils/ObjectRetriever<",
            "Lcom/prineside/tdi2/managers/AuthManager$SignUpResult;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/prineside/tdi2/Config;->isHeadless()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->actionResolver:Lcom/prineside/tdi2/ActionResolver;

    invoke-interface {v0}, Lcom/prineside/tdi2/ActionResolver;->isAppModified()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/prineside/tdi2/Config;->isModdingMode()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/badlogic/gdx/Net$HttpRequest;

    const-string v1, "POST"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/Net$HttpRequest;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/prineside/tdi2/Config;->AUTH_SIGN_UP_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/Net$HttpRequest;->setUrl(Ljava/lang/String;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "login"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "password"

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "email"

    invoke-virtual {v1, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "inviteCode"

    invoke-virtual {v1, p1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Lcom/badlogic/gdx/net/HttpParametersUtils;->convertHttpParameters(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/Net$HttpRequest;->setContent(Ljava/lang/String;)V

    new-instance p1, Lcom/prineside/tdi2/managers/AuthManager$HttpQueuedRequest;

    new-instance p2, Lcom/prineside/tdi2/managers/a;

    invoke-direct {p2, p0, p5}, Lcom/prineside/tdi2/managers/a;-><init>(Lcom/prineside/tdi2/managers/AuthManager;Lcom/prineside/tdi2/utils/ObjectRetriever;)V

    const-string p3, "signUp"

    invoke-direct {p1, p3, v0, p2}, Lcom/prineside/tdi2/managers/AuthManager$HttpQueuedRequest;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/Net$HttpRequest;Lcom/prineside/tdi2/managers/AuthManager$HttpQueuedRequest$Listener;)V

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/managers/AuthManager;->queueRequest(Lcom/prineside/tdi2/managers/AuthManager$HttpQueuedRequest;)V

    return-void

    :cond_2
    :goto_0
    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p2, p1, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object p2, p2, Lcom/prineside/tdi2/managers/UiManager;->notifications:Lcom/prineside/tdi2/ui/shared/Notifications;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object p1, p1, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string p3, "app_is_modified"

    invoke-virtual {p1, p3}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object p3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p3, p3, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string p4, "icon-times"

    invoke-virtual {p3, p4}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object p3

    sget-object p4, Lcom/prineside/tdi2/utils/MaterialColor$RED;->P800:Lcom/badlogic/gdx/graphics/Color;

    sget-object p5, Lcom/prineside/tdi2/enums/StaticSoundType;->FAIL:Lcom/prineside/tdi2/enums/StaticSoundType;

    invoke-virtual {p2, p1, p3, p4, p5}, Lcom/prineside/tdi2/ui/shared/Notifications;->add(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/graphics/Color;Lcom/prineside/tdi2/enums/StaticSoundType;)Lcom/prineside/tdi2/ui/shared/Notifications$Notification;

    return-void
.end method
