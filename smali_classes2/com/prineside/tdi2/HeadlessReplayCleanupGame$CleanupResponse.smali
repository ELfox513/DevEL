.class Lcom/prineside/tdi2/HeadlessReplayCleanupGame$CleanupResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/HeadlessReplayCleanupGame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CleanupResponse"
.end annotation


# instance fields
.field public cleanedUpData:Ljava/lang/String;

.field public newFileStatus:Ljava/lang/String;

.field public replayId:Ljava/lang/String;

.field public success:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/HeadlessReplayCleanupGame$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/HeadlessReplayCleanupGame$CleanupResponse;-><init>()V

    return-void
.end method
