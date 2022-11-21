.class public Lcom/prineside/tdi2/systems/PathRenderingSystem$PathEnemyPair;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/systems/PathRenderingSystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PathEnemyPair"
.end annotation


# instance fields
.field public enemyType:Lcom/prineside/tdi2/enums/EnemyType;

.field public path:Lcom/prineside/tdi2/Path;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
