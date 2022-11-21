.class public abstract Li2/m;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li2/m$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Li2/m$a;
    .locals 2

    new-instance v0, Li2/c$b;

    invoke-direct {v0}, Li2/c$b;-><init>()V

    sget-object v1, Lf2/d;->a:Lf2/d;

    invoke-virtual {v0, v1}, Li2/c$b;->d(Lf2/d;)Li2/m$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract b()Ljava/lang/String;
.end method

.method public abstract c()[B
.end method

.method public abstract d()Lf2/d;
.end method

.method public e(Lf2/d;)Li2/m;
    .locals 2

    invoke-static {}, Li2/m;->a()Li2/m$a;

    move-result-object v0

    invoke-virtual {p0}, Li2/m;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Li2/m$a;->b(Ljava/lang/String;)Li2/m$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Li2/m$a;->d(Lf2/d;)Li2/m$a;

    move-result-object p1

    invoke-virtual {p0}, Li2/m;->c()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Li2/m$a;->c([B)Li2/m$a;

    move-result-object p1

    invoke-virtual {p1}, Li2/m$a;->a()Li2/m;

    move-result-object p1

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Li2/m;->b()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Li2/m;->d()Lf2/d;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-virtual {p0}, Li2/m;->c()[B

    move-result-object v1

    const/4 v2, 0x2

    if-nez v1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Li2/m;->c()[B

    move-result-object v1

    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    :goto_0
    aput-object v1, v0, v2

    const-string v1, "TransportContext(%s, %s, %s)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
