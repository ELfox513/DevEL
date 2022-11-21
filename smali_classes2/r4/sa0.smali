.class public final Lr4/sa0;
.super Lr4/hm0;
.source "SourceFile"


# instance fields
.field public final b:Lr4/ra0;


# direct methods
.method public constructor <init>(Lr4/ra0;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2}, Lr4/hm0;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lr4/sa0;->b:Lr4/ra0;

    return-void
.end method


# virtual methods
.method public final q(Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "LeibnizHttpUrlPinger pinging URL: "

    if-eqz v1, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {v0}, Lr4/cm0;->a(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "oda"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const-string v0, "URL does not match oda:// scheme, falling back on HttpUrlPinger"

    invoke-static {v0}, Lr4/cm0;->a(Ljava/lang/String;)V

    invoke-super {p0, p1}, Lr4/hm0;->q(Ljava/lang/String;)V

    return-void
.end method
