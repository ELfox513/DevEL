.class public final Lr4/y00;
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
            "Ljava/lang/String;",
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

.field public static final e:Lr4/u00;
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
    .locals 5

    const-string v0, "gads:consent:gmscore:dsid:enabled"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lr4/v00;->f(Ljava/lang/String;Z)Lr4/u00;

    move-result-object v0

    sput-object v0, Lr4/y00;->a:Lr4/u00;

    const-string v0, "gads:consent:gmscore:lat:enabled"

    invoke-static {v0, v1}, Lr4/v00;->f(Ljava/lang/String;Z)Lr4/u00;

    move-result-object v0

    sput-object v0, Lr4/y00;->b:Lr4/u00;

    new-instance v0, Lr4/v00;

    const-string v2, "gads:consent:gmscore:backend_url"

    const-string v3, "https://adservice.google.com/getconfig/pubvendors"

    const/4 v4, 0x4

    invoke-direct {v0, v2, v3, v4}, Lr4/v00;-><init>(Ljava/lang/String;Ljava/lang/Object;I)V

    sput-object v0, Lr4/y00;->c:Lr4/u00;

    new-instance v0, Lr4/v00;

    const-wide/16 v2, 0x2710

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "gads:consent:gmscore:time_out"

    const/4 v4, 0x2

    invoke-direct {v0, v3, v2, v4}, Lr4/v00;-><init>(Ljava/lang/String;Ljava/lang/Object;I)V

    sput-object v0, Lr4/y00;->d:Lr4/u00;

    const-string v0, "gads:consent:gmscore:enabled"

    invoke-static {v0, v1}, Lr4/v00;->f(Ljava/lang/String;Z)Lr4/u00;

    move-result-object v0

    sput-object v0, Lr4/y00;->e:Lr4/u00;

    return-void
.end method
