.class public final synthetic Lcom/prineside/tdi2/utils/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/prineside/reflectasm/FieldAccess;

.field public final synthetic b:Lcom/prineside/tdi2/utils/PerformanceSurvey$TestFieldAccessClass;

.field public final synthetic d:Lcom/prineside/tdi2/utils/PerformanceSurvey$PerformanceSurveyListener;


# direct methods
.method public synthetic constructor <init>(Lcom/prineside/reflectasm/FieldAccess;Lcom/prineside/tdi2/utils/PerformanceSurvey$TestFieldAccessClass;Lcom/prineside/tdi2/utils/PerformanceSurvey$PerformanceSurveyListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/prineside/tdi2/utils/b;->a:Lcom/prineside/reflectasm/FieldAccess;

    iput-object p2, p0, Lcom/prineside/tdi2/utils/b;->b:Lcom/prineside/tdi2/utils/PerformanceSurvey$TestFieldAccessClass;

    iput-object p3, p0, Lcom/prineside/tdi2/utils/b;->d:Lcom/prineside/tdi2/utils/PerformanceSurvey$PerformanceSurveyListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/prineside/tdi2/utils/b;->a:Lcom/prineside/reflectasm/FieldAccess;

    iget-object v1, p0, Lcom/prineside/tdi2/utils/b;->b:Lcom/prineside/tdi2/utils/PerformanceSurvey$TestFieldAccessClass;

    iget-object v2, p0, Lcom/prineside/tdi2/utils/b;->d:Lcom/prineside/tdi2/utils/PerformanceSurvey$PerformanceSurveyListener;

    invoke-static {v0, v1, v2}, Lcom/prineside/tdi2/utils/PerformanceSurvey;->b(Lcom/prineside/reflectasm/FieldAccess;Lcom/prineside/tdi2/utils/PerformanceSurvey$TestFieldAccessClass;Lcom/prineside/tdi2/utils/PerformanceSurvey$PerformanceSurveyListener;)V

    return-void
.end method
