.class public final Lr4/n10;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lr4/u00;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/u00<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Lr4/u00;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/u00<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Lr4/u00;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/u00<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Lr4/u00;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/u00<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final e:Lr4/u00;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/u00<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final f:Lr4/u00;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/u00<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final g:Lr4/u00;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/u00<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-string v0, "gads:dynamite_load:fail:sample_rate"

    const-wide/16 v1, 0x2710

    invoke-static {v0, v1, v2}, Lr4/u00;->b(Ljava/lang/String;J)Lr4/u00;

    move-result-object v0

    sput-object v0, Lr4/n10;->a:Lr4/u00;

    const-string v0, "gads:report_dynamite_crash_in_background_thread"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lr4/u00;->a(Ljava/lang/String;Z)Lr4/u00;

    move-result-object v0

    sput-object v0, Lr4/n10;->b:Lr4/u00;

    const-string v0, "gads:public_beta:traffic_multiplier"

    const-string v2, "1.0"

    invoke-static {v0, v2}, Lr4/u00;->d(Ljava/lang/String;Ljava/lang/String;)Lr4/u00;

    move-result-object v0

    sput-object v0, Lr4/n10;->c:Lr4/u00;

    const-string v0, "gads:sdk_crash_report_class_prefix"

    const-string v2, "com.google."

    invoke-static {v0, v2}, Lr4/u00;->d(Ljava/lang/String;Ljava/lang/String;)Lr4/u00;

    move-result-object v0

    sput-object v0, Lr4/n10;->d:Lr4/u00;

    const-string v0, "gads:sdk_crash_report_enabled"

    invoke-static {v0, v1}, Lr4/u00;->a(Ljava/lang/String;Z)Lr4/u00;

    move-result-object v0

    sput-object v0, Lr4/n10;->e:Lr4/u00;

    const-string v0, "gads:sdk_crash_report_full_stacktrace"

    invoke-static {v0, v1}, Lr4/u00;->a(Ljava/lang/String;Z)Lr4/u00;

    move-result-object v0

    sput-object v0, Lr4/n10;->f:Lr4/u00;

    const-string v0, "gads:trapped_exception_sample_rate"

    const-wide v1, 0x3f847ae147ae147bL    # 0.01

    invoke-static {v0, v1, v2}, Lr4/u00;->c(Ljava/lang/String;D)Lr4/u00;

    move-result-object v0

    sput-object v0, Lr4/n10;->g:Lr4/u00;

    return-void
.end method
