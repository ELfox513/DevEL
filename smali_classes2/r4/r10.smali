.class public final Lr4/r10;
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
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Lr4/u00;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/u00<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-string v0, "gads:ad_loader:timeout_ms"

    const-wide/32 v1, 0xea60

    invoke-static {v0, v1, v2}, Lr4/u00;->b(Ljava/lang/String;J)Lr4/u00;

    move-result-object v0

    sput-object v0, Lr4/r10;->a:Lr4/u00;

    const-string v0, "gads:rendering:timeout_ms"

    invoke-static {v0, v1, v2}, Lr4/u00;->b(Ljava/lang/String;J)Lr4/u00;

    move-result-object v0

    sput-object v0, Lr4/r10;->b:Lr4/u00;

    const-string v0, "gads:resolve_future:default_timeout_ms"

    const-wide/16 v1, 0x7530

    invoke-static {v0, v1, v2}, Lr4/u00;->b(Ljava/lang/String;J)Lr4/u00;

    move-result-object v0

    sput-object v0, Lr4/r10;->c:Lr4/u00;

    return-void
.end method
