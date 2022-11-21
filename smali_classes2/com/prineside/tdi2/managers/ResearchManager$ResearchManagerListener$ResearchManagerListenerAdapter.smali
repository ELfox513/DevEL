.class public abstract Lcom/prineside/tdi2/managers/ResearchManager$ResearchManagerListener$ResearchManagerListenerAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/prineside/tdi2/managers/ResearchManager$ResearchManagerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/managers/ResearchManager$ResearchManagerListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ResearchManagerListenerAdapter"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public researchCompleted(Lcom/prineside/tdi2/Research;)V
    .locals 0

    return-void
.end method

.method public researchStarted(Lcom/prineside/tdi2/Research;J)V
    .locals 0

    return-void
.end method

.method public researchesUpdated()V
    .locals 0

    return-void
.end method
