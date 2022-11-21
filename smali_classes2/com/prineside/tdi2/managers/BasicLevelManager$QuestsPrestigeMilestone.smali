.class public Lcom/prineside/tdi2/managers/BasicLevelManager$QuestsPrestigeMilestone;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/managers/BasicLevelManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QuestsPrestigeMilestone"
.end annotation


# instance fields
.field public percentage:I

.field public tokensCount:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/prineside/tdi2/managers/BasicLevelManager$QuestsPrestigeMilestone;->percentage:I

    iput p2, p0, Lcom/prineside/tdi2/managers/BasicLevelManager$QuestsPrestigeMilestone;->tokensCount:I

    return-void
.end method
