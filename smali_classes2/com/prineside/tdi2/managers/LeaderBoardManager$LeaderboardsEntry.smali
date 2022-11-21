.class public Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsEntry;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/managers/LeaderBoardManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LeaderboardsEntry"
.end annotation


# instance fields
.field public badgeIconColor:Lcom/badlogic/gdx/graphics/Color;

.field public badgeIconTexture:Ljava/lang/String;

.field public badgeOverlayColor:Lcom/badlogic/gdx/graphics/Color;

.field public badgeOverlayTexture:Ljava/lang/String;

.field public hasProfilePicture:Z

.field public nickname:Ljava/lang/String;

.field public playerId:Ljava/lang/String;

.field public profileLevel:I

.field public rank:I

.field public score:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JIZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsEntry;->playerId:Ljava/lang/String;

    iput-object p2, p0, Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsEntry;->nickname:Ljava/lang/String;

    iput-wide p3, p0, Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsEntry;->score:J

    iput p5, p0, Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsEntry;->rank:I

    iput-boolean p6, p0, Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsEntry;->hasProfilePicture:Z

    iput p7, p0, Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsEntry;->profileLevel:I

    const/4 p1, 0x1

    if-ge p7, p1, :cond_0

    iput p1, p0, Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsEntry;->profileLevel:I

    :cond_0
    return-void
.end method

.method public static fromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsEntry;
    .locals 9

    new-instance v8, Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsEntry;

    const-string v0, "p"

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "n"

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "s"

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/JsonValue;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    const-string v0, "r"

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;)I

    move-result v5

    const-string v0, "hpp"

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/JsonValue;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    const-string v0, "pl"

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;)I

    move-result v7

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsEntry;-><init>(Ljava/lang/String;Ljava/lang/String;JIZI)V

    const-string v0, "bit"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsEntry;->badgeIconTexture:Ljava/lang/String;

    const-string v0, "bic"

    const-string v2, "FFFFFFFF"

    invoke-virtual {p0, v0, v2}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/Color;->valueOf(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    iput-object v0, v8, Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsEntry;->badgeIconColor:Lcom/badlogic/gdx/graphics/Color;

    const-string v0, "bot"

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsEntry;->badgeOverlayTexture:Ljava/lang/String;

    const-string v0, "boc"

    invoke-virtual {p0, v0, v2}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/badlogic/gdx/graphics/Color;->valueOf(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object p0

    iput-object p0, v8, Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsEntry;->badgeOverlayColor:Lcom/badlogic/gdx/graphics/Color;

    return-object v8
.end method


# virtual methods
.method public toJson(Lcom/badlogic/gdx/utils/Json;)V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsEntry;->playerId:Ljava/lang/String;

    const-string v1, "p"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsEntry;->nickname:Ljava/lang/String;

    const-string v1, "n"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-wide v0, p0, Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsEntry;->score:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "s"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget v0, p0, Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsEntry;->rank:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "r"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsEntry;->hasProfilePicture:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "hpp"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget v0, p0, Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsEntry;->profileLevel:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "pl"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsEntry;->badgeIconTexture:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "bit"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsEntry;->badgeIconColor:Lcom/badlogic/gdx/graphics/Color;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Color;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bic"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsEntry;->badgeOverlayTexture:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v1, "bot"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    iget-object v0, p0, Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsEntry;->badgeOverlayColor:Lcom/badlogic/gdx/graphics/Color;

    if-eqz v0, :cond_3

    const-string v1, "boc"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    return-void
.end method
