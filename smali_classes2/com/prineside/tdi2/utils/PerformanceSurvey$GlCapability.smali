.class Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/utils/PerformanceSurvey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GlCapability"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;->a:I

    iput-object p2, p0, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;->c:Ljava/lang/String;

    iput p3, p0, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;->b:I

    return-void
.end method
