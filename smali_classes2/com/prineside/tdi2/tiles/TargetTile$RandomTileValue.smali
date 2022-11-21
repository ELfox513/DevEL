.class Lcom/prineside/tdi2/tiles/TargetTile$RandomTileValue;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/tiles/TargetTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RandomTileValue"
.end annotation


# instance fields
.field public a:I

.field public b:Ljava/lang/Runnable;

.field public c:Z


# direct methods
.method public constructor <init>(ILjava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/prineside/tdi2/tiles/TargetTile$RandomTileValue;->a:I

    iput-object p2, p0, Lcom/prineside/tdi2/tiles/TargetTile$RandomTileValue;->b:Ljava/lang/Runnable;

    return-void
.end method
