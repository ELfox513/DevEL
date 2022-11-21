.class public Lcom/prineside/tdi2/managers/GameValueManager$GvSnapDiff;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/managers/GameValueManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GvSnapDiff"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/managers/GameValueManager$GvSnapDiff$Type;
    }
.end annotation


# instance fields
.field public effect:Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;

.field public type:Lcom/prineside/tdi2/managers/GameValueManager$GvSnapDiff$Type;

.field public vOrig:D

.field public vTo:D


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/managers/GameValueManager$GvSnapDiff$Type;DD)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/prineside/tdi2/managers/GameValueManager$GvSnapDiff;->type:Lcom/prineside/tdi2/managers/GameValueManager$GvSnapDiff$Type;

    iput-wide p2, p0, Lcom/prineside/tdi2/managers/GameValueManager$GvSnapDiff;->vOrig:D

    iput-wide p4, p0, Lcom/prineside/tdi2/managers/GameValueManager$GvSnapDiff;->vTo:D

    return-void
.end method

.method public constructor <init>(Lcom/prineside/tdi2/managers/GameValueManager$GvSnapDiff$Type;Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/prineside/tdi2/managers/GameValueManager$GvSnapDiff;->type:Lcom/prineside/tdi2/managers/GameValueManager$GvSnapDiff$Type;

    iput-object p2, p0, Lcom/prineside/tdi2/managers/GameValueManager$GvSnapDiff;->effect:Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;

    return-void
.end method
