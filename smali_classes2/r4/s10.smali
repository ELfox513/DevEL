.class public final Lr4/s10;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lr4/u00;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/u00<",
            "Ljava/lang/Boolean;",
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
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Lr4/u00;
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

    const-string v0, "gads:always_collect_trustless_token_at_native_side"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lr4/u00;->a(Ljava/lang/String;Z)Lr4/u00;

    move-result-object v0

    sput-object v0, Lr4/s10;->a:Lr4/u00;

    const-string v0, "gms:expose_token_for_gma:enabled"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lr4/u00;->a(Ljava/lang/String;Z)Lr4/u00;

    move-result-object v0

    sput-object v0, Lr4/s10;->b:Lr4/u00;

    const-string v0, "gads:timeout_for_trustless_token:millis"

    const-wide/16 v1, 0x7d0

    invoke-static {v0, v1, v2}, Lr4/u00;->b(Ljava/lang/String;J)Lr4/u00;

    move-result-object v0

    sput-object v0, Lr4/s10;->c:Lr4/u00;

    const-string v0, "gads:cached_token:ttl_millis"

    const-wide/32 v1, 0xa4cb80

    invoke-static {v0, v1, v2}, Lr4/u00;->b(Ljava/lang/String;J)Lr4/u00;

    move-result-object v0

    sput-object v0, Lr4/s10;->d:Lr4/u00;

    return-void
.end method
