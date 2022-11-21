.class abstract Lcom/prineside/tdi2/ui/shared/ProfileSummary$AnimationStage;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/ui/shared/ProfileSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AnimationStage"
.end annotation


# instance fields
.field public a:J

.field public duration:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/ui/shared/ProfileSummary$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/ui/shared/ProfileSummary$AnimationStage;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/prineside/tdi2/ui/shared/ProfileSummary$AnimationStage;)J
    .locals 2

    iget-wide v0, p0, Lcom/prineside/tdi2/ui/shared/ProfileSummary$AnimationStage;->a:J

    return-wide v0
.end method

.method public static synthetic b(Lcom/prineside/tdi2/ui/shared/ProfileSummary$AnimationStage;J)J
    .locals 0

    iput-wide p1, p0, Lcom/prineside/tdi2/ui/shared/ProfileSummary$AnimationStage;->a:J

    return-wide p1
.end method

.method public static synthetic c(Lcom/prineside/tdi2/ui/shared/ProfileSummary$AnimationStage;J)J
    .locals 2

    iget-wide v0, p0, Lcom/prineside/tdi2/ui/shared/ProfileSummary$AnimationStage;->a:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/prineside/tdi2/ui/shared/ProfileSummary$AnimationStage;->a:J

    return-wide v0
.end method


# virtual methods
.method public draw(F)V
    .locals 0

    return-void
.end method

.method public start()V
    .locals 0

    return-void
.end method
