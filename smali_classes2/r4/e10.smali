.class public final Lr4/e10;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lr4/u00;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/u00<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Lr4/u00;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/u00<",
            "Ljava/lang/String;",
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
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final e:Lr4/u00;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/u00<",
            "Ljava/lang/Long;",
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
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final h:Lr4/u00;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/u00<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final i:Lr4/u00;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/u00<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final j:Lr4/u00;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/u00<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final k:Lr4/u00;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/u00<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const-string v0, "gads:gma_attestation:click:macro_string"

    const-string v1, "@click_attok@"

    invoke-static {v0, v1}, Lr4/u00;->d(Ljava/lang/String;Ljava/lang/String;)Lr4/u00;

    move-result-object v0

    sput-object v0, Lr4/e10;->a:Lr4/u00;

    const-string v0, "gads:gma_attestation:click:query_param"

    const-string v1, "attok"

    invoke-static {v0, v1}, Lr4/u00;->d(Ljava/lang/String;Ljava/lang/String;)Lr4/u00;

    move-result-object v0

    sput-object v0, Lr4/e10;->b:Lr4/u00;

    const-string v0, "gads:gma_attestation:click:timeout"

    const-wide/16 v1, 0x7d0

    invoke-static {v0, v1, v2}, Lr4/u00;->b(Ljava/lang/String;J)Lr4/u00;

    move-result-object v0

    sput-object v0, Lr4/e10;->c:Lr4/u00;

    const-string v0, "gads:gma_attestation:click:enable"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lr4/u00;->a(Ljava/lang/String;Z)Lr4/u00;

    move-result-object v0

    sput-object v0, Lr4/e10;->d:Lr4/u00;

    const-string v0, "gads:gma_attestation:click:enable_dynamite_version"

    const-wide/16 v2, -0x1

    invoke-static {v0, v2, v3}, Lr4/u00;->b(Ljava/lang/String;J)Lr4/u00;

    move-result-object v0

    sput-object v0, Lr4/e10;->e:Lr4/u00;

    const-string v0, "gads:gma_attestation:click:qualification:enable"

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lr4/u00;->a(Ljava/lang/String;Z)Lr4/u00;

    move-result-object v0

    sput-object v0, Lr4/e10;->f:Lr4/u00;

    const-string v0, "gads:gma_attestation:click_v2:enable"

    invoke-static {v0, v1}, Lr4/u00;->a(Ljava/lang/String;Z)Lr4/u00;

    move-result-object v0

    sput-object v0, Lr4/e10;->g:Lr4/u00;

    const-string v0, "gads:gma_attestation:impression:enable"

    invoke-static {v0, v1}, Lr4/u00;->a(Ljava/lang/String;Z)Lr4/u00;

    move-result-object v0

    sput-object v0, Lr4/e10;->h:Lr4/u00;

    const-string v0, "gads:gma_attestation:request:enable_javascript"

    invoke-static {v0, v1}, Lr4/u00;->a(Ljava/lang/String;Z)Lr4/u00;

    move-result-object v0

    sput-object v0, Lr4/e10;->i:Lr4/u00;

    const-string v0, "gads:gma_attestation:request:enable"

    invoke-static {v0, v1}, Lr4/u00;->a(Ljava/lang/String;Z)Lr4/u00;

    move-result-object v0

    sput-object v0, Lr4/e10;->j:Lr4/u00;

    const-string v0, "gads:gma_attestation:click:report_error"

    invoke-static {v0, v2}, Lr4/u00;->a(Ljava/lang/String;Z)Lr4/u00;

    move-result-object v0

    sput-object v0, Lr4/e10;->k:Lr4/u00;

    return-void
.end method
