.class public final Lr4/w00;
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
            "Ljava/lang/String;",
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


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "gads:afs:csa_send_tcf_data"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lr4/u00;->a(Ljava/lang/String;Z)Lr4/u00;

    move-result-object v0

    sput-object v0, Lr4/w00;->a:Lr4/u00;

    const-string v0, "gads:afs:csa_tcf_data_to_collect"

    const-string v1, "[{\"bk\":\"tcString\",\"sk\":\"IABTCF_TCString\",\"type\":0},{\"bk\":\"gdprApplies\",\"sk\":\"IABTCF_gdprApplies\",\"type\":1},{\"bk\":\"usPrivacy\",\"sk\":\"IABUSPrivacy_String\",\"type\":0}]"

    invoke-static {v0, v1}, Lr4/u00;->d(Ljava/lang/String;Ljava/lang/String;)Lr4/u00;

    move-result-object v0

    sput-object v0, Lr4/w00;->b:Lr4/u00;

    const-string v0, "gads:afs:csa_webview_custom_domain_param_key"

    const-string v1, "csa_customDomain"

    invoke-static {v0, v1}, Lr4/u00;->d(Ljava/lang/String;Ljava/lang/String;)Lr4/u00;

    move-result-object v0

    sput-object v0, Lr4/w00;->c:Lr4/u00;

    const-string v0, "gads:afs:csa_webview_static_file_path"

    const-string v1, "/afs/ads/i/webview.html"

    invoke-static {v0, v1}, Lr4/u00;->d(Ljava/lang/String;Ljava/lang/String;)Lr4/u00;

    move-result-object v0

    sput-object v0, Lr4/w00;->d:Lr4/u00;

    return-void
.end method
