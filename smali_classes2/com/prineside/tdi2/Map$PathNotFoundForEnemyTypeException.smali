.class public Lcom/prineside/tdi2/Map$PathNotFoundForEnemyTypeException;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PathNotFoundForEnemyTypeException"
.end annotation


# instance fields
.field public enemyType:Lcom/prineside/tdi2/enums/EnemyType;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/enums/EnemyType;Ljava/lang/Throwable;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Path not found for enemy type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object p1, p0, Lcom/prineside/tdi2/Map$PathNotFoundForEnemyTypeException;->enemyType:Lcom/prineside/tdi2/enums/EnemyType;

    return-void
.end method
