.class public final synthetic Lcom/prineside/tdi2/screens/h0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/screens/PerformanceReportScreen$2;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/prineside/tdi2/screens/PerformanceReportScreen$2;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/prineside/tdi2/screens/h0;->a:Lcom/prineside/tdi2/screens/PerformanceReportScreen$2;

    iput-object p2, p0, Lcom/prineside/tdi2/screens/h0;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/screens/h0;->a:Lcom/prineside/tdi2/screens/PerformanceReportScreen$2;

    iget-object v1, p0, Lcom/prineside/tdi2/screens/h0;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/prineside/tdi2/screens/PerformanceReportScreen$2;->a(Lcom/prineside/tdi2/screens/PerformanceReportScreen$2;Ljava/lang/String;)V

    return-void
.end method
