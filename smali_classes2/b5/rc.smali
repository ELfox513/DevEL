.class public final Lb5/rc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb5/qc;


# static fields
.field public static final a:Lb5/r6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb5/r6<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Lb5/r6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb5/r6<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Lb5/r6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb5/r6<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Lb5/r6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb5/r6<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lb5/o6;

    const-string v1, "com.google.android.gms.measurement"

    invoke-static {v1}, Lb5/h6;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v1}, Lb5/o6;-><init>(Landroid/net/Uri;)V

    const-string v1, "measurement.client.consent_state_v1"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lb5/o6;->e(Ljava/lang/String;Z)Lb5/r6;

    move-result-object v1

    sput-object v1, Lb5/rc;->a:Lb5/r6;

    const-string v1, "measurement.client.3p_consent_state_v1"

    invoke-virtual {v0, v1, v2}, Lb5/o6;->e(Ljava/lang/String;Z)Lb5/r6;

    move-result-object v1

    sput-object v1, Lb5/rc;->b:Lb5/r6;

    const-string v1, "measurement.service.consent_state_v1_W36"

    invoke-virtual {v0, v1, v2}, Lb5/o6;->e(Ljava/lang/String;Z)Lb5/r6;

    move-result-object v1

    sput-object v1, Lb5/rc;->c:Lb5/r6;

    const-string v1, "measurement.service.storage_consent_support_version"

    const-wide/32 v2, 0x31b50

    invoke-virtual {v0, v1, v2, v3}, Lb5/o6;->c(Ljava/lang/String;J)Lb5/r6;

    move-result-object v0

    sput-object v0, Lb5/rc;->d:Lb5/r6;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()J
    .locals 2

    sget-object v0, Lb5/rc;->d:Lb5/r6;

    invoke-virtual {v0}, Lb5/r6;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method
