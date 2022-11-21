.class public abstract Lcom/prineside/tdi2/WaveTemplates$WaveTemplate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/WaveTemplates;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "WaveTemplate"
.end annotation


# instance fields
.field public currentProbability:I
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getEnemyGroupConfigs()[Lcom/prineside/tdi2/WaveTemplates$EnemyGroupConfig;
.end method

.method public abstract getProbability(IFF)I
.end method

.method public abstract getWaveMessage()Ljava/lang/String;
.end method

.method public abstract getWaveName()Ljava/lang/String;
.end method
