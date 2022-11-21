.class public Lcom/prineside/tdi2/utils/PerformanceSurvey$TestFieldAccessClass;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/utils/PerformanceSurvey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TestFieldAccessClass"
.end annotation


# instance fields
.field public a:I

.field public intVal:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    iput v0, p0, Lcom/prineside/tdi2/utils/PerformanceSurvey$TestFieldAccessClass;->a:I

    return-void
.end method

.method public static synthetic a(Lcom/prineside/tdi2/utils/PerformanceSurvey$TestFieldAccessClass;)I
    .locals 0

    iget p0, p0, Lcom/prineside/tdi2/utils/PerformanceSurvey$TestFieldAccessClass;->a:I

    return p0
.end method


# virtual methods
.method public bar()I
    .locals 1

    const/16 v0, 0xc8

    return v0
.end method

.method public foo(I)I
    .locals 1

    iget v0, p0, Lcom/prineside/tdi2/utils/PerformanceSurvey$TestFieldAccessClass;->intVal:I

    add-int/2addr v0, p1

    return v0
.end method

.method public getIntVal()I
    .locals 1

    iget v0, p0, Lcom/prineside/tdi2/utils/PerformanceSurvey$TestFieldAccessClass;->intVal:I

    return v0
.end method

.method public setIntVal(I)V
    .locals 0

    iput p1, p0, Lcom/prineside/tdi2/utils/PerformanceSurvey$TestFieldAccessClass;->intVal:I

    return-void
.end method
